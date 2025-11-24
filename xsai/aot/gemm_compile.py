import torch
import triton
import triton.language as tl
import inspect
import sys

# ------------------------------------------------------------------
# 1. Triton GEMM Kernel
# ------------------------------------------------------------------

@triton.jit  # <---  Must add decorator!
def gemm_kernel(
    A_ptr, B_ptr, C_ptr,
    M, N, K, BATCH,
    BLOCK_SIZE_M: tl.constexpr,
    BLOCK_SIZE_N: tl.constexpr,
    BLOCK_SIZE_K: tl.constexpr
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
    A_batch_base = pid_b * (M * K)
    B_batch_base = pid_b * (K * N)
    C_batch_base = pid_b * (M * N)

    for k in range(0, K, BLOCK_SIZE_K):
        A = tl.load(
            A_ptr + A_batch_base + (offs_m[:, None] * K + (offs_k[None, :] + k))
        )
        B = tl.load(
            B_ptr + B_batch_base + ((offs_k[:, None] + k) * N + offs_n[None, :])
        )
        acc += tl.dot(A, B)

    tl.store(
        C_ptr + C_batch_base + (offs_m[:, None] * N + offs_n[None, :]),
        acc
    )

# ------------------------------------------------------------------
# 2. AOT Compilation Main Program
# ------------------------------------------------------------------
def main():
    # 1. Define signature
    signature = {
        "A_ptr": "*i8", "B_ptr": "*i8", "C_ptr": "*i32",
        "M": "i32", "N": "i32", "K": "i32", "BATCH": "i32",
    }
    
    # 2. Define constants (Constants/Constexprs)
    constants = {
        "BLOCK_SIZE_M": 32, "BLOCK_SIZE_N": 32, "BLOCK_SIZE_K": 32,
    }

    # 3. Get CPU Target
    target = "cpu"
    try:
        from triton.third_party.backends import CPUDriver
        target = CPUDriver()
    except ImportError:
        pass
    
    print(f"Compiling with target: {target}")

    # 4. Create ASTSource (note the argument name is constexprs)
    src = triton.compiler.ASTSource(
        fn=gemm_kernel,         # <--- Now fn is a JITFunction object
        signature=signature,
        constexprs=constants    # <--- pass into constexprs
    )
    
    # 5. Perform compilation (remove constants argument)
    compiled = triton.compile(
        src,
        target=target
    )

    # 6. Export results
    asm_dict = compiled.asm
    print("Available output keys:", asm_dict.keys())

    if "c_source" in asm_dict:
        print("Writing gemm_kernel.c ...")
        with open("gemm_kernel.c", "w") as f:
            f.write(asm_dict["c_source"])
        
        if "c_header" in asm_dict:
             with open("gemm_kernel.h", "w") as f:
                f.write(asm_dict["c_header"])
        else:
            print("Notice: 'c_header' missing. Please check .c file for function name.")
            
    elif "llir" in asm_dict:
        print("Writing gemm_kernel.ll (LLVM IR) ...")
        with open("gemm_kernel.ll", "w") as f:
            f.write(asm_dict["llir"])
        print("NOTE: You received LLVM IR. You will need to use Clang in your CMakeLists.txt to compile it.")

if __name__ == "__main__":
    main()
