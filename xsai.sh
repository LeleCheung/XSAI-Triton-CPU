#!/bin/bash
set -euo pipefail

DUMP_DIR="xsai/amxdump"

usage() {
    echo "Usage: $0 {gemm|layernorm|relu|rmsnorm|silu|softmax|clean|gemm-debug|layernorm-debug|relu-debug|rmsnorm-debug|silu-debug|softmax-debug}"
    exit 1
}

set_env() {
    export TRITON_KERNEL_DUMP=1
    export TRITON_DUMP_DIR="$DUMP_DIR"
    export TRITON_ALWAYS_COMPILE=1
    export TRITON_CPU_BACKEND=1
    mkdir -p "$TRITON_DUMP_DIR"
    echo "TRITON_KERNEL_DUMP=$TRITON_KERNEL_DUMP"
    echo "TRITON_DUMP_DIR=$TRITON_DUMP_DIR"
    echo "TRITON_ALWAYS_COMPILE=$TRITON_ALWAYS_COMPILE"
    echo "TRITON_CPU_BACKEND=${TRITON_CPU_BACKEND:-}"
}

set_debug() {
    export TRITON_CPU_AMX_DEBUG=1
    echo "Debug environment variables set."
}

run_test() {
    local name="$1"
    set_env
    python3 "xsai/${name}.py"
    echo "Test ${name} executed."
}

debug_test() {
    local name="$1"
    set_env
    set_debug
    python3 "xsai/${name}.py"
    echo "Debug test ${name} executed."
}

[ $# -eq 0 ] && usage

case "$1" in
    gemm|layernorm|relu|rmsnorm|silu|softmax)
        run_test "$1"
        ;;
    gemm-debug|layernorm-debug|relu-debug|rmsnorm-debug|silu-debug|softmax-debug)
        debug_test "${1%-debug}"
        ;;
    clean)
        rm -rf "$DUMP_DIR"
        echo "Dump directory cleaned."
        ;;
    *)
        usage
        ;;
esac
