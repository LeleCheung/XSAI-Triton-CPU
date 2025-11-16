import torch
import triton
import triton.language as tl
import argparse
import yaml
import sys

# ------------------------------------------------------------------
# 1. Triton RMSNorm Kernel
# ------------------------------------------------------------------

@triton.jit
def rms_norm_kernel(
    input_ptr, output_ptr,
    weight_ptr,
    input_row_stride, output_row_stride,
    n_cols,
    eps,
    BLOCK_SIZE: tl.constexpr,
):
    """
    RMSNorm kernel.
    This kernel is 2D-aware. It processes a 2D tensor of (n_rows, n_cols).
    Each program (instance) processes one row.
    """
    # program id: one program per row
    row_idx = tl.program_id(0)

    # base pointers for this row
    row_start_ptr = input_ptr + row_idx * input_row_stride
    output_row_ptr = output_ptr + row_idx * output_row_stride

    # first pass: compute mean of squares
    sum_x2 = 0.0

    for i in range(0, n_cols, BLOCK_SIZE):
        col_offsets = i + tl.arange(0, BLOCK_SIZE)
        mask = col_offsets < n_cols
        chunk = tl.load(row_start_ptr + col_offsets, mask=mask, other=0.0)
        sum_x2 += tl.sum(chunk * chunk, axis=0)

    mean_x2 = sum_x2 / n_cols
    rms = tl.sqrt(mean_x2 + eps)
    inv_rms = 1.0 / rms  # precompute inverse for efficiency

    # second pass: normalize and apply weight
    for i in range(0, n_cols, BLOCK_SIZE):
        col_offsets = i + tl.arange(0, BLOCK_SIZE)
        mask = col_offsets < n_cols

        x = tl.load(row_start_ptr + col_offsets, mask=mask, other=0.0)
        weight = tl.load(weight_ptr + col_offsets, mask=mask, other=1.0)

        # normalize and apply weight
        y = x * inv_rms
        y = weight * y

        tl.store(output_row_ptr + col_offsets, y, mask=mask)

# ------------------------------------------------------------------
# 2. Triton Wrapper
# ------------------------------------------------------------------

def triton_rms_norm(x: torch.Tensor, weight: torch.Tensor, eps: float = 1e-5):
    """
    Triton implementation of RMSNorm.
    
    This function expects a 3D input tensor (B, S, H) and applies
    RMSNorm over the last dimension (H).
    It reshapes the input to 2D (B*S, H) to match the 2D kernel.
    """
    # ensure dtype
    if x.dtype != torch.float32:
        x = x.float()

    assert x.dim() == 3, "Input tensor must be 3D (B, S, H)"
    B, S, H = x.shape
    n_rows = B * S
    n_cols = H

    # Reshape to 2D for the kernel
    x_2d = x.view(n_rows, n_cols).contiguous()

    # ensure weight is on same device/dtype and contiguous
    weight = weight.to(device=x_2d.device, dtype=x_2d.dtype).contiguous()

    assert weight.shape[0] == n_cols, f"Weight shape {weight.shape} doesn't match last dim {n_cols}"

    # output
    output_2d = torch.empty_like(x_2d)

    # choose BLOCK_SIZE (power of two for best perf)
    BLOCK_SIZE = 128 # Kept simple, kernel will loop

    # 1D grid, where each program processes one row
    grid = (n_rows,)
    
    rms_norm_kernel[grid](
        x_2d, output_2d,
        weight,
        x_2d.stride(0), output_2d.stride(0),
        n_cols,
        eps,
        BLOCK_SIZE=BLOCK_SIZE,
    )

    # Reshape output back to 3D
    return output_2d.view(B, S, H)


# ------------------------------------------------------------------
# 3. Config loader
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
# 4. Main function
# ------------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(description="Load config.yaml and run Triton RMSNorm kernel (3D)")
    parser.add_argument('--model', required=True, help='LLM model name (e.g.: Qwen3_30B_A3B)')
    parser.add_argument('--stage', required=True, help='Inference stage (e.g.: Prefill, Decode)')
    parser.add_argument('--op', required=True, help='Operation type (e.g.: elementwise_ops)')
    parser.add_argument('--name', required=True, help='Specific operator name (e.g.: ffn_norm_rms)')
    args = parser.parse_args()

    # 1. Load and parse configuration
    all_configs = load_config()

    HEAD_DIM, SEQ_LEN, BATCH_SIZE = None, None, None
    
    try:
        # Note: RMSNorm is often applied to the full hidden dim, not just head_dim
        # But we follow the 'silu.py' structure, which uses 'head_dim'
        # If your config uses 'hidden_dim', you might need to adjust this key
        op_config = all_configs['models'][args.model][args.stage][args.op][args.name]
        
        # Adjust key based on what's in config.yaml for rmsnorm
        # Using 'head_dim' as per the 'silu.py' template
        if 'head_dim' in op_config:
            HEAD_DIM = int(op_config['head_dim'])
        elif 'hidden_dim' in op_config: # Add fallback for common RMSNorm case
             HEAD_DIM = int(op_config['hidden_dim'])
        else:
            print("Error: Config must contain 'head_dim' or 'hidden_dim' for the operator.")
            sys.exit(1)
            
        SEQ_LEN = int(op_config['seq_len'])

        # This logic is from silu.py, adjust if needed for rmsnorm
        if args.name == 'attention_softmax':
            BATCH_SIZE = int(all_configs['models'][args.model]['num_heads'])
        else:
            BATCH_SIZE = 1 # Default to 1, or parse from config if available

        print("\n--- Configuration loaded successfully ---")
        print(f"  Model: {args.model}")
        print(f"  Stage: {args.stage}")
        print(f"  Operator: {args.name}")
        print(f"  Shape (B, S, H) = ({BATCH_SIZE}, {SEQ_LEN}, {HEAD_DIM})")
        print("------------------------\n")

    except KeyError as e:
        print(f"Error: Key not found in configuration: {e}.")
        print("Please check that your command-line arguments match the structure in config.yaml.")
        print(f"  Expected path: models -> {args.model} -> {args.stage} -> {args.op} -> {args.name}")
        sys.exit(1)
    except (TypeError, ValueError) as e:
        print(f"Error: Failed to parse configuration structure: {e}")
        sys.exit(1)

    # 2. Prepare Triton run
    device = 'cpu'
    print(f"Initializing tensors on {device}...")

    # Input tensor
    x = torch.randn(BATCH_SIZE, SEQ_LEN, HEAD_DIM, device=device, dtype=torch.float32)
    
    # Weight tensor (1D, matching the last dimension)
    weight = torch.randn(HEAD_DIM, device=device, dtype=torch.float32)
    
    eps = 1e-5

    print(f"Launching Triton RMSNorm for shape ({BATCH_SIZE}, {SEQ_LEN}, {HEAD_DIM})...")
    

    output_triton = triton_rms_norm(x, weight, eps)


    # 3. Verification
    print("Verifying result with PyTorch reference...")
    
    # Reference implementation using PyTorch
    rms = torch.sqrt(torch.mean(x * x, dim=-1, keepdim=True) + eps)
    output_pytorch = (x / rms) * weight

    if torch.allclose(output_triton, output_pytorch, atol=1e-5):
        print("✓ Verification succeeded! Triton result matches PyTorch.")
    else:
        print("!!! Verification failed !!!")
        try:
            max_diff = (output_triton - output_pytorch).abs().max().item()
            print(f"Max abs diff: {max_diff}")
        except Exception:
            pass

if __name__ == "__main__":
    main()