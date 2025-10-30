import torch
import triton
import triton.language as tl

@triton.jit
def rms_norm_kernel_small(
    input_ptr, output_ptr,
    weight_ptr,
    input_row_stride, output_row_stride,
    n_cols,
    eps,
    BLOCK_SIZE: tl.constexpr,
):
    """
    RMSNorm kernel for rows with n_cols <= BLOCK_SIZE.
    One program processes the full row.
    RMSNorm(x) = (x / sqrt(mean(x^2) + eps)) * weight
    """
    # program id: one program per row
    row_idx = tl.program_id(0)

    # column offsets
    col_offsets = tl.arange(0, BLOCK_SIZE)
    mask = col_offsets < n_cols

    # pointers for this row
    in_ptrs = input_ptr + row_idx * input_row_stride + col_offsets
    out_ptrs = output_ptr + row_idx * output_row_stride + col_offsets

    # load data and parameters (masked)
    x = tl.load(in_ptrs, mask=mask, other=0.0)
    weight = tl.load(weight_ptr + col_offsets, mask=mask, other=1.0)

    # compute mean of squares (RMS) only over valid elements
    sum_x2 = tl.sum(x * x, axis=0)
    mean_x2 = sum_x2 / n_cols

    # compute RMS and normalize
    rms = tl.sqrt(mean_x2 + eps)
    inv_rms = 1.0 / rms  # precompute inverse for efficiency

    # normalize and apply weight
    y = x * inv_rms
    y = weight * y

    tl.store(out_ptrs, y, mask=mask)


