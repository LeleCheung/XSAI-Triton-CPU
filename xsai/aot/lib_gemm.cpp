#include <cstdint>
#include <cstdio>
#include "gemm_kernel.h"   // Header generated from Triton AOT compilation

// --------------------------------------------------------------
// Provide a C-compatible API wrapper for the generated GEMM kernel.
// Using 'extern "C"' disables C++ name mangling, making this
// function callable from Python ctypes, Rust FFI, C, or other languages.
// --------------------------------------------------------------
extern "C" {

void launch_gemm(int8_t* A, int8_t* B, int32_t* C,
                 int M, int N, int K, int BATCH) 
{

    int gridX = (M + 32 - 1) / 32;   // ceil(M / 32)
    int gridY = (N + 32 - 1) / 32;   // ceil(N / 32)
    int gridZ = BATCH;               // one tile per batch slice

    default_gemm_kernel(
        gridX, gridY, gridZ,
        A, B, C,
        M, N, K, BATCH
    );
}

} 
