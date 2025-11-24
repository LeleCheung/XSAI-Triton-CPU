# !/bin/bash
set -euo pipefail

# Build the AOT gemm operator shared library
python3 gemm_compile.py

# Create libgemm_op.so
mkdir build && cd build
cmake ..
make
