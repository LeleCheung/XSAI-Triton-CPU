cmake_minimum_required(VERSION 3.10)
project(TritonGemmCPU)

set(CMAKE_CXX_STANDARD 17)

# -------------------------------------------------------------------
# Build a shared library that exposes both:
#   • Your custom wrapper (lib_gemm.cpp)
#   • Triton AOT-generated kernel (gemm_kernel.c)
#
# The output will be:
#   libgemm_op.so   (Linux / macOS)
#   gemm_op.dll     (Windows MinGW/MSVC)
# -------------------------------------------------------------------
add_library(gemm_op SHARED
    lib_gemm.cpp
    gemm_kernel.c
)

# -------------------------------------------------------------------
# Triton CPU-generated code may depend on OpenMP for parallelization.
# Many Triton AOT backends emit multi-threaded loops that expect
# an OpenMP runtime to be linked.
# -------------------------------------------------------------------
find_package(OpenMP REQUIRED)
target_link_libraries(gemm_op PUBLIC OpenMP::OpenMP_CXX)

# -------------------------------------------------------------------
# Optional: If Triton’s AOT output references Triton runtime headers,
# you need to provide include paths.
#
# This is not always required. The generated C code may be standalone,
# depending on your version of Triton.
#
# Example (uncomment and adjust if necessary):
# target_include_directories(gemm_op PRIVATE /path/to/triton/include)
# -------------------------------------------------------------------

# -------------------------------------------------------------------
# Optional: Give the library a clean output directory
# -------------------------------------------------------------------
set_target_properties(gemm_op PROPERTIES
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin
)
