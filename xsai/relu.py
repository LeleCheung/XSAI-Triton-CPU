import torch
import triton
import triton.language as tl
import argparse
import yaml
import sys

# ------------------------------------------------------------------
# 1. Triton ReLU Kernel (3D: BATCH_SIZE, SEQ_LEN, HEAD_DIM)
# ------------------------------------------------------------------
@triton.jit
def relu_kernel(
    input_ptr, output_ptr,
    in_stride_b, in_stride_s, in_stride_h,
    out_stride_b, out_stride_s, out_stride_h,
    HEAD_DIM,
    BLOCK_SIZE: tl.constexpr,
):
    """
    ReLU (Rectified Linear Unit) kernel for 3D tensors [B, S, H].
    Each program processes a block of columns within one (batch, seq) row.
    ReLU(x) = max(0, x)
    """
    # Program ids
    pid_b = tl.program_id(0)   # batch index
    pid_s = tl.program_id(1)   # sequence index
    pid_c = tl.program_id(2)   # block of columns

    # Column offsets for this block
    col_offsets = pid_c * BLOCK_SIZE + tl.arange(0, BLOCK_SIZE)

    # Compute per-element pointers
    in_ptrs = input_ptr + pid_b * in_stride_b + pid_s * in_stride_s + col_offsets * in_stride_h
    out_ptrs = output_ptr + pid_b * out_stride_b + pid_s * out_stride_s + col_offsets * out_stride_h

    # Mask to guard out-of-bounds on the HEAD_DIM
    mask = col_offsets < HEAD_DIM

    # Load, apply ReLU, and store
    row_data = tl.load(in_ptrs, mask=mask, other=0.0)
    relu_values = tl.maximum(row_data, 0.0)
    tl.store(out_ptrs, relu_values, mask=mask)

# ------------------------------------------------------------------
# 2. Config loader (same style as gemm.py)
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
    parser = argparse.ArgumentParser(description="Load head_dim from config.yaml and run Triton ReLU kernel (3D)")
    parser.add_argument('--model', required=True, help='LLM model name (e.g.: Qwen3_30B_A3B)')
    parser.add_argument('--stage', required=True, help='Inference stage (e.g.: Prefill, Decode)')
    parser.add_argument('--op', required=True, help='Operation type (e.g.: elementwise_ops)')
    parser.add_argument('--name', required=True, help='Specific operator name (e.g.: ffn_activation_relu)')
    args = parser.parse_args()

    # 1. Load and parse configuration
    all_configs = load_config()

    HEAD_DIM, SEQ_LEN, BATCH_SIZE = None, None, None
    
    try:
        op_config = all_configs['models'][args.model][args.stage][args.op][args.name]
        
        HEAD_DIM = int(op_config['head_dim'])
        SEQ_LEN = int(op_config['seq_len'])

        if args.name == 'attention_softmax':
            BATCH_SIZE = int(all_configs['models'][args.model]['num_heads'])
        else:
            BATCH_SIZE = 1

        print("\n--- Configuration loaded successfully ---")
        print(f"  Model: {args.model}")
        print(f"  Stage: {args.stage}")
        print(f"  Operator: {args.name}")
        print(f"  Shape (B, S, H) = ({BATCH_SIZE}, {SEQ_LEN}, {HEAD_DIM})")
        print("------------------------\n")

    except KeyError as e:
        print(f"Error: Key not found in configuration: {e}.")
        print("Please check that your command-line arguments match the structure in config.yaml.")
        print(f"  Expected path: models -> {args.model} -> {args.stage} -> {args.op} -> {args.name} -> head_dim")
        sys.exit(1)
    except (TypeError, ValueError):
        print("Error: Failed to parse configuration structure or 'head_dim' value.")
        sys.exit(1)

    # 2. Prepare Triton run
    device = 'cpu'
    print(f"Initializing tensors on {device}...")

    if HEAD_DIM >= 256:
        BLOCK_SIZE = 256
    elif HEAD_DIM >= 128:
        BLOCK_SIZE = 128
    elif HEAD_DIM >= 64:
        BLOCK_SIZE = 64
    elif HEAD_DIM >= 32:
        BLOCK_SIZE = 32
    else:
        BLOCK_SIZE = HEAD_DIM

    col_blocks = triton.cdiv(HEAD_DIM, BLOCK_SIZE)

    # Grid Design:
    # grid = (BATCH_SIZE, SEQ_LEN, col_blocks)
    # 1. The first two dimensions correspond one-to-one with batch and sequence for clarity
    # 2. The third dimension parallelizes over column blocks to maximize parallelism
    grid = (BATCH_SIZE, SEQ_LEN, col_blocks)

    x = torch.randn(BATCH_SIZE, SEQ_LEN, HEAD_DIM, device=device, dtype=torch.float32)
    y = torch.empty_like(x)

    print(f"Launching Triton ReLU with Grid={grid}, BLOCK_SIZE={BLOCK_SIZE}...")
    relu_kernel[grid](
        x, y,
        x.stride(0), x.stride(1), x.stride(2),
        y.stride(0), y.stride(1), y.stride(2),
        HEAD_DIM,
        BLOCK_SIZE=BLOCK_SIZE,
    )

    try:
        torch.cuda.synchronize()
    except Exception:
        pass
    print("Triton kernel execution completed.")

    # 3. Verification
    print("Verifying result with torch.nn.functional.relu...")
    y_ref = torch.nn.functional.relu(x)
    if torch.allclose(y, y_ref, atol=1e-5):
        print("Verification succeeded! Triton result matches torch.nn.functional.relu.")
    else:
        print("!!! Verification failed !!!")
        try:
            max_diff = (y - y_ref).abs().max().item()
            print(f"Max abs diff: {max_diff}")
        except Exception:
            pass

if __name__ == "__main__":
    main()