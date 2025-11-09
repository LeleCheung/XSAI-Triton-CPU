#!/bin/bash
set -euo pipefail

DUMP_DIR="amxdump"

usage() {
    echo "Usage: $0 [OPERATOR] [MODE] [MODEL] [STAGE] [OP] [NAME]"
    echo ""
    echo "Example: $0 gemm dump Qwen3_30B_A3B Prefill gemm_ops up_proj"
    echo ""
    echo "OPERATOR: "
    echo "  gemm, layernorm, rmsnorm, relu, silu, softmax, (clean, help)"
    echo "MODE: "
    echo "  dump, debug, (empty, default run)"
    echo "MODEL:"
    echo "  Qwen3_30B_A3B, Qwen3_235B_A22B, Qwen3_0_6B, Qwen3_1_7B, Qwen3_4B, Qwen3_8B, Qwen3_14B, Qwen3_32B,"
    echo "  DeepSeek_V3, DeepSeek_V3_0324, DeepSeek_V3_1,"
    echo "  Meta_Llama_3_8B, Meta_Llama_3_70B, Meta_Llama_3_1_8B,"
    echo "  Meta_Llama_2_7B, Meta_Llama_2_13B, Meta_Llama_2_70B"
    echo "STAGE: "
    echo "  Prefill, Decode"
    echo "OP: "
    echo "  gemm_ops, bmm_ops, elementwise_ops"
    echo "NAME: "
    echo "  up_proj, down_proj, q_proj, kv_proj, o_proj, qk, pv, "
    echo "  pre_attention_norm_rms, pre_ffn_norm_rms, ffn_activation_silu, attention_softmax"
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
    local name="$1"     # e.g., gemm
    local mode="${2:-}" # e.g., dump

    # Check if this is the 'gemm' test which requires model parameters
    if [ "$name" == "gemm" ]; then
        if [ "$#" -lt 6 ]; then
            echo "Error: 'gemm' test requires MODEL, STAGE, OP, and NAME arguments."
            usage
        fi
        # Capture the model-specific parameters
        local model_arg="$3"
        local stage_arg="$4"
        local op_arg="$5"
        local name_arg="$6"
    fi

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

    echo "Running test: $name"

    # --- Execute the test ---
    case "$name" in
        gemm)
            python3 gemm.py \
                --model "$model_arg" \
                --stage "$stage_arg" \
                --op "$op_arg" \
                --name "$name_arg"
            ;;
        layernorm)
            # Add layernorm script call here
            echo "Layernorm test logic goes here..."
            ;;
        rmsnorm)
            # Add rmsnorm script call here
            echo "RMSNorm test logic goes here..."
            ;;
        relu)
            # Add relu script call here
            echo "ReLU test logic goes here..."
            ;;
        silu)
            # Add silu script call here
            echo "SiLU test logic goes here..."
            ;;
        softmax)
            # Add softmax script call here
            echo "Softmax test logic goes here..."
            ;;
        clean)
            rm -rf "$DUMP_DIR"
            echo "Cleaned up $DUMP_DIR"
            ;;
        help)
            usage
            ;;
        *)
            usage
            ;;
    esac
}

# --- Main execution block ---
if [ "$#" -eq 0 ]; then
    usage
fi

# Pass all arguments to run_test
run_test "$@"