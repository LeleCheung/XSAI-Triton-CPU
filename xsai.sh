#!/bin/bash

# if the argument is init, export the environment variables
if [ "$1" == "gemm" ]; then
    export TRITON_KERNEL_DUMP=1 
    export TRITON_DUMP_DIR=xsai/amxdump 
    export TRITON_ALWAYS_COMPILE=1 
    echo "TRITON_KERNEL_DUMP=$TRITON_KERNEL_DUMP"
    echo "TRITON_DUMP_DIR=$TRITON_DUMP_DIR"
    echo "TRITON_ALWAYS_COMPILE=$TRITON_ALWAYS_COMPILE"
    mkdir -p "$TRITON_DUMP_DIR"
    TRITON_CPU_BACKEND=1 python3 xsai/gemm.py
    echo "Test GEMM executed."
elif [ "$1" == "layernorm" ]; then
    export TRITON_KERNEL_DUMP=1 
    export TRITON_DUMP_DIR=xsai/amxdump 
    export TRITON_ALWAYS_COMPILE=1 
    echo "TRITON_KERNEL_DUMP=$TRITON_KERNEL_DUMP"
    echo "TRITON_DUMP_DIR=$TRITON_DUMP_DIR"
    echo "TRITON_ALWAYS_COMPILE=$TRITON_ALWAYS_COMPILE"
    mkdir -p "$TRITON_DUMP_DIR"
    TRITON_CPU_BACKEND=1 python3 xsai/layernorm.py
    echo "Test LayerNorm executed."
elif [ "$1" == "relu" ]; then
    export TRITON_KERNEL_DUMP=1 
    export TRITON_DUMP_DIR=xsai/amxdump 
    export TRITON_ALWAYS_COMPILE=1 
    echo "TRITON_KERNEL_DUMP=$TRITON_KERNEL_DUMP"
    echo "TRITON_DUMP_DIR=$TRITON_DUMP_DIR"
    echo "TRITON_ALWAYS_COMPILE=$TRITON_ALWAYS_COMPILE"
    mkdir -p "$TRITON_DUMP_DIR"
    TRITON_CPU_BACKEND=1 python3 xsai/relu.py
    echo "Test ReLU executed."
elif [ "$1" == "rmsnorm" ]; then
    export TRITON_KERNEL_DUMP=1 
    export TRITON_DUMP_DIR=xsai/amxdump 
    export TRITON_ALWAYS_COMPILE=1 
    echo "TRITON_KERNEL_DUMP=$TRITON_KERNEL_DUMP"
    echo "TRITON_DUMP_DIR=$TRITON_DUMP_DIR"
    echo "TRITON_ALWAYS_COMPILE=$TRITON_ALWAYS_COMPILE"
    mkdir -p "$TRITON_DUMP_DIR"
    TRITON_CPU_BACKEND=1 python3 xsai/rmsnorm.py
    echo "Test RMSNorm executed."
elif [ "$1" == "silu" ]; then
    export TRITON_KERNEL_DUMP=1 
    export TRITON_DUMP_DIR=xsai/amxdump 
    export TRITON_ALWAYS_COMPILE=1 
    echo "TRITON_KERNEL_DUMP=$TRITON_KERNEL_DUMP"
    echo "TRITON_DUMP_DIR=$TRITON_DUMP_DIR"
    echo "TRITON_ALWAYS_COMPILE=$TRITON_ALWAYS_COMPILE"
    mkdir -p "$TRITON_DUMP_DIR"
    TRITON_CPU_BACKEND=1 python3 xsai/silu.py
    echo "Test SiLU executed."
elif [ "$1" == "softmax" ]; then
    export TRITON_KERNEL_DUMP=1 
    export TRITON_DUMP_DIR=xsai/amxdump 
    export TRITON_ALWAYS_COMPILE=1 
    echo "TRITON_KERNEL_DUMP=$TRITON_KERNEL_DUMP"
    echo "TRITON_DUMP_DIR=$TRITON_DUMP_DIR"
    echo "TRITON_ALWAYS_COMPILE=$TRITON_ALWAYS_COMPILE"
    mkdir -p "$TRITON_DUMP_DIR"
    TRITON_CPU_BACKEND=1 python3 xsai/softmax.py
    echo "Test Softmax executed."
elif [ "$1" == "clean" ]; then
    rm -rf xsai/amxdump
    echo "Dump directory cleaned."
else
    echo "Usage: $0 {gemm|layernorm|relu|rmsnorm|silu|softmax|clean}"
    echo "  gemm  - Run GEMM test script"
    echo "  layernorm  - Run LayerNorm test script"
    echo "  relu  - Run ReLU test script"
    echo "  rmsnorm  - Run RMSNorm test script"
    echo "  silu  - Run SiLU test script"
    echo "  softmax  - Run Softmax test script"
    echo "  clean - Remove dump directory"
    exit 1
fi
