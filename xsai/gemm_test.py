import torch
import triton
import triton.language as tl
import os
import sys

# Add python path for triton if needed
curr_dir = os.path.dirname(os.path.abspath(__file__))
root_dir = os.path.abspath(os.path.join(curr_dir, "../../../python"))
if root_dir not in sys.path:
    sys.path.insert(0, root_dir)

# ==============================================================================
# 1. Kernel Definition (JIT)
#    We use JIT compilation here to avoid AMX instruction issues.
#    The pre-compiled .so was built with AMX enabled, but the current environment
#    cannot enable AMX (arch_prctl fails). JIT will detect this and generate
#    AVX512 code instead.
# ==============================================================================
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

# ==============================================================================
# 2. Setup Data
# ==============================================================================
M, N, K, BATCH = 128, 128, 128, 1
BLOCK_SIZE_M, BLOCK_SIZE_N, BLOCK_SIZE_K = 32, 32, 32

print(f"\n[SETUP] Tensors (M={M}, N={N}, K={K})...")

# Use contiguous to ensure memory is continuous
A = torch.randint(-128, 127, (BATCH, M, K), dtype=torch.int8).contiguous()
B = torch.randint(-128, 127, (BATCH, K, N), dtype=torch.int8).contiguous()
C = torch.zeros((BATCH, M, N), dtype=torch.int32).contiguous()

# ==============================================================================
# 3. Run Kernel
# ==============================================================================
print("\n[LAUNCH] Running Triton JIT Kernel...")

grid = lambda META: (triton.cdiv(M, META['BLOCK_SIZE_M']), triton.cdiv(N, META['BLOCK_SIZE_N']), BATCH)

try:
    gemm_kernel[grid](
        A, B, C,
        M, N, K, BATCH,
        BLOCK_SIZE_M=BLOCK_SIZE_M,
        BLOCK_SIZE_N=BLOCK_SIZE_N,
        BLOCK_SIZE_K=BLOCK_SIZE_K
    )
    print("✅ Kernel executed successfully.")
except Exception as e:
    print(f"❌ Kernel execution failed: {e}")
    import traceback
    traceback.print_exc()
    sys.exit(1)

# ==============================================================================
# 4. Verify
# ==============================================================================
print("\n[VERIFY] Checking output...")
slice_C = C[0, 0:32, 0:32]

if slice_C.abs().sum() == 0:
    print("⚠️  Warning: Output block (0,0) is all Zeros.")
else:
    print("✅ Output block has non-zero values.")
    
    C_ref = torch.matmul(A.to(torch.int32), B.to(torch.int32))
    slice_ref = C_ref[0, 0:32, 0:32]
    diff = (slice_C - slice_ref).abs().max().item()
    print(f"  > Max Diff on Tile(0,0): {diff}")
    
    if diff == 0:
        print("✅ SUCCESS: Tile(0,0) matches PyTorch reference!")
    else:
        print("❌ FAILED: Mismatch.")

# ==============================================================================
# 5. Inspect Generated Code
# ==============================================================================
print("\n[INSPECT] Checking generated assembly...")
try:
    # Trigger compilation again (or retrieve from cache) to get the CompiledKernel object
    compiled_kernel = gemm_kernel.warmup(
        A, B, C,
        M, N, K, BATCH,
        BLOCK_SIZE_M=BLOCK_SIZE_M,
        BLOCK_SIZE_N=BLOCK_SIZE_N,
        BLOCK_SIZE_K=BLOCK_SIZE_K,
        grid=(1, 1, 1) # Grid is needed for warmup in some versions, or ignored
    )

    if hasattr(compiled_kernel, 'asm'):
        print(f"Available ASM keys: {list(compiled_kernel.asm.keys())}")
        
        # For CPU backend, the assembly is usually under 'asm' key
        asm_code = compiled_kernel.asm.get('asm')
        
        if asm_code:
            # It might be a string or a path
            if len(asm_code) < 256 and os.path.exists(asm_code):
                print(f"ASM is a file path: {asm_code}")
                with open(asm_code, 'r') as f:
                    asm_code = f.read()
            
            # Check for AMX instructions
            amx_keywords = ['tdpbssd', 'tileloadd', 'tilestored', 'ldtilecfg', 'tilezero']
            found_amx = [kw for kw in amx_keywords if kw in asm_code]
            
            if found_amx:
                print(f"!!! AMX INSTRUCTIONS FOUND IN JIT CODE: {found_amx} !!!")
                print("This contradicts the hypothesis that AMX was disabled.")
            else:
                print("No AMX instructions found in JIT code.")
                print("This confirms that the kernel fell back to AVX512 (or other non-AMX instructions).")
            
            # Save for manual inspection
            with open("jit_generated.asm", "w") as f:
                f.write(asm_code)
            print("Saved generated assembly to 'jit_generated.asm'")
            
        else:
            print("Could not find 'asm' content in compiled kernel.")
    else:
        print("Compiled kernel object does not have 'asm' attribute.")

