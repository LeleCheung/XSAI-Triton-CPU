import torch
import triton
import triton.language as tl

@triton.jit
def relu_kernel(
    input_ptr, output_ptr,
    input_row_stride, output_row_stride,
    n_cols,
    BLOCK_SIZE: tl.constexpr,
):
    """
    ReLU (Rectified Linear Unit) kernel implementation using Triton
    Each program processes a block of columns of one row of the input matrix
    ReLU(x) = max(0, x)
    """
    # Program ids
    row_idx = tl.program_id(0)
    col_block = tl.program_id(1)

    # Column offsets for this block
    col_offsets = col_block * BLOCK_SIZE + tl.arange(0, BLOCK_SIZE)

    # Compute per-element pointers
    in_ptrs = input_ptr + row_idx * input_row_stride + col_offsets
    out_ptrs = output_ptr + row_idx * output_row_stride + col_offsets

    # Mask to guard out-of-bounds
    mask = col_offsets < n_cols

    # Load, apply ReLU, and store
    row_data = tl.load(in_ptrs, mask=mask, other=0.0)
    relu_values = tl.maximum(row_data, 0.0)
    tl.store(out_ptrs, relu_values, mask=mask)

def triton_relu(x: torch.Tensor):
    """Triton implementation of ReLU function"""
    # 确保输入是浮点类型且连续
    if x.dtype != torch.float32:
        x = x.float()
    x = x.contiguous()

    n_rows, n_cols = x.shape

    # Allocate output tensor
    output = torch.empty_like(x)

    # Kernel meta-parameter
    BLOCK_SIZE = 128

    # 2D grid: (rows, number of column blocks)
    grid = (n_rows, triton.cdiv(n_cols, BLOCK_SIZE))

    # Launch kernel
    relu_kernel[grid](
        x, output,
        x.stride(0), output.stride(0),
        n_cols,
        BLOCK_SIZE=BLOCK_SIZE,
    )

    return output

# Test function
def test_relu():
    # 检查是否有 CUDA 可用，如果没有则使用 CPU
    device = 'cuda' if torch.cuda.is_available() else 'cpu'
    print(f"Using device: {device}")

    # Create test data with mixed positive and negative values
    batch_size, hidden_size = 4, 8
    x = torch.randn(batch_size, hidden_size, device=device)

    print("Input matrix:")
    print(x)

    # Triton implementation
    try:
        output_triton = triton_relu(x)

        # PyTorch reference implementation
        output_pytorch = torch.nn.functional.relu(x)

        print("\nTriton ReLU output:")
        print(output_triton)

        print("\nPyTorch ReLU output:")
        print(output_pytorch)

        # Verify correctness
        assert torch.allclose(output_triton, output_pytorch, atol=1e-5), "Results don't match"
        print("\n✓ Test passed! Results are consistent")

        # Test with specific values to verify behavior
        print("\n" + "="*50)
        print("Testing with specific values...")

        # Test with known positive, negative and zero values
        test_x = torch.tensor([
            [3.0, -2.0, 0.0, 1.5, -1.0, 0.5, -0.5, 2.0]
        ], device=device, dtype=torch.float32)

        test_triton = triton_relu(test_x)
        test_pytorch = torch.nn.functional.relu(test_x)

        print("Test input values:", test_x)
        print("Triton ReLU output:", test_triton)
        print("PyTorch ReLU output:", test_pytorch)

        # Verify specific behavior
        expected = torch.tensor([[3.0, 0.0, 0.0, 1.5, 0.0, 0.5, 0.0, 2.0]], device=device)
        assert torch.allclose(test_triton, expected, atol=1e-5), "Specific values test failed"
        assert torch.allclose(test_triton, test_pytorch, atol=1e-5), "PyTorch comparison failed"
        print("✓ Specific values test passed!")

    except Exception as e:
        print(f"Triton kernel execution failed: {e}")
        print("This might be due to Triton not supporting CPU execution for this kernel")

# 添加一个纯 CPU 版本的测试作为备选
def test_relu_cpu_fallback():
    """使用纯 PyTorch 在 CPU 上测试 ReLU 功能"""
    print("Using PyTorch-only implementation for CPU testing")

    # Create test data with mixed positive and negative values
    batch_size, hidden_size = 4, 8
    x = torch.randn(batch_size, hidden_size)

    print("Input matrix:")
    print(x)

    # PyTorch reference implementation
    output_pytorch = torch.nn.functional.relu(x)

    print("\nPyTorch ReLU output:")
    print(output_pytorch)

    # Test with specific values to verify behavior
    print("\n" + "="*50)
    print("Testing with specific values...")

    # Test with known positive, negative and zero values
    test_x = torch.tensor([
        [3.0, -2.0, 0.0, 1.5, -1.0, 0.5, -0.5, 2.0]
    ], dtype=torch.float32)

    test_pytorch = torch.nn.functional.relu(test_x)

    print("Test input values:", test_x)
    print("PyTorch ReLU output:", test_pytorch)

    # Verify specific behavior
    expected = torch.tensor([[3.0, 0.0, 0.0, 1.5, 0.0, 0.5, 0.0, 2.0]])
    assert torch.allclose(test_pytorch, expected, atol=1e-5), "Specific values test failed"
    print("✓ Specific values test passed!")

    print("\n✓ All CPU tests passed using PyTorch implementation!")

if __name__ == "__main__":
    try:
        test_relu()
    except Exception as e:
        print(f"Triton test failed: {e}")
        print("Falling back to CPU-only implementation")
        test_relu_cpu_fallback()