	.file	"LLVMDialectModule"
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0                          # -- Begin function relu_kernel
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
.LCPI0_4:
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
	.text
	.globl	relu_kernel
	.p2align	4
	.type	relu_kernel,@function
relu_kernel:                            # @relu_kernel
.Lfunc_begin0:
	.file	1 "/root/XSAI/Triton/triton-cpu/xsai" "relu.py"
	.loc	1 6 0                           # relu.py:6:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	movl	8(%rsp), %r10d
.Ltmp0:
	.loc	1 22 43 prologue_end            # relu.py:22:43
	vpbroadcastd	%r10d, %zmm0
	vpslld	$7, %zmm0, %zmm0
	vpord	.LCPI0_0(%rip), %zmm0, %zmm1
	vpord	.LCPI0_1(%rip), %zmm0, %zmm2
	vpord	.LCPI0_2(%rip), %zmm0, %zmm3
	vpord	.LCPI0_3(%rip), %zmm0, %zmm4
	vpord	.LCPI0_4(%rip), %zmm0, %zmm5
	vpord	.LCPI0_5(%rip), %zmm0, %zmm6
	vpord	.LCPI0_6(%rip), %zmm0, %zmm7
	.loc	1 22 30 is_stmt 0               # relu.py:22:30
	shll	$7, %r10d
	.loc	1 22 43                         # relu.py:22:43
	vpord	.LCPI0_7(%rip), %zmm0, %zmm0
	.loc	1 25 36 is_stmt 1               # relu.py:25:36
	imull	%r9d, %edx
	.loc	1 25 26 is_stmt 0               # relu.py:25:26
	movslq	%edx, %rax
	leaq	(%rdi,%rax,4), %rdx
	.loc	1 26 38 is_stmt 1               # relu.py:26:38
	imull	%r9d, %ecx
	.loc	1 26 28 is_stmt 0               # relu.py:26:28
	movslq	%ecx, %rax
	leaq	(%rsi,%rax,4), %rax
	.loc	1 29 25 is_stmt 1               # relu.py:29:25
	vpbroadcastd	%r8d, %zmm8
	vpcmpgtd	%zmm0, %zmm8, %k1
	vpcmpgtd	%zmm6, %zmm8, %k2
	kmovw	%k2, -2(%rsp)                   # 2-byte Spill
	vpcmpgtd	%zmm5, %zmm8, %k3
	vpcmpgtd	%zmm4, %zmm8, %k4
	vpcmpgtd	%zmm3, %zmm8, %k5
	vpcmpgtd	%zmm2, %zmm8, %k6
	vpcmpgtd	%zmm1, %zmm8, %k7
	.loc	1 25 55                         # relu.py:25:55
	movslq	%r10d, %rcx
	.loc	1 32 23                         # relu.py:32:23
	vmovups	448(%rdx,%rcx,4), %zmm0 {%k7} {z}
	vmovups	384(%rdx,%rcx,4), %zmm1 {%k6} {z}
	vmovups	320(%rdx,%rcx,4), %zmm2 {%k5} {z}
	vmovups	256(%rdx,%rcx,4), %zmm3 {%k4} {z}
	vmovups	192(%rdx,%rcx,4), %zmm4 {%k3} {z}
	vmovups	128(%rdx,%rcx,4), %zmm5 {%k2} {z}
	.loc	1 29 25                         # relu.py:29:25
	vpcmpgtd	%zmm7, %zmm8, %k2
	.loc	1 32 23                         # relu.py:32:23
	vmovups	64(%rdx,%rcx,4), %zmm6 {%k2} {z}
	vmovups	(%rdx,%rcx,4), %zmm7 {%k1} {z}
	vpxor	%xmm8, %xmm8, %xmm8
	.loc	1 33 39                         # relu.py:33:39
	vmaxps	%zmm8, %zmm7, %zmm7
	vmaxps	%zmm8, %zmm6, %zmm6
	vmaxps	%zmm8, %zmm5, %zmm5
	vmaxps	%zmm8, %zmm4, %zmm4
	vmaxps	%zmm8, %zmm3, %zmm3
	vmaxps	%zmm8, %zmm2, %zmm2
	vmaxps	%zmm8, %zmm1, %zmm1
	vmaxps	%zmm8, %zmm0, %zmm0
	.loc	1 34 23                         # relu.py:34:23
	vmovups	%zmm0, 448(%rax,%rcx,4) {%k7}
	vmovups	%zmm1, 384(%rax,%rcx,4) {%k6}
	vmovups	%zmm2, 320(%rax,%rcx,4) {%k5}
	vmovups	%zmm3, 256(%rax,%rcx,4) {%k4}
	vmovups	%zmm4, 192(%rax,%rcx,4) {%k3}
	kmovw	-2(%rsp), %k3                   # 2-byte Reload
	vmovups	%zmm5, 128(%rax,%rcx,4) {%k3}
	vmovups	%zmm6, 64(%rax,%rcx,4) {%k2}
	vmovups	%zmm7, (%rax,%rcx,4) {%k1}
	.loc	1 34 4 is_stmt 0                # relu.py:34:4
	vzeroupper
	retq
.Ltmp1:
.Lfunc_end0:
	.size	relu_kernel, .Lfunc_end0-relu_kernel
	.cfi_endproc
                                        # -- End function
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	0                               # DW_CHILDREN_no
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x1f DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	2                               # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        # string offset=0
.Linfo_string1:
	.asciz	"relu.py"                       # string offset=7
.Linfo_string2:
	.asciz	"/root/XSAI/Triton/triton-cpu/xsai" # string offset=15
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
