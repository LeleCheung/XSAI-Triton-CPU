import torch
import triton
import triton.language as tl
import numpy

@triton.jit
def gemm_amx_kernel(A_ptr, B_ptr, C_ptr, M, N, K,
                  BLOCK_SIZE_M: tl.constexpr, BLOCK_SIZE_N: tl.constexpr, BLOCK_SIZE_K: tl.constexpr):
    pid_m = tl.program_id(0)
    pid_n = tl.program_id(1)

    offs_m = pid_m * BLOCK_SIZE_M + tl.arange(0, BLOCK_SIZE_M)
    offs_n = pid_n * BLOCK_SIZE_N + tl.arange(0, BLOCK_SIZE_N)
    offs_k = tl.arange(0, BLOCK_SIZE_K)

    acc = tl.zeros((BLOCK_SIZE_M, BLOCK_SIZE_N), dtype=tl.int32)

    # 将指针转换为正确类型
    A_ptr = A_ptr.to(tl.pointer_type(tl.int8))
    B_ptr = B_ptr.to(tl.pointer_type(tl.int8))
    C_ptr = C_ptr.to(tl.pointer_type(tl.int32))

    for k in range(0, K, BLOCK_SIZE_K):
        # 移除 dtype 参数，因为指针类型已经确定
        A = tl.load(A_ptr + (offs_m[:, None] * K + (offs_k[None, :] + k)))
        B = tl.load(B_ptr + ((offs_k[:, None] + k) * N + offs_n[None, :]))

        acc += tl.dot(A, B)

    tl.store(C_ptr + (offs_m[:, None] * N + offs_n[None, :]), acc)

M, N, K = 128, 128, 128
A = torch.randint(-128, 127, (M, K), device='cpu', dtype=torch.int8)
B = torch.randint(-128, 127, (K, N), device='cpu', dtype=torch.int8)
C = torch.zeros((M, N), device='cpu', dtype=torch.int32)

BLOCK_SIZE_M = 32
BLOCK_SIZE_N = 32
BLOCK_SIZE_K = 64

grid = (M//BLOCK_SIZE_M, N//BLOCK_SIZE_N)
gemm_amx_kernel[grid](A, B, C, M, N, K, BLOCK_SIZE_M=BLOCK_SIZE_M, BLOCK_SIZE_N=BLOCK_SIZE_N, BLOCK_SIZE_K=BLOCK_SIZE_K)

C_ref = (A.to(torch.int32) @ B.to(torch.int32))
assert torch.allclose(C, C_ref), "结果不一致"
print("测试通过！")