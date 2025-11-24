import torch
import triton
import triton.language as tl

# ------------------------------------------------------------------
# 1. Triton GEMM Kernel
# ------------------------------------------------------------------
# Note: This is an int8 × int8 = int32 batched GEMM kernel:
#   C[b, m, n] = Σ_k A[b, m, k] * B[b, k, n]
#
# All tile sizes (BLOCK_SIZE_*) are compile-time constants (tl.constexpr).


def gemm_kernel(
    A_ptr, B_ptr, C_ptr,
    M, N, K, BATCH,
    BLOCK_SIZE_M: tl.constexpr,
    BLOCK_SIZE_N: tl.constexpr,
    BLOCK_SIZE_K: tl.constexpr
):
    # --------------------------------------------------------------
    # Program IDs determine which tile of the output matrix this
    # kernel instance is responsible for.
    #   pid_m → tile index along M dimension
    #   pid_n → tile index along N dimension
    #   pid_b → batch index for A/B/C
    # --------------------------------------------------------------
    pid_m = tl.program_id(0)
    pid_n = tl.program_id(1)
    pid_b = tl.program_id(2)

    # Offsets into the matrices for the given tile.
    offs_m = pid_m * BLOCK_SIZE_M + tl.arange(0, BLOCK_SIZE_M)
    offs_n = pid_n * BLOCK_SIZE_N + tl.arange(0, BLOCK_SIZE_N)
    offs_k = tl.arange(0, BLOCK_SIZE_K)

    # Initialize accumulator tile (int32).
    acc = tl.zeros((BLOCK_SIZE_M, BLOCK_SIZE_N), dtype=tl.int32)

    # Convert incoming generic pointers into typed Triton pointers.
    A_ptr = A_ptr.to(tl.pointer_type(tl.int8))
    B_ptr = B_ptr.to(tl.pointer_type(tl.int8))
    C_ptr = C_ptr.to(tl.pointer_type(tl.int32))

    # --------------------------------------------------------------
    # Compute per-batch base offsets:
    #     A: [BATCH, M, K]
    #     B: [BATCH, K, N]
    #     C: [BATCH, M, N]
    # These layouts are assumed contiguous.
    # --------------------------------------------------------------
    A_batch_base = pid_b * (M * K)
    B_batch_base = pid_b * (K * N)
    C_batch_base = pid_b * (M * N)

    # --------------------------------------------------------------
    # Main reduction loop: iterate over K dimension by tile.
    # BLOCK_SIZE_K is compile-time, so loop unrolling works well.
    # --------------------------------------------------------------
    for k in range(0, K, BLOCK_SIZE_K):

        # Load a block of A: shape (BLOCK_SIZE_M, BLOCK_SIZE_K)
        A = tl.load(
            A_ptr +
            A_batch_base +
            (offs_m[:, None] * K + (offs_k[None, :] + k))
        )

        # Load a block of B: shape (BLOCK_SIZE_K, BLOCK_SIZE_N)
        B = tl.load(
            B_ptr +
            B_batch_base +
            ((offs_k[:, None] + k) * N + offs_n[None, :])
        )

        # Accumulate partial results using int8 × int8 dot product.
        acc += tl.dot(A, B)

    # --------------------------------------------------------------
    # Write the computed output tile to C
    # --------------------------------------------------------------
    tl.store(
        C_ptr +
        C_batch_base +
        (offs_m[:, None] * N + offs_n[None, :]),
        acc
    )


# ------------------------------------------------------------------
# 2. Compile-Time Signature
# ------------------------------------------------------------------
# Triton AOT compilation requires explicitly specifying:
#   • pointer element types
#   • scalar argument types
#   • compile-time constants (constexpr)
#
# BLOCK_SIZE_* must be provided as fixed integers here.
signature = {
    "A_ptr": "*i8",
    "B_ptr": "*i8",
    "C_ptr": "*i32",
    "M": "i32",
    "N": "i32",
    "K": "i32",
    "BATCH": "i32",
    "BLOCK_SIZE_M": 32,  # constexpr argument, fixed at compile time
    "BLOCK_SIZE_N": 32,
    "BLOCK_SIZE_K": 32,
}

# ------------------------------------------------------------------
# 3. AOT Compilation (Ahead-of-Time)
# ------------------------------------------------------------------
# CPU AOT target may vary depending on Triton version.
# Triton >= v3 often exposes:
#   triton.backends.cpu.driver.CPUDriver()
#
# This builds LLVM IR, C code, or binary that can be embedded offline.
# ------------------------------------------------------------------
from triton.backends.triton_shared.driver import compile as compile_func

src = triton.compiler.ASTSource(
    fn=gemm_kernel,
    signature=signature,
    constants={
        "BLOCK_SIZE_M": 32,
        "BLOCK_SIZE_N": 32,
        "BLOCK_SIZE_K": 32
    }
)

# Select CPU backend (may differ based on Triton installation).
target = triton.backends.cpu.driver.CPUDriver()

# Compile the kernel to artifacts (C source / header / LLVM IR / asm)
compiled = triton.compile(
    src,
    target=target
)

# ------------------------------------------------------------------
# 4. Export Output Files
# ------------------------------------------------------------------
# The compiled object typically contains:
#   compiled.asm["c_source"]  → C implementation
#   compiled.asm["c_header"]  → function declaration
#   compiled.asm["llir"]      → LLVM IR
#
# These files can be embedded into external C/C++ projects.
# ------------------------------------------------------------------
print(compiled.asm["c_source"])

with open("gemm_kernel.h", "w") as f:
    f.write(compiled.asm["c_header"])

with open("gemm_kernel.c", "w") as f:
    f.write(compiled.asm["c_source"])
