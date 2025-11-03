	.file	"LLVMDialectModule"
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0                          # -- Begin function rms_norm_kernel_small
.LCPI0_0:
	.long	112                             # 0x70
	.long	113                             # 0x71
	.long	114                             # 0x72
	.long	115                             # 0x73
	.long	116                             # 0x74
	.long	117                             # 0x75
	.long	118                             # 0x76
	.long	119                             # 0x77
	.long	120                             # 0x78
	.long	121                             # 0x79
	.long	122                             # 0x7a
	.long	123                             # 0x7b
	.long	124                             # 0x7c
	.long	125                             # 0x7d
	.long	126                             # 0x7e
	.long	127                             # 0x7f
.LCPI0_1:
	.long	48                              # 0x30
	.long	49                              # 0x31
	.long	50                              # 0x32
	.long	51                              # 0x33
	.long	52                              # 0x34
	.long	53                              # 0x35
	.long	54                              # 0x36
	.long	55                              # 0x37
	.long	56                              # 0x38
	.long	57                              # 0x39
	.long	58                              # 0x3a
	.long	59                              # 0x3b
	.long	60                              # 0x3c
	.long	61                              # 0x3d
	.long	62                              # 0x3e
	.long	63                              # 0x3f
.LCPI0_2:
	.long	80                              # 0x50
	.long	81                              # 0x51
	.long	82                              # 0x52
	.long	83                              # 0x53
	.long	84                              # 0x54
	.long	85                              # 0x55
	.long	86                              # 0x56
	.long	87                              # 0x57
	.long	88                              # 0x58
	.long	89                              # 0x59
	.long	90                              # 0x5a
	.long	91                              # 0x5b
	.long	92                              # 0x5c
	.long	93                              # 0x5d
	.long	94                              # 0x5e
	.long	95                              # 0x5f
.LCPI0_3:
	.long	16                              # 0x10
	.long	17                              # 0x11
	.long	18                              # 0x12
	.long	19                              # 0x13
	.long	20                              # 0x14
	.long	21                              # 0x15
	.long	22                              # 0x16
	.long	23                              # 0x17
	.long	24                              # 0x18
	.long	25                              # 0x19
	.long	26                              # 0x1a
	.long	27                              # 0x1b
	.long	28                              # 0x1c
	.long	29                              # 0x1d
	.long	30                              # 0x1e
	.long	31                              # 0x1f
.LCPI0_4:
	.long	96                              # 0x60
	.long	97                              # 0x61
	.long	98                              # 0x62
	.long	99                              # 0x63
	.long	100                             # 0x64
	.long	101                             # 0x65
	.long	102                             # 0x66
	.long	103                             # 0x67
	.long	104                             # 0x68
	.long	105                             # 0x69
	.long	106                             # 0x6a
	.long	107                             # 0x6b
	.long	108                             # 0x6c
	.long	109                             # 0x6d
	.long	110                             # 0x6e
	.long	111                             # 0x6f
.LCPI0_5:
	.long	32                              # 0x20
	.long	33                              # 0x21
	.long	34                              # 0x22
	.long	35                              # 0x23
	.long	36                              # 0x24
	.long	37                              # 0x25
	.long	38                              # 0x26
	.long	39                              # 0x27
	.long	40                              # 0x28
	.long	41                              # 0x29
	.long	42                              # 0x2a
	.long	43                              # 0x2b
	.long	44                              # 0x2c
	.long	45                              # 0x2d
	.long	46                              # 0x2e
	.long	47                              # 0x2f
.LCPI0_6:
	.long	64                              # 0x40
	.long	65                              # 0x41
	.long	66                              # 0x42
	.long	67                              # 0x43
	.long	68                              # 0x44
	.long	69                              # 0x45
	.long	70                              # 0x46
	.long	71                              # 0x47
	.long	72                              # 0x48
	.long	73                              # 0x49
	.long	74                              # 0x4a
	.long	75                              # 0x4b
	.long	76                              # 0x4c
	.long	77                              # 0x4d
	.long	78                              # 0x4e
	.long	79                              # 0x4f
.LCPI0_7:
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
.LCPI0_8:
	.long	0x3f800000                      # float 1
	.text
	.globl	rms_norm_kernel_small
	.p2align	4
	.type	rms_norm_kernel_small,@function