except Exception as e:
    print(f"Failed to inspect generated code: {e}")
    import traceback
    traceback.print_exc()

# ==============================================================================
# 6. Test Loading JIT-Compiled .so with ctypes
# ==============================================================================
print("\n[TEST] Attempting to load JIT-compiled .so with ctypes...")
try:
    # Try to find the .so path or content
    jit_so_path = None
    
    # Check compiled_kernel.asm
    if hasattr(compiled_kernel, 'asm'):
        # 1. Check for 'so' key with bytes content
        if 'so' in compiled_kernel.asm:
            so_content = compiled_kernel.asm['so']
            if isinstance(so_content, bytes):
                print("  > Found 'so' content (bytes) in compiled_kernel.asm")
                temp_so_path = "/root/XSAI/Triton/triton-cpu/xsai/aot/final_kernel.so"
                with open(temp_so_path, "wb") as f:
                    f.write(so_content)
                jit_so_path = temp_so_path
                print(f"  > Saved JIT .so to {jit_so_path}")
            elif isinstance(so_content, str) and os.path.exists(so_content):
                 jit_so_path = so_content

        # 2. Look for keys ending in .so (if 'so' key wasn't the one)
        if not jit_so_path:
            for key, value in compiled_kernel.asm.items():
                if key.endswith('.so'):
                    jit_so_path = value
                    break
    
    # Fallback: check metadata
    if not jit_so_path and hasattr(compiled_kernel, 'metadata') and 'shared' in compiled_kernel.metadata:
        jit_so_path = compiled_kernel.metadata['shared']

    if jit_so_path:
        print(f"  > Found JIT .so at: {jit_so_path}")
        
        if os.path.exists(jit_so_path):
            import ctypes
            jit_lib = ctypes.CDLL(jit_so_path)
            
            # Find the kernel symbol (it's usually mangled)
            # We can try to find it in the .so symbol table
            kernel_symbol = None
            with os.popen(f"nm -D {jit_so_path} | grep 'T .*gemm_kernel'") as f:
                for line in f:
                    parts = line.split()
                    if len(parts) >= 3:
                        kernel_symbol = parts[2]
                        break
            
            if kernel_symbol:
                print(f"  > Found symbol: {kernel_symbol}")
                jit_func = getattr(jit_lib, kernel_symbol)
                
                # Correct signature for naked kernel:
                # (A*, B*, C*, M, N, K, BATCH, grid0, grid1, grid2)
                # Pointers are 64-bit, Ints are 32-bit.
                
                jit_func.argtypes = [
                    ctypes.c_void_p, ctypes.c_void_p, ctypes.c_void_p,
                    ctypes.c_int32, ctypes.c_int32, ctypes.c_int32, ctypes.c_int32,
                    ctypes.c_int32, ctypes.c_int32, ctypes.c_int32
                ]
                jit_func.restype = None
                
                print("  > Launching JIT .so via ctypes (Signature: Direct Args)...")
                
                # Clear C to verify execution
                C.zero_()
                
                # Grid is (1, 1, 1)
                print("  > Calling with K=0 to test prologue/ldtilecfg...")
                jit_func(
                    A.data_ptr(), B.data_ptr(), C.data_ptr(),
                    M, N, 0, BATCH,
                    1, 1, 1
                )
                print("  > K=0 returned without crash.")

                print("  > Calling with real args (grid=0,0,0)...")
                jit_func(
                    A.data_ptr(), B.data_ptr(), C.data_ptr(),
                    M, N, K, BATCH,
                    0, 0, 0
                )
                print("  > Execution returned without crash.")
                
                # Verify
                if C.abs().sum() > 0:
                    print("  > ✅ SUCCESS: JIT .so executed via ctypes and produced output!")
                else:
                    print("  > ⚠️  WARNING: JIT .so executed but output is zero.")
            else:
                print("  > Could not find kernel symbol in JIT .so")
        else:
            print("  > JIT .so file does not exist.")
    else:
        print("  > compiled_kernel object does not contain 'so_path'.")

except Exception as e:
    print(f"  > ❌ FAILED: {e}")
    # Don't exit, just print error
