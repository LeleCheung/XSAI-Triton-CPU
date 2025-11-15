import torch
import triton
import triton.language as tl
import numpy
import argparse
import yaml
import sys

# ------------------------------------------------------------------
# 1. Triton GEMM Kernel
# ------------------------------------------------------------------

@triton.jit
def gemm_kernel(
    A_ptr, B_ptr, C_ptr,
    M, N, K, BATCH,
    BLOCK_SIZE_M: tl.constexpr, BLOCK_SIZE_N: tl.constexpr, BLOCK_SIZE_K: tl.constexpr
):
    # Program IDs for M, N, and Batch dimensions
    pid_m = tl.program_id(0)
    pid_n = tl.program_id(1)
    pid_b = tl.program_id(2)

    # Offsets within a tile
    offs_m = pid_m * BLOCK_SIZE_M + tl.arange(0, BLOCK_SIZE_M)
    offs_n = pid_n * BLOCK_SIZE_N + tl.arange(0, BLOCK_SIZE_N)
    offs_k = tl.arange(0, BLOCK_SIZE_K)

    # Accumulator
    acc = tl.zeros((BLOCK_SIZE_M, BLOCK_SIZE_N), dtype=tl.int32)

    # Convert pointers to correct types
    A_ptr = A_ptr.to(tl.pointer_type(tl.int8))
    B_ptr = B_ptr.to(tl.pointer_type(tl.int8))
    C_ptr = C_ptr.to(tl.pointer_type(tl.int32))

    # Batch base offsets assuming contiguous layouts:
    # A: [BATCH, M, K], B: [BATCH, K, N], C: [BATCH, M, N]
    A_batch_base = pid_b * (M * K)
    B_batch_base = pid_b * (K * N)
    C_batch_base = pid_b * (M * N)

    for k in range(0, K, BLOCK_SIZE_K):
        # Load block of A: (BLOCK_SIZE_M x BLOCK_SIZE_K)
        A = tl.load(
            A_ptr + A_batch_base + (offs_m[:, None] * K + (offs_k[None, :] + k))
        )

        # Load block of B: (BLOCK_SIZE_K x BLOCK_SIZE_N)
        B = tl.load(
            B_ptr + B_batch_base + ((offs_k[:, None] + k) * N + offs_n[None, :])
        )

        # Accumulate
        acc += tl.dot(A, B)

    # Store the result
    tl.store(
        C_ptr + C_batch_base + (offs_m[:, None] * N + offs_n[None, :]),
        acc
    )


# ------------------------------------------------------------------
# 2. Configuration loader function
# ------------------------------------------------------------------

def load_config():
    """Load configuration from the hard-coded 'config.yaml' file."""
    config_path = 'config.yaml'
    try:
        with open(config_path, 'r', encoding='utf-8') as file:
            configs = yaml.safe_load(file)
        return configs
    except FileNotFoundError:
        print(f"Error: Configuration file '{config_path}' not found. Please ensure the file exists.")
        sys.exit(1)
    except yaml.YAMLError as e:
        print(f"Error: Failed to parse YAML file: {e}")
        sys.exit(1)
    except Exception as e:
        print(f"An unknown error occurred while loading configuration: {e}")
        sys.exit(1)

# ------------------------------------------------------------------
# 3. Main function (integrates argparse and Triton launch logic)
# ------------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(description="Load MNK configuration from config.yaml and run Triton GEMM kernel")
    parser.add_argument('--model', required=True, help='LLM model name (e.g.: Qwen3_30B_A3B)')
    parser.add_argument('--stage', required=True, help='Inference stage (e.g.: Prefill, Decode)')
    parser.add_argument('--op', required=True, help='Operation type (e.g.: gemm_ops, bmm_ops)')
    parser.add_argument('--name', required=True, help='Specific operator name (e.g.: up_proj, qk)')
    
    args = parser.parse_args()
    
    # 1. Load and parse configuration
    all_configs = load_config()
    
    M, N, K, BATCH = None, None, None, None
    
    try:
        # navigate to the requested configuration
        op_config = all_configs['models'][args.model][args.stage][args.op][args.name]
        
        # extract M, N, K
        M = op_config['m']
        N = op_config['n']
        K = op_config['k']
        
        if args.op == 'bmm_ops':
            BATCH = op_config.get('batch_size', 1) # default to 1 if not specified
        else:
            BATCH = 1

        print(f"\n--- Configuration loaded successfully ---")
        print(f"  Model: {args.model}")
        print(f"  Stage: {args.stage}")
        print(f"  Operator: {args.name}")
        print(f"  M = {M}, N = {N}, K = {K}, Batch = {BATCH}")
        print("------------------------\n")

    except KeyError as e:
        print(f"Error: Key not found in configuration: {e}.")
        print(f"Please check that your command-line arguments match the structure in config.yaml.")
        print(f"  Expected path: models -> {args.model} -> {args.stage} -> {args.op} -> {args.name}")
        sys.exit(1)
    except TypeError:
        print(f"Error: Failed to parse configuration structure; an intermediate key is not a dictionary.")
        sys.exit(1)

    # 2. Prepare Triton run
    device = 'cpu'
    print(f"Initializing tensors on {device}...")

    # Initialize input matrices with batch dimension [BATCH, M, K] and [BATCH, K, N]
    # !! device='cpu' !!
    A = torch.randint(-128, 127, (BATCH, M, K), device=device, dtype=torch.int8)
    B = torch.randint(-128, 127, (BATCH, K, N), device=device, dtype=torch.int8)

    # Initialize output tensor [BATCH, M, N] (int32 for accumulation)
    C = torch.zeros((BATCH, M, N), device=device, dtype=torch.int32)

    # Block sizes for tiling
    BLOCK_SIZE_M = 32
    BLOCK_SIZE_N = 32
    BLOCK_SIZE_K = 32

    # Compute 3D grid: (M tiles, N tiles, BATCH)
    grid = (
        triton.cdiv(M, BLOCK_SIZE_M),
        triton.cdiv(N, BLOCK_SIZE_N),
        BATCH
    )

    print(f"Launching Triton kernel with Grid={grid}...")

    # Launch kernel
    gemm_kernel[grid](
        A, B, C, M, N, K, BATCH,
        BLOCK_SIZE_M, BLOCK_SIZE_N, BLOCK_SIZE_K
    )

    # Keep a synchronous call; may have no effect on CPU
    try:
        torch.cuda.synchronize()
    except Exception:
        pass

    print("Triton kernel execution completed.")

    # Verification (batched)
    print("Verifying result with torch.matmul (batched)...")
    C_ref = torch.matmul(A.to(torch.int32), B.to(torch.int32))
    if torch.equal(C, C_ref):
        print("Verification succeeded! Triton result matches torch.matmul.")
    else:
        max_diff = (C - C_ref).abs().max().item()
        print(f"!!! Verification failed !!! Max abs diff: {max_diff}")


if __name__ == "__main__":
    main()