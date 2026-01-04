#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <cstring>
#include <cmath>
#include <dlfcn.h>      // 用于 dlopen, dlsym
#include <sys/syscall.h> // 用于 syscall
#include <unistd.h>     // 用于 syscall
#include <cstdint>

// ----------------------------------------------------------------
// 1. 定义函数签名 (ABI)
// ----------------------------------------------------------------
// Triton Kernel 的参数顺序通常是：
// (Ptrs..., Scalars..., Grid_0, Grid_1, Grid_2)
typedef void (*gemm_kernel_t)(
    int8_t* A_ptr, 
    int8_t* B_ptr, 
    int32_t* C_ptr,
    int M, int N, int K, int BATCH,
    int grid_m, int grid_n, int grid_b
);

// ----------------------------------------------------------------
// 2. AMX 初始化工具 (参考 Python 代码逻辑)
// ----------------------------------------------------------------
#define ARCH_REQ_XCOMP_PERM 0x1023
#define SYS_arch_prctl 158

void enable_amx() {
    // 尝试 Python 脚本中提到的 "buggy" syscall 18
    long ret = syscall(SYS_arch_prctl, ARCH_REQ_XCOMP_PERM, 18);
    if (ret != 0) {
        std::cerr << "Warning: arch_prctl(18) failed. Trying correct mask..." << std::endl;
        unsigned long mask = (1 << 17) | (1 << 18);
        ret = syscall(SYS_arch_prctl, ARCH_REQ_XCOMP_PERM, mask);
        if (ret != 0) {
            std::cerr << "Error: Failed to enable AMX. Ret: " << ret << std::endl;
            // 继续执行，可能会导致 crash
        }
    } else {
        std::cout << "AMX enabled successfully." << std::endl;
    }
}

int main() {
    // ----------------------------------------------------------------
    // 3. 读取 Kernel 名称
    // ----------------------------------------------------------------
    std::ifstream meta_file("gemm_meta.txt");
    if (!meta_file.is_open()) {
        std::cerr << "Error: gemm_meta.txt not found. Run gemm_build.py first." << std::endl;
        return 1;
    }
    std::string kernel_name;
    meta_file >> kernel_name;
    meta_file.close();

    // ----------------------------------------------------------------
    // 4. 加载 .so 库
    // ----------------------------------------------------------------
    const char* so_path = "./gemm_standalone.so";
    void* handle = dlopen(so_path, RTLD_LAZY);
    if (!handle) {
        std::cerr << "Error loading .so: " << dlerror() << std::endl;
        return 1;
    }

    // 获取函数指针
    gemm_kernel_t kernel_func = (gemm_kernel_t)dlsym(handle, kernel_name.c_str());
    if (!kernel_func) {
        std::cerr << "Error finding symbol '" << kernel_name << "': " << dlerror() << std::endl;
        dlclose(handle);
        return 1;
    }
    
    // 初始化 AMX
    enable_amx();

    // ----------------------------------------------------------------
    // 5. 准备数据
    // ----------------------------------------------------------------
    int M = 128, N = 128, K = 128, BATCH = 1;
    int BLOCK_SIZE_M = 32;
    int BLOCK_SIZE_N = 32;

    std::vector<int8_t> A(M * K);
    std::vector<int8_t> B(K * N);
    std::vector<int32_t> C(M * N, 0);

    // 初始化 A 和 B (简单随机数)
    for(int i=0; i<M*K; ++i) A[i] = (rand() % 10) - 5;
    for(int i=0; i<K*N; ++i) B[i] = (rand() % 10) - 5;

    // ----------------------------------------------------------------
    // 6. 执行 Kernel (模拟 Grid Loop)
    // ----------------------------------------------------------------
    int grid_m = (M + BLOCK_SIZE_M - 1) / BLOCK_SIZE_M;
    int grid_n = (N + BLOCK_SIZE_N - 1) / BLOCK_SIZE_N;

    std::cout << "Launching Kernel: " << kernel_name << std::endl;
    std::cout << "Grid: " << grid_m << "x" << grid_n << std::endl;

    for (int pm = 0; pm < grid_m; ++pm) {
        for (int pn = 0; pn < grid_n; ++pn) {
            // 调用 Kernel
            // 注意：参数必须与 ABI 严格对应
            kernel_func(
                A.data(), B.data(), C.data(), // Pointers
                M, N, K, BATCH,               // Constants
                pm, pn, 0                     // Grid IDs (program_id)
            );
        }
    }

    // ----------------------------------------------------------------
    // 7. 验证结果 (CPU 参考计算)
    // ----------------------------------------------------------------
    std::cout << "Verifying results..." << std::endl;
    bool match = true;
    for (int r = 0; r < M; ++r) {
        for (int c = 0; c < N; ++c) {
            int32_t ref = 0;
            for (int k = 0; k < K; ++k) {
                ref += (int32_t)A[r * K + k] * (int32_t)B[k * N + c];
            }
            if (C[r * N + c] != ref) {
                std::cerr << "Mismatch at (" << r << "," << c << "): "
                          << "Got " << C[r * N + c] << ", Expected " << ref << std::endl;
                match = false;
                break;
            }
        }
        if (!match) break;
    }

    if (match) {
        std::cout << "✅ Success! Results match." << std::endl;
    } else {
        std::cout << "❌ Failed." << std::endl;
    }

    dlclose(handle);
    return 0;
}