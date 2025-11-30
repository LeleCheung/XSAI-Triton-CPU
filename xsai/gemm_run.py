import torch
import ctypes
import os
import sys

def run_standalone():
    # ----------------------------------------------------------------
    # 1. Setup & AMX Initialization
    # ----------------------------------------------------------------
    # CRITICAL: Enable AMX manually because we are not importing Triton.
    # We found that on this system, the "buggy" syscall (18) works, while the correct one fails.
    libc = ctypes.CDLL("libc.so.6")
    SYS_arch_prctl = 158
    ARCH_REQ_XCOMP_PERM = 0x1023
    
    print("Enabling AMX...")
    # Try the "buggy" enable which works on this system
    ret = libc.syscall(SYS_arch_prctl, ctypes.c_int(ARCH_REQ_XCOMP_PERM), ctypes.c_ulong(18))
    if ret != 0:
        print(f"Warning: arch_prctl(18) failed with {ret}. Trying correct mask...")
        mask = (1 << 17) | (1 << 18)
        ret = libc.syscall(SYS_arch_prctl, ctypes.c_int(ARCH_REQ_XCOMP_PERM), ctypes.c_ulong(mask))
        if ret != 0:
            print(f"Error: Failed to enable AMX. arch_prctl returned {ret}")
            # Proceeding anyway, might crash with SIGILL
    else:
        print("AMX enabled successfully (via syscall 18).")

    so_path = "./gemm_standalone.so"
    if not os.path.exists(so_path):
        print("Error: gemm_standalone.so not found. Run gemm_build.py first.")
        return

    # Read the mangled kernel name
    try:
        with open("gemm_meta.txt", "r") as f:
            kernel_name = f.read().strip()
    except:
        print("Error: gemm_meta.txt not found. Run gemm_build.py first.")
        return

    print(f"Loading {so_path}...")
    lib = ctypes.CDLL(so_path)
    
    try:
        kernel_func = getattr(lib, kernel_name)
    except AttributeError:
        print(f"Error: Function '{kernel_name}' not found in .so")
        return

    # ----------------------------------------------------------------
    # 2. Prepare Data
    # ----------------------------------------------------------------
    M, N, K, BATCH = 128, 128, 128, 1
    BLOCK_SIZE_M = 32
    BLOCK_SIZE_N = 32
    BLOCK_SIZE_K = 32
    
    print(f"Dimensions: M={M}, N={N}, K={K}, BATCH={BATCH}")

    # Use CPU tensors
    A = torch.randint(-128, 127, (BATCH, M, K), dtype=torch.int8)
    B = torch.randint(-128, 127, (BATCH, K, N), dtype=torch.int8)
    C = torch.zeros((BATCH, M, N), dtype=torch.int32)

    # ----------------------------------------------------------------
    # 3. Define ABI (Direct Arguments)
    # ----------------------------------------------------------------
    # The naked kernel expects arguments in registers/stack (System V ABI).
    # Correct Signature: (A*, B*, C*, M, N, K, BATCH, grid0, grid1, grid2)
    
    kernel_func.argtypes = [
        ctypes.c_void_p, ctypes.c_void_p, ctypes.c_void_p, # Pointers
        ctypes.c_int, ctypes.c_int, ctypes.c_int, ctypes.c_int, # Scalars (M, N, K, BATCH)
        ctypes.c_int, ctypes.c_int, ctypes.c_int           # Grid IDs
    ]
    kernel_func.restype = None

    # ----------------------------------------------------------------
    # 4. Launch Loop (Simulate Triton Runtime)
    # ----------------------------------------------------------------
    print(f"Launching kernel '{kernel_name}'...")
    
    grid_m = (M + BLOCK_SIZE_M - 1) // BLOCK_SIZE_M
    grid_n = (N + BLOCK_SIZE_N - 1) // BLOCK_SIZE_N
    
    # Loop over the grid
    print(f"Grid: {grid_m}x{grid_n}")
    for pid_m in range(grid_m):
        for pid_n in range(grid_n):
            # pid_b is 0 for now (BATCH=1)
            kernel_func(
                A.data_ptr(), B.data_ptr(), C.data_ptr(),
                M, N, K, BATCH,
                pid_m, pid_n, 0
            )
            # print(f"Tile ({pid_m}, {pid_n}) finished.")
    print("Loop finished.")

    # ----------------------------------------------------------------
    # 5. Verify
    # ----------------------------------------------------------------
    print("Execution finished. Verifying...")
    C_ref = torch.matmul(A.to(torch.int32), B.to(torch.int32))
    
    if torch.allclose(C, C_ref):
        print("✅ Success! Results match.")
    else:
        print("❌ Mismatch.")
        diff = (C - C_ref).abs().max()
        print(f"Max Diff: {diff}")
        if diff > 0:
            print("First 10 elements of C:")
            print(C.flatten()[:10])
            print("First 10 elements of Ref:")
            print(C_ref.flatten()[:10])

if __name__ == "__main__":
    run_standalone()