rms_norm_kernel_small:                  # @rms_norm_kernel_small
.Lfunc_begin0:
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	.file	1 "/root/XSAI/Triton/triton-cpu/xsai" "rmsnorm.py"
	.loc	1 24 25 prologue_end            # rmsnorm.py:24:25
	vpbroadcastd	%r9d, %zmm1
	vpcmpgtd	.LCPI0_0(%rip), %zmm1, %k1
	kmovw	%k1, -6(%rsp)                   # 2-byte Spill
	vpcmpgtd	.LCPI0_1(%rip), %zmm1, %k5
	kmovw	%k5, -2(%rsp)                   # 2-byte Spill
	vpcmpgtd	.LCPI0_2(%rip), %zmm1, %k2
	vpcmpgtd	.LCPI0_3(%rip), %zmm1, %k6
	vpcmpgtd	.LCPI0_4(%rip), %zmm1, %k7
	vpcmpgtd	.LCPI0_5(%rip), %zmm1, %k4
	vpcmpgtd	.LCPI0_6(%rip), %zmm1, %k3
	vpcmpgtd	.LCPI0_7(%rip), %zmm1, %k1
	kmovw	%k1, -4(%rsp)                   # 2-byte Spill
	movl	8(%rsp), %eax
	.loc	1 27 36                         # rmsnorm.py:27:36
	imull	%eax, %ecx
	.loc	1 27 26 is_stmt 0               # rmsnorm.py:27:26
	movslq	%ecx, %rcx
	.loc	1 28 38 is_stmt 1               # rmsnorm.py:28:38
	imull	%eax, %r8d
	.loc	1 31 16                         # rmsnorm.py:31:16
	vmovups	(%rdi,%rcx,4), %zmm1 {%k1} {z}
	kmovq	%k3, %k1
	vmovups	256(%rdi,%rcx,4), %zmm2 {%k3} {z}
	vmovups	128(%rdi,%rcx,4), %zmm3 {%k4} {z}
	vmovups	384(%rdi,%rcx,4), %zmm4 {%k7} {z}
	vmovups	64(%rdi,%rcx,4), %zmm5 {%k6} {z}
	vmovups	320(%rdi,%rcx,4), %zmm6 {%k2} {z}
	vmovups	192(%rdi,%rcx,4), %zmm7 {%k5} {z}
	.loc	1 28 28                         # rmsnorm.py:28:28
	movslq	%r8d, %rax
	kmovw	-6(%rsp), %k3                   # 2-byte Reload
	.loc	1 31 16                         # rmsnorm.py:31:16
	vmovups	448(%rdi,%rcx,4), %zmm8 {%k3} {z}
	.loc	1 32 21                         # rmsnorm.py:32:21
	vbroadcastss	.LCPI0_8(%rip), %zmm9   # zmm9 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	vblendmps	448(%rdx), %zmm9, %zmm10 {%k3}
	vblendmps	384(%rdx), %zmm9, %zmm11 {%k7}
	vblendmps	320(%rdx), %zmm9, %zmm12 {%k2}
	kmovq	%k2, %k3
	vblendmps	256(%rdx), %zmm9, %zmm13 {%k1}
	kmovq	%k1, %k2
	vblendmps	192(%rdx), %zmm9, %zmm14 {%k5}
	vblendmps	128(%rdx), %zmm9, %zmm15 {%k4}
	vblendmps	64(%rdx), %zmm9, %zmm16 {%k6}
	kmovq	%k6, %k1
	kmovw	-4(%rsp), %k5                   # 2-byte Reload
	vmovups	(%rdx), %zmm9 {%k5}
	.loc	1 35 24                         # rmsnorm.py:35:24
	vmulps	%zmm8, %zmm8, %zmm17
.Ltmp0:
	.file	2 "/root/XSAI/Triton/triton-cpu/python/triton/language" "standard.py"
	.loc	2 286 36                        # standard.py:286:36 @[ rmsnorm.py:35:20 ]
	vfmadd231ps	%zmm7, %zmm7, %zmm17    # zmm17 = (zmm7 * zmm7) + zmm17
	vfmadd231ps	%zmm6, %zmm6, %zmm17    # zmm17 = (zmm6 * zmm6) + zmm17
	vfmadd231ps	%zmm5, %zmm5, %zmm17    # zmm17 = (zmm5 * zmm5) + zmm17
	vfmadd231ps	%zmm4, %zmm4, %zmm17    # zmm17 = (zmm4 * zmm4) + zmm17
	vfmadd231ps	%zmm3, %zmm3, %zmm17    # zmm17 = (zmm3 * zmm3) + zmm17
	vfmadd231ps	%zmm2, %zmm2, %zmm17    # zmm17 = (zmm2 * zmm2) + zmm17
	vfmadd231ps	%zmm1, %zmm1, %zmm17    # zmm17 = (zmm1 * zmm1) + zmm17
	vextractf64x4	$1, %zmm17, %ymm18
	vaddps	%zmm18, %zmm17, %zmm17
	vextractf32x4	$1, %ymm17, %xmm18
	vaddps	%xmm18, %xmm17, %xmm17
	vshufpd	$1, %xmm17, %xmm17, %xmm18      # xmm18 = xmm17[1,0]
	vaddps	%xmm18, %xmm17, %xmm17
	vmovshdup	%xmm17, %xmm18          # xmm18 = xmm17[1,1,3,3]
	vaddss	%xmm18, %xmm17, %xmm17
	vxorps	%xmm18, %xmm18, %xmm18
	vaddss	%xmm18, %xmm17, %xmm17
