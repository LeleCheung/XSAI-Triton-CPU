#!/bin/bash
set -euo pipefail

DUMP_DIR="xsai/amxdump"

usage() {
    echo "Usage: $0 {gemm|layernorm|relu|rmsnorm|silu|softmax|clean} [dump|debug]"
    exit 1
}

set_cpu_backend() {
    export TRITON_CPU_BACKEND=1
    echo "TRITON_CPU_BACKEND=$TRITON_CPU_BACKEND"
}

set_dump_env() {
    export TRITON_KERNEL_DUMP=1
    export TRITON_DUMP_DIR="$DUMP_DIR"
    export TRITON_ALWAYS_COMPILE=1
    mkdir -p "$TRITON_DUMP_DIR"
    echo "TRITON_KERNEL_DUMP=$TRITON_KERNEL_DUMP"
    echo "TRITON_DUMP_DIR=$TRITON_DUMP_DIR"
    echo "TRITON_ALWAYS_COMPILE=$TRITON_ALWAYS_COMPILE"
}

set_debug_env() {
    export TRITON_CPU_AMX_DEBUG=1
    echo "TRITON_CPU_AMX_DEBUG=$TRITON_CPU_AMX_DEBUG"
}

run_test() {
    local name="$1"
    local mode="${2:-}"
    set_cpu_backend
    case "$mode" in
        "") ;;
        dump)
            set_dump_env
            ;;
        debug)
            set_dump_env
            set_debug_env
            ;;
        *)
            usage
            ;;
    esac
    python3 "xsai/${name}.py"
    echo "Run completed: $name mode=${mode:-none}"
}

[ $# -lt 1 ] && usage

case "$1" in
    gemm|layernorm|relu|rmsnorm|silu|softmax)
        run_test "$1" "${2:-}"
        ;;
    clean)
        rm -rf "$DUMP_DIR"
        echo "Dump directory cleaned."
        ;;
    *)
        usage
        ;;
esac