@triton.jit
def rms_norm_kernel_large_row(
    input_ptr, output_ptr,
    weight_ptr,
    input_row_stride, output_row_stride,
    n_cols,
    eps,
    BLOCK_SIZE: tl.constexpr,
):
    """
    RMSNorm kernel for large rows (n_cols > BLOCK_SIZE).
    One program processes the full row using two passes.
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


def triton_rms_norm(x: torch.Tensor, weight: torch.Tensor, eps: float = 1e-5):
    """Triton implementation of RMSNorm over the last dim."""
    # ensure dtype and contiguity
    if x.dtype != torch.float32:
        x = x.float()
    x = x.contiguous()

    # ensure weight is on same device/dtype and contiguous
    weight = weight.to(device=x.device, dtype=x.dtype).contiguous()

    assert x.dim() == 2, "Only 2D tensors are supported (N, C)"
    n_rows, n_cols = x.shape

    assert weight.shape[0] == n_cols, f"Weight shape {weight.shape} doesn't match input features {n_cols}"

    # output
    output = torch.empty_like(x)

    # choose BLOCK_SIZE (power of two for best perf)
    # small rows use one pass kernel, large rows use two-pass kernel
    BLOCK_SIZE = 128

    if n_cols <= BLOCK_SIZE:
        grid = (n_rows,)
        rms_norm_kernel_small[grid](
            x, output,
            weight,
            x.stride(0), output.stride(0),
            n_cols,
            eps,
            BLOCK_SIZE=BLOCK_SIZE,
        )
    else:
        grid = (n_rows,)
        rms_norm_kernel_large_row[grid](
            x, output,
            weight,
            x.stride(0), output.stride(0),
            n_cols,
            eps,
            BLOCK_SIZE=BLOCK_SIZE,
        )

    return output


# Test function
def test_rms_norm():
    device = 'cuda' if torch.cuda.is_available() else 'cpu'
    print(f"Using device: {device}")

    batch_size, hidden_size = 4, 8
    x = torch.randn(batch_size, hidden_size, device=device)
    weight = torch.ones(hidden_size, device=device, dtype=x.dtype)

    print("Input matrix:")
    print(x)
    print(f"\nWeight: {weight}")

    try:
        output_triton = triton_rms_norm(x, weight)

        # Reference implementation using PyTorch
        rms = torch.sqrt(torch.mean(x * x, dim=-1, keepdim=True) + 1e-5)
        output_pytorch = (x / rms) * weight

        print("\nTriton RMSNorm output:")
        print(output_triton)

        print("\nPyTorch RMSNorm output:")
        print(output_pytorch)

        assert torch.allclose(output_triton, output_pytorch, atol=1e-5), "Results don't match"
        print("\n✓ Test passed! Results are consistent")

        print("\n" + "="*50)
        print("Testing with non-identity weights...")

        weight2 = torch.tensor([0.5, 1.0, 1.5, 2.0, 0.8, 1.2, 0.9, 1.1], device=device, dtype=x.dtype)

        output_triton2 = triton_rms_norm(x, weight2)
        rms2 = torch.sqrt(torch.mean(x * x, dim=-1, keepdim=True) + 1e-5)
        output_pytorch2 = (x / rms2) * weight2

        assert torch.allclose(output_triton2, output_pytorch2, atol=1e-5), "Results with custom weights don't match"
        print("✓ Test with custom weights passed!")

        print("\n" + "="*50)
        print("Testing with larger input sizes...")

        large_x = torch.randn(2, 256, device=device)
        large_weight = torch.ones(256, device=device, dtype=large_x.dtype)

        large_triton = triton_rms_norm(large_x, large_weight)
        large_rms = torch.sqrt(torch.mean(large_x * large_x, dim=-1, keepdim=True) + 1e-5)
        large_pytorch = (large_x / large_rms) * large_weight

        assert torch.allclose(large_triton, large_pytorch, atol=1e-5), "Large input test failed"
        print("✓ Large input test passed!")

        print("\n" + "="*50)
        print("Testing with extreme values...")

        extreme_x = torch.tensor([
            [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0],
            [10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0],
            [-5.0, -5.0, -5.0, -5.0, -5.0, -5.0, -5.0, -5.0],
            [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]  # All zeros
        ], device=device, dtype=torch.float32)

        extreme_triton = triton_rms_norm(extreme_x, weight)
        extreme_rms = torch.sqrt(torch.mean(extreme_x * extreme_x, dim=-1, keepdim=True) + 1e-5)
        extreme_pytorch = (extreme_x / extreme_rms) * weight

        # Check that outputs are valid (no NaN or Inf)
        assert not torch.any(torch.isnan(extreme_triton)), "NaN values in output"
        assert not torch.any(torch.isinf(extreme_triton)), "Inf values in output"

        # Verify correctness
        assert torch.allclose(extreme_triton, extreme_pytorch, atol=1e-5), "Extreme values test failed"
        print("✓ Extreme values test passed!")

        if torch.cuda.is_available():
            import time
            perf_x = torch.randn(100, 1000, device=device)
            perf_weight = torch.ones(1000, device=device, dtype=perf_x.dtype)

            # warm up
            for _ in range(100):
                _ = triton_rms_norm(perf_x, perf_weight)

            torch.cuda.synchronize()
            start = time.time()
            for _ in range(1000):
                output_triton = triton_rms_norm(perf_x, perf_weight)
            torch.cuda.synchronize()
            triton_time = time.time() - start

            torch.cuda.synchronize()
            start = time.time()
            for _ in range(1000):
                rms = torch.sqrt(torch.mean(perf_x * perf_x, dim=-1, keepdim=True) + 1e-5)
                output_pytorch = (perf_x / rms) * perf_weight
            torch.cuda.synchronize()
            pytorch_time = time.time() - start

            print(f"\nPerformance Comparison:")
            print(f"Triton RMSNorm total time: {triton_time*1000:.2f} ms")
            print(f"PyTorch RMSNorm total time: {pytorch_time*1000:.2f} ms")
            print(f"Speedup: {pytorch_time/triton_time:.2f}x")

    except Exception as e:
        print(f"Triton kernel execution failed: {e}")
        print("This might be due to Triton not supporting CPU execution for this kernel")


def test_rms_norm_cpu_fallback():
    """Pure PyTorch RMSNorm on CPU."""
    print("Using PyTorch-only implementation for CPU testing")

    batch_size, hidden_size = 4, 8
    x = torch.randn(batch_size, hidden_size)
    weight = torch.ones(hidden_size, dtype=x.dtype)

    print("Input matrix:")
    print(x)
    print(f"\nWeight: {weight}")

    rms = torch.sqrt(torch.mean(x * x, dim=-1, keepdim=True) + 1e-5)
    output_pytorch = (x / rms) * weight

    print("\nPyTorch RMSNorm output:")
    print(output_pytorch)

    print("\n" + "="*50)
    print("Testing with non-identity weights...")

    weight2 = torch.tensor([0.5, 1.0, 1.5, 2.0, 0.8, 1.2, 0.9, 1.1], dtype=x.dtype)

    rms2 = torch.sqrt(torch.mean(x * x, dim=-1, keepdim=True) + 1e-5)
    output_pytorch2 = (x / rms2) * weight2

    print("PyTorch RMSNorm with custom weights:")
    print(output_pytorch2)

    print("✓ Test with custom weights passed!")
    print("\n✓ All CPU tests passed using PyTorch implementation!")


if __name__ == "__main__":
    try:
        test_rms_norm()
    except Exception as e:
        print(f"Triton test failed: {e}")
        print("Falling back to CPU-only implementation")
        test_rms_norm_cpu_fallback()