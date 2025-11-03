	.file	"LLVMDialectModule"
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0                          # -- Begin function softmax_kernel_row
.LCPI0_0:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	4                               # 0x4
	.long	5                               # 0x5
	.long	6                               # 0x6
	.long	7                               # 0x7
	.long	8                               # 0x8
	.long	9                               # 0x9
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	12                              # 0xc
	.long	13                              # 0xd
	.long	14                              # 0xe
	.long	15                              # 0xf
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_1:
	.long	0xff800000                      # float -Inf
	.text
	.globl	softmax_kernel_row
	.p2align	4
	.type	softmax_kernel_row,@function
softmax_kernel_row:                     # @softmax_kernel_row
.Lfunc_begin0:
	.file	1 "/root/XSAI/Triton/triton-cpu/xsai" "softmax.py"
	.loc	1 6 0                           # softmax.py:6:0
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
.Ltmp0:
	.loc	1 20 36 prologue_end            # softmax.py:20:36
	imull	%r9d, %edx
	.loc	1 20 26 is_stmt 0               # softmax.py:20:26
	movslq	%edx, %rax
	.loc	1 21 38 is_stmt 1               # softmax.py:21:38
	imull	%r9d, %ecx
	.loc	1 21 28 is_stmt 0               # softmax.py:21:28
	movslq	%ecx, %r14
	.loc	1 24 25 is_stmt 1               # softmax.py:24:25
	vpbroadcastd	%r8d, %zmm0
	vpcmpgtd	.LCPI0_0(%rip), %zmm0, %k1
	kmovw	%k1, 6(%rsp)                    # 2-byte Spill
	.loc	1 27 18                         # softmax.py:27:18
	vbroadcastss	.LCPI0_1(%rip), %zmm0   # zmm0 = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]
	vmovups	(%rdi,%rax,4), %zmm0 {%k1}
	vextractf32x4	$3, %zmm0, %xmm3
	vshufps	$255, %xmm3, %xmm3, %xmm1       # xmm1 = xmm3[3,3,3,3]
	vshufpd	$1, %xmm3, %xmm3, %xmm2         # xmm2 = xmm3[1,0]
	vmovshdup	%xmm3, %xmm4            # xmm4 = xmm3[1,1,3,3]
	vextractf32x4	$2, %zmm0, %xmm6
	vshufps	$255, %xmm6, %xmm6, %xmm5       # xmm5 = xmm6[3,3,3,3]
	vshufpd	$1, %xmm6, %xmm6, %xmm7         # xmm7 = xmm6[1,0]
	vmovshdup	%xmm6, %xmm8            # xmm8 = xmm6[1,1,3,3]
	vextractf128	$1, %ymm0, %xmm9
	vshufps	$255, %xmm9, %xmm9, %xmm10      # xmm10 = xmm9[3,3,3,3]
	vshufpd	$1, %xmm9, %xmm9, %xmm11        # xmm11 = xmm9[1,0]
	vmovshdup	%xmm9, %xmm12           # xmm12 = xmm9[1,1,3,3]
	vshufps	$255, %xmm0, %xmm0, %xmm13      # xmm13 = xmm0[3,3,3,3]
	vshufpd	$1, %xmm0, %xmm0, %xmm14        # xmm14 = xmm0[1,0]
	vmovshdup	%xmm0, %xmm15           # xmm15 = xmm0[1,1,3,3]