.Ltmp1:
	.loc	1 36 23                         # rmsnorm.py:36:23
	vcvtsi2ss	%r9d, %xmm19, %xmm18
	vdivss	%xmm18, %xmm17, %xmm17
	.loc	1 39 28                         # rmsnorm.py:39:28
	vaddss	%xmm17, %xmm0, %xmm0
	.loc	1 39 18 is_stmt 0               # rmsnorm.py:39:18
	vsqrtss	%xmm0, %xmm0, %xmm0
	vmovss	.LCPI0_8(%rip), %xmm17          # xmm17 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	.loc	1 40 20 is_stmt 1               # rmsnorm.py:40:20
	vdivss	%xmm0, %xmm17, %xmm0
	.loc	1 43 12                         # rmsnorm.py:43:12
	vbroadcastss	%xmm0, %zmm0
	vmulps	%zmm0, %zmm8, %zmm8
	.loc	1 44 17                         # rmsnorm.py:44:17
	vmulps	%zmm8, %zmm10, %zmm8
	.loc	1 43 12                         # rmsnorm.py:43:12
	vmulps	%zmm0, %zmm4, %zmm4
	.loc	1 44 17                         # rmsnorm.py:44:17
	vmulps	%zmm4, %zmm11, %zmm4
	.loc	1 43 12                         # rmsnorm.py:43:12
	vmulps	%zmm0, %zmm6, %zmm6
	.loc	1 44 17                         # rmsnorm.py:44:17
	vmulps	%zmm6, %zmm12, %zmm6
	.loc	1 43 12                         # rmsnorm.py:43:12
	vmulps	%zmm0, %zmm2, %zmm2
	.loc	1 44 17                         # rmsnorm.py:44:17
	vmulps	%zmm2, %zmm13, %zmm2
	.loc	1 43 12                         # rmsnorm.py:43:12
	vmulps	%zmm0, %zmm7, %zmm7
	.loc	1 44 17                         # rmsnorm.py:44:17
	vmulps	%zmm7, %zmm14, %zmm7
	.loc	1 43 12                         # rmsnorm.py:43:12
	vmulps	%zmm0, %zmm3, %zmm3
	.loc	1 44 17                         # rmsnorm.py:44:17
	vmulps	%zmm3, %zmm15, %zmm3
	.loc	1 43 12                         # rmsnorm.py:43:12
	vmulps	%zmm0, %zmm5, %zmm5
	.loc	1 44 17                         # rmsnorm.py:44:17
	vmulps	%zmm5, %zmm16, %zmm5
	.loc	1 43 12                         # rmsnorm.py:43:12
	vmulps	%zmm0, %zmm1, %zmm0
	.loc	1 44 17                         # rmsnorm.py:44:17
	vmulps	%zmm0, %zmm9, %zmm0
	kmovw	-6(%rsp), %k6                   # 2-byte Reload
	.loc	1 46 23                         # rmsnorm.py:46:23
	vmovups	%zmm8, 448(%rsi,%rax,4) {%k6}
	vmovups	%zmm4, 384(%rsi,%rax,4) {%k7}
	vmovups	%zmm6, 320(%rsi,%rax,4) {%k3}
	vmovups	%zmm2, 256(%rsi,%rax,4) {%k2}
	kmovw	-2(%rsp), %k2                   # 2-byte Reload
	vmovups	%zmm7, 192(%rsi,%rax,4) {%k2}
	vmovups	%zmm3, 128(%rsi,%rax,4) {%k4}
	vmovups	%zmm5, 64(%rsi,%rax,4) {%k1}
	vmovups	%zmm0, (%rsi,%rax,4) {%k5}
	.loc	1 46 4 is_stmt 0                # rmsnorm.py:46:4
	vzeroupper
	retq
.Ltmp2:
.Lfunc_end0:
	.size	rms_norm_kernel_small, .Lfunc_end0-rms_norm_kernel_small
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
	.byte	1                               # Abbrev [1] 0xb:0x4c DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x30:0x26 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	42                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x41:0x14 DW_TAG_inlined_subroutine
	.long	42                              # DW_AT_abstract_origin
	.quad	.Ltmp0                          # DW_AT_low_pc
	.long	.Ltmp1-.Ltmp0                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	35                              # DW_AT_call_line
	.byte	20                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        # string offset=0
.Linfo_string1:
	.asciz	"rmsnorm.py"                    # string offset=7
.Linfo_string2:
	.asciz	"/root/XSAI/Triton/triton-cpu/xsai" # string offset=18
.Linfo_string3:
	.asciz	"rms_norm_kernel_small"         # string offset=52
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
