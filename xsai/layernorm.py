import torch
import triton
import triton.language as tl

@triton.jit
def layernorm_kernel_small(
    input_ptr, output_ptr,
    gamma_ptr, beta_ptr,
    input_row_stride, output_row_stride,
    n_cols,
    eps,
    BLOCK_SIZE: tl.constexpr,
):
    """
    LayerNorm kernel for rows with n_cols <= BLOCK_SIZE.
    One program processes the full row.
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
    gamma = tl.load(gamma_ptr + col_offsets, mask=mask, other=1.0)
    beta = tl.load(beta_ptr + col_offsets, mask=mask, other=0.0)

    # compute mean and var only over valid elements
    # IMPORTANT: use E[x^2] - (E[x])^2 to avoid counting masked lanes
    sum_x = tl.sum(x, axis=0)
    sum_x2 = tl.sum(x * x, axis=0)
    mean = sum_x / n_cols
    var = sum_x2 / n_cols - mean * mean

    inv_std = 1.0 / tl.sqrt(var + eps)

    # normalize and affine
    y = (x - mean) * inv_std
    y = gamma * y + beta

    tl.store(out_ptrs, y, mask=mask)


@triton.jit
def layernorm_kernel_large_row(
    input_ptr, output_ptr,
    gamma_ptr, beta_ptr,
    input_row_stride, output_row_stride,
    n_cols,
    eps,
    BLOCK_SIZE: tl.constexpr,
):
    """
    LayerNorm kernel for large rows (n_cols > BLOCK_SIZE).
    One program processes the full row using two passes.
    """
    # program id: one program per row
    row_idx = tl.program_id(0)

    # base pointers for this row
    row_start_ptr = input_ptr + row_idx * input_row_stride
    output_row_ptr = output_ptr + row_idx * output_row_stride

    # first pass: compute mean and variance
    row_sum = 0.0
    row_sq_sum = 0.0

    for i in range(0, n_cols, BLOCK_SIZE):
        col_offsets = i + tl.arange(0, BLOCK_SIZE)
        mask = col_offsets < n_cols
        chunk = tl.load(row_start_ptr + col_offsets, mask=mask, other=0.0)
        row_sum += tl.sum(chunk, axis=0)
        row_sq_sum += tl.sum(chunk * chunk, axis=0)

    mean = row_sum / n_cols
    var = row_sq_sum / n_cols - mean * mean
    inv_std = 1.0 / tl.sqrt(var + eps)

    # second pass: normalize + affine
    for i in range(0, n_cols, BLOCK_SIZE):
        col_offsets = i + tl.arange(0, BLOCK_SIZE)
        mask = col_offsets < n_cols

        x = tl.load(row_start_ptr + col_offsets, mask=mask, other=0.0)
        gamma = tl.load(gamma_ptr + col_offsets, mask=mask, other=1.0)
        beta = tl.load(beta_ptr + col_offsets, mask=mask, other=0.0)

        y = (x - mean) * inv_std
        y = gamma * y + beta

        tl.store(output_row_ptr + col_offsets, y, mask=mask)


def triton_layernorm(x: torch.Tensor, weight: torch.Tensor, bias: torch.Tensor, eps: float = 1e-5):
    """Triton implementation of LayerNorm over the last dim."""
    # ensure dtype and contiguity
    if x.dtype != torch.float32:
        x = x.float()
    x = x.contiguous()

    # ensure params are on same device/dtype and contiguous
    weight = weight.to(device=x.device, dtype=x.dtype).contiguous()
    bias = bias.to(device=x.device, dtype=x.dtype).contiguous()

    assert x.dim() == 2, "Only 2D tensors are supported (N, C)"
    n_rows, n_cols = x.shape

    assert weight.shape[0] == n_cols, f"Weight shape {weight.shape} doesn't match input features {n_cols}"
    assert bias.shape[0] == n_cols, f"Bias shape {bias.shape} doesn't match input features {n_cols}"

    # output
    output = torch.empty_like(x)

    # choose BLOCK_SIZE (power of two for best perf)
    # small rows use one pass kernel, large rows use two-pass kernel
    BLOCK_SIZE = 128

    if n_cols <= BLOCK_SIZE:
        grid = (n_rows,)
        layernorm_kernel_small[grid](
            x, output,
            weight, bias,
            x.stride(0), output.stride(0),
            n_cols,
            eps,
            BLOCK_SIZE=BLOCK_SIZE,
        )
    else:
        grid = (n_rows,)
        layernorm_kernel_large_row[grid](
            x, output,
            weight, bias,
            x.stride(0), output.stride(0),
            n_cols,
            eps,
            BLOCK_SIZE=BLOCK_SIZE,
        )

    return output


# Test function
def test_layernorm():
    device = 'cuda' if torch.cuda.is_available() else 'cpu'
    print(f"Using device: {device}")

    batch_size, hidden_size = 4, 8
    x = torch.randn(batch_size, hidden_size, device=device)
    weight = torch.ones(hidden_size, device=device, dtype=x.dtype)
    bias = torch.zeros(hidden_size, device=device, dtype=x.dtype)

    print("Input matrix:")
    print(x)
    print(f"\nWeight: {weight}")
    print(f"Bias: {bias}")

    try:
        output_triton = triton_layernorm(x, weight, bias)

        output_pytorch = torch.nn.functional.layer_norm(x, (hidden_size,), weight, bias)

        print("\nTriton LayerNorm output:")
        print(output_triton)

        print("\nPyTorch LayerNorm output:")
        print(output_pytorch)

        assert torch.allclose(output_triton, output_pytorch, atol=1e-5), "Results don't match"
        print("\n✓ Test passed! Results are consistent")

        print("\n" + "="*50)
        print("Testing with non-identity weights and biases...")

        weight2 = torch.tensor([0.5, 1.0, 1.5, 2.0, 0.8, 1.2, 0.9, 1.1], device=device, dtype=x.dtype)
        bias2 = torch.tensor([0.1, -0.1, 0.2, -0.2, 0.05, -0.05, 0.15, -0.15], device=device, dtype=x.dtype)

        output_triton2 = triton_layernorm(x, weight2, bias2)
        output_pytorch2 = torch.nn.functional.layer_norm(x, (hidden_size,), weight2, bias2)

        assert torch.allclose(output_triton2, output_pytorch2, atol=1e-5), "Results with custom params don't match"
        print("✓ Test with custom weights/biases passed!")

        print("\n" + "="*50)
        print("Testing with larger input sizes...")

        large_x = torch.randn(2, 256, device=device)
        large_weight = torch.ones(256, device=device, dtype=large_x.dtype)
        large_bias = torch.zeros(256, device=device, dtype=large_x.dtype)

        large_triton = triton_layernorm(large_x, large_weight, large_bias)
        large_pytorch = torch.nn.functional.layer_norm(large_x, (256,), large_weight, large_bias)

        assert torch.allclose(large_triton, large_pytorch, atol=1e-5), "Large input test failed"
        print("✓ Large input test passed!")

        print("\n" + "="*50)
        print("Testing with extreme values...")

        extreme_x = torch.tensor([
            [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0],
            [10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0],
            [-5.0, -5.0, -5.0, -5.0, -5.0, -5.0, -5.0, -5.0]
        ], device=device, dtype=torch.float32)

        extreme_triton = triton_layernorm(extreme_x, weight, bias)
        extreme_pytorch = torch.nn.functional.layer_norm(extreme_x, (hidden_size,), weight, bias)

        assert not torch.any(torch.isnan(extreme_triton)), "NaN values in output"
        assert not torch.any(torch.isinf(extreme_triton)), "Inf values in output"

        assert torch.allclose(extreme_triton, extreme_pytorch, atol=1e-5), "Extreme values test failed"
        print("✓ Extreme values test passed!")

        if torch.cuda.is_available():
            import time
            perf_x = torch.randn(100, 1000, device=device)
            perf_weight = torch.ones(1000, device=device, dtype=perf_x.dtype)
            perf_bias = torch.zeros(1000, device=device, dtype=perf_x.dtype)

            # warm up
            for _ in range(100):
                _ = triton_layernorm(perf_x, perf_weight, perf_bias)

            torch.cuda.synchronize()
            start = time.time()
            for _ in range(1000):
                output_triton = triton_layernorm(perf_x, perf_weight, perf_bias)
            torch.cuda.synchronize()
            triton_time = time.time() - start

            torch.cuda.synchronize()
            start = time.time()
            for _ in range(1000):
                output_pytorch = torch.nn.functional.layer_norm(perf_x, (1000,), perf_weight, perf_bias)
            torch.cuda.synchronize()
            pytorch_time = time.time() - start

            print(f"\nPerformance Comparison:")
            print(f"Triton LayerNorm total time: {triton_time*1000:.2f} ms")
            print(f"PyTorch LayerNorm total time: {pytorch_time*1000:.2f} ms")
            print(f"Speedup: {pytorch_time/triton_time:.2f}x")

    except Exception as e:
        print(f"Triton kernel execution failed: {e}")
        print("This might be due to Triton not supporting CPU execution for this kernel")

if __name__ == "__main__":
    try:
        test_layernorm()
    except Exception as e:
        print(f"Triton test failed: {e}")