.Ltmp1:
	.file	2 "/root/XSAI/Triton/triton-cpu/python/triton/language" "standard.py"
	.loc	2 184 40                        # standard.py:184:40 @[ softmax.py:30:21 ]
	vmaxss	%xmm0, %xmm15, %xmm16
	vcmpunordss	%xmm0, %xmm0, %k1
	vmovss	%xmm15, %xmm16, %xmm16 {%k1}
	vcmpunordss	%xmm16, %xmm16, %k1
	vmaxss	%xmm16, %xmm14, %xmm15
	vmovss	%xmm14, %xmm15, %xmm15 {%k1}
	vcmpunordss	%xmm15, %xmm15, %k1
	vmaxss	%xmm15, %xmm13, %xmm14
	vmovss	%xmm13, %xmm14, %xmm14 {%k1}
	vcmpunordss	%xmm14, %xmm14, %k1
	vmaxss	%xmm14, %xmm9, %xmm13
	vmovss	%xmm9, %xmm13, %xmm13 {%k1}
	vcmpunordss	%xmm13, %xmm13, %k1
	vmaxss	%xmm13, %xmm12, %xmm9
	vmovss	%xmm12, %xmm9, %xmm9 {%k1}
	vcmpunordss	%xmm9, %xmm9, %k1
	vmaxss	%xmm9, %xmm11, %xmm9
	vmovss	%xmm11, %xmm9, %xmm9 {%k1}
	vcmpunordss	%xmm9, %xmm9, %k1
	vmaxss	%xmm9, %xmm10, %xmm9
	vmovss	%xmm10, %xmm9, %xmm9 {%k1}
	vcmpunordss	%xmm9, %xmm9, %k1
	vmaxss	%xmm9, %xmm6, %xmm9
	vmovss	%xmm6, %xmm9, %xmm9 {%k1}
	vcmpunordss	%xmm9, %xmm9, %k1
	vmaxss	%xmm9, %xmm8, %xmm6
	vmovss	%xmm8, %xmm6, %xmm6 {%k1}
	vcmpunordss	%xmm6, %xmm6, %k1
	vmaxss	%xmm6, %xmm7, %xmm6
	vmovss	%xmm7, %xmm6, %xmm6 {%k1}
	vcmpunordss	%xmm6, %xmm6, %k1
	vmaxss	%xmm6, %xmm5, %xmm6
	vmovss	%xmm5, %xmm6, %xmm6 {%k1}
	vcmpunordss	%xmm6, %xmm6, %k1
	vmaxss	%xmm6, %xmm3, %xmm5
	vmovss	%xmm3, %xmm5, %xmm5 {%k1}
	vcmpunordss	%xmm5, %xmm5, %k1
	vmaxss	%xmm5, %xmm4, %xmm3
	vmovss	%xmm4, %xmm3, %xmm3 {%k1}
	vcmpunordss	%xmm3, %xmm3, %k1
	vmaxss	%xmm3, %xmm2, %xmm3
	vmovss	%xmm2, %xmm3, %xmm3 {%k1}
	vcmpunordss	%xmm3, %xmm3, %k1
	vmaxss	%xmm3, %xmm1, %xmm2
	vmovss	%xmm1, %xmm2, %xmm2 {%k1}
	vmaxss	.LCPI0_1(%rip), %xmm2, %xmm1
.Ltmp2:
	.loc	1 31 16                         # softmax.py:31:16
	vbroadcastss	%xmm1, %zmm1
	vsubps	%zmm1, %zmm0, %zmm0
	.loc	1 34 21                         # softmax.py:34:21
	callq	Sleef_expf16_u10@PLT
.Ltmp3:
	.loc	2 286 36                        # standard.py:286:36 @[ softmax.py:37:19 ]
	vextractf64x4	$1, %zmm0, %ymm1
	vaddps	%zmm1, %zmm0, %zmm1
	vextractf128	$1, %ymm1, %xmm2
	vaddps	%xmm2, %xmm1, %xmm1
	vshufpd	$1, %xmm1, %xmm1, %xmm2         # xmm2 = xmm1[1,0]
	vaddps	%xmm2, %xmm1, %xmm1
	vmovshdup	%xmm1, %xmm2            # xmm2 = xmm1[1,1,3,3]
	vaddss	%xmm2, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	vaddss	%xmm2, %xmm1, %xmm1
.Ltmp4:
	.loc	1 40 29                         # softmax.py:40:29
	vbroadcastss	%xmm1, %zmm1
	vdivps	%zmm1, %zmm0, %zmm0
	kmovw	6(%rsp), %k1                    # 2-byte Reload
	.loc	1 43 23                         # softmax.py:43:23
	vmovups	%zmm0, (%rbx,%r14,4) {%k1}
	.loc	1 43 4 epilogue_begin is_stmt 0 # softmax.py:43:4
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.Ltmp5:
.Lfunc_end0:
	.size	softmax_kernel_row, .Lfunc_end0-softmax_kernel_row
	.cfi_endproc
                                        # -- End function
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	14                              # DW_FORM_strp
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	14                              # DW_FORM_strp
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	32                              # DW_AT_inline
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	0                               # DW_CHILDREN_no
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x60 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	2                               # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_inline
	.byte	3                               # Abbrev [3] 0x30:0x3a DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	42                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x41:0x14 DW_TAG_inlined_subroutine
	.long	42                              # DW_AT_abstract_origin
	.quad	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	30                              # DW_AT_call_line
	.byte	21                              # DW_AT_call_column
	.byte	4                               # Abbrev [4] 0x55:0x14 DW_TAG_inlined_subroutine
	.long	42                              # DW_AT_abstract_origin
	.quad	.Ltmp3                          # DW_AT_low_pc
	.long	.Ltmp4-.Ltmp3                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	37                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        # string offset=0
.Linfo_string1:
	.asciz	"softmax.py"                    # string offset=7
.Linfo_string2:
	.asciz	"/root/XSAI/Triton/triton-cpu/xsai" # string offset=18
.Linfo_string3:
	.asciz	"softmax_kernel_row"            # string offset=52
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
