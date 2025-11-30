import torch
import triton
import triton.language as tl
import os
import sys

# ------------------------------------------------------------------
# Definition of the Kernel (Same as your code)
# ------------------------------------------------------------------
@triton.jit
def gemm_kernel(
    A_ptr, B_ptr, C_ptr,
    M, N, K, BATCH,
    BLOCK_SIZE_M: tl.constexpr, BLOCK_SIZE_N: tl.constexpr, BLOCK_SIZE_K: tl.constexpr
):
    pid_m = tl.program_id(0)
    pid_n = tl.program_id(1)
    pid_b = tl.program_id(2)

    offs_m = pid_m * BLOCK_SIZE_M + tl.arange(0, BLOCK_SIZE_M)
    offs_n = pid_n * BLOCK_SIZE_N + tl.arange(0, BLOCK_SIZE_N)
    offs_k = tl.arange(0, BLOCK_SIZE_K)

    acc = tl.zeros((BLOCK_SIZE_M, BLOCK_SIZE_N), dtype=tl.int32)
    
    A_ptr = A_ptr.to(tl.pointer_type(tl.int8))
    B_ptr = B_ptr.to(tl.pointer_type(tl.int8))
    C_ptr = C_ptr.to(tl.pointer_type(tl.int32))

    A_batch_base = pid_b * (M * K)
    B_batch_base = pid_b * (K * N)
    C_batch_base = pid_b * (M * N)

    for k in range(0, K, BLOCK_SIZE_K):
        A = tl.load(A_ptr + A_batch_base + (offs_m[:, None] * K + (offs_k[None, :] + k)))
        B = tl.load(B_ptr + B_batch_base + ((offs_k[:, None] + k) * N + offs_n[None, :]))
        acc += tl.dot(A, B)

    tl.store(C_ptr + C_batch_base + (offs_m[:, None] * N + offs_n[None, :]), acc)

# ------------------------------------------------------------------
# AOT Compilation Logic
# ------------------------------------------------------------------
def compile_kernel():
    # 1. Configuration
    BLOCK_SIZE_M = 32
    BLOCK_SIZE_N = 32
    BLOCK_SIZE_K = 32
    
    # 2. Define Signature (Pointer types and Integers)
    # *i8 = pointer to int8, *i32 = pointer to int32, i32 = int32
    signature = {
        'A_ptr': '*i8', 
        'B_ptr': '*i8', 
        'C_ptr': '*i32',
        'M': 'i32', 
        'N': 'i32', 
        'K': 'i32', 
        'BATCH': 'i32',
        'BLOCK_SIZE_M': 'i32',
        'BLOCK_SIZE_N': 'i32',
        'BLOCK_SIZE_K': 'i32',
    }
    
    # 3. Compile
    # Use triton.compile directly
    print("Compiling kernel...")
    src = triton.compiler.ASTSource(
        fn=gemm_kernel,
        signature=signature,
        constexprs={
            'BLOCK_SIZE_M': BLOCK_SIZE_M, 
            'BLOCK_SIZE_N': BLOCK_SIZE_N, 
            'BLOCK_SIZE_K': BLOCK_SIZE_K
        }
    )
    compiled = triton.compile(
        src
    )

    # 4. Extract Artifacts
    # The kernel name in the .so is mangled (e.g., gemm_kernel_0d1d...)
    kernel_name = compiled.name
    so_path = compiled.asm['ttir'] # Usually path, or binary depending on backend. 
    # For standard Triton, compiled.metadata contains the shared object path usually.
    
    # Note: Triton's API for getting the .so path varies slightly by version.
    # We will assume standard behavior where it caches in ~/.triton/cache
    # We will try to find the generated .so path.
    import shutil
    
    # The compiled object usually has 'c_wrapper' or similar or we rely on the cache key
    # Let's inspect the compiled object to find the so path:
    src_so_path = None
    
    # Attempt to locate the generated .so
    # compiled.metadata is a dict, usually contains 'name' and 'shared'
    if hasattr(compiled, 'metadata') and hasattr(compiled.metadata, 'shared'):
        src_so_path = compiled.metadata.shared
    # Fallback/alternative search for some versions
    elif hasattr(compiled, 'asm') and 'so_path' in compiled.asm:
        src_so_path = compiled.asm['so_path']
    
    if src_so_path and os.path.exists(src_so_path):
        dst_so_path = "gemm_standalone.so"
        shutil.copy(src_so_path, dst_so_path)
        print(f"\nSUCCESS: Kernel compiled.")
        print(f"Shared Lib: {dst_so_path}")
        print(f"Kernel Name: {kernel_name}")
        
        # Save metadata for the runner
        with open("gemm_meta.txt", "w") as f:
            f.write(f"{kernel_name}")
    elif hasattr(compiled, 'asm') and 'so' in compiled.asm:
        dst_so_path = "gemm_standalone.so"
        with open(dst_so_path, "wb") as f:
            f.write(compiled.asm['so'])
        print(f"\nSUCCESS: Kernel compiled.")
        print(f"Shared Lib: {dst_so_path}")
        print(f"Kernel Name: {kernel_name}")
        
        # Save metadata for the runner
        with open("gemm_meta.txt", "w") as f:
            f.write(f"{kernel_name}")
    else:
        print("Error: Could not locate generated .so file from Triton object.")
        # Fallback: Depending on your specific XSAI Triton version, 
        # checking the output of triton.jit might be required.

if __name__ == "__main__":
    compile_kernel()