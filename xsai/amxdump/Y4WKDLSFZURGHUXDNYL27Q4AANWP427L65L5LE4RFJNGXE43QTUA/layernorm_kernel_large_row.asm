	.file	"LLVMDialectModule"
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0                          # -- Begin function layernorm_kernel_large_row
.LCPI0_0:
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_8:
	.long	0x3f800000                      # float 1
	.section	.rodata.cst16,"aM",@progbits,16
.LCPI0_9:
	.byte	32                              # 0x20
	.byte	33                              # 0x21
	.byte	34                              # 0x22
	.byte	35                              # 0x23
	.byte	36                              # 0x24
	.byte	37                              # 0x25
	.byte	38                              # 0x26
	.byte	39                              # 0x27
	.byte	40                              # 0x28
	.byte	41                              # 0x29
	.byte	42                              # 0x2a
	.byte	43                              # 0x2b
	.byte	44                              # 0x2c
	.byte	45                              # 0x2d
	.byte	46                              # 0x2e
	.byte	47                              # 0x2f
.LCPI0_10:
	.byte	96                              # 0x60
	.byte	97                              # 0x61
	.byte	98                              # 0x62
	.byte	99                              # 0x63
	.byte	100                             # 0x64
	.byte	101                             # 0x65
	.byte	102                             # 0x66
	.byte	103                             # 0x67
	.byte	104                             # 0x68
	.byte	105                             # 0x69
	.byte	106                             # 0x6a
	.byte	107                             # 0x6b
	.byte	108                             # 0x6c
	.byte	109                             # 0x6d
	.byte	110                             # 0x6e
	.byte	111                             # 0x6f
.LCPI0_11:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
.LCPI0_12:
	.byte	64                              # 0x40
	.byte	65                              # 0x41
	.byte	66                              # 0x42
	.byte	67                              # 0x43
	.byte	68                              # 0x44
	.byte	69                              # 0x45
	.byte	70                              # 0x46
	.byte	71                              # 0x47
	.byte	72                              # 0x48
	.byte	73                              # 0x49
	.byte	74                              # 0x4a
	.byte	75                              # 0x4b
	.byte	76                              # 0x4c
	.byte	77                              # 0x4d
	.byte	78                              # 0x4e
	.byte	79                              # 0x4f
.LCPI0_13:
	.byte	48                              # 0x30
	.byte	49                              # 0x31
	.byte	50                              # 0x32
	.byte	51                              # 0x33
	.byte	52                              # 0x34
	.byte	53                              # 0x35
	.byte	54                              # 0x36
	.byte	55                              # 0x37
	.byte	56                              # 0x38
	.byte	57                              # 0x39
	.byte	58                              # 0x3a
	.byte	59                              # 0x3b
	.byte	60                              # 0x3c
	.byte	61                              # 0x3d
	.byte	62                              # 0x3e
	.byte	63                              # 0x3f
.LCPI0_14:
	.byte	112                             # 0x70
	.byte	113                             # 0x71
	.byte	114                             # 0x72
	.byte	115                             # 0x73
	.byte	116                             # 0x74
	.byte	117                             # 0x75
	.byte	118                             # 0x76
	.byte	119                             # 0x77
	.byte	120                             # 0x78
	.byte	121                             # 0x79
	.byte	122                             # 0x7a
	.byte	123                             # 0x7b
	.byte	124                             # 0x7c
	.byte	125                             # 0x7d
	.byte	126                             # 0x7e
	.byte	127                             # 0x7f
.LCPI0_15:
	.byte	16                              # 0x10
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	24                              # 0x18
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
.LCPI0_16:
	.byte	80                              # 0x50
	.byte	81                              # 0x51
	.byte	82                              # 0x52
	.byte	83                              # 0x53
	.byte	84                              # 0x54
	.byte	85                              # 0x55
	.byte	86                              # 0x56
	.byte	87                              # 0x57
	.byte	88                              # 0x58
	.byte	89                              # 0x59
	.byte	90                              # 0x5a
	.byte	91                              # 0x5b
	.byte	92                              # 0x5c
	.byte	93                              # 0x5d
	.byte	94                              # 0x5e
	.byte	95                              # 0x5f
	.text
	.globl	layernorm_kernel_large_row
	.p2align	4
	.type	layernorm_kernel_large_row,@function
layernorm_kernel_large_row:             # @layernorm_kernel_large_row
.Lfunc_begin0:
	.file	1 "/root/XSAI/Triton/triton-cpu/xsai" "layernorm.py"
	.loc	1 51 0                          # layernorm.py:51:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	movl	8(%rsp), %eax
	movl	16(%rsp), %r10d
.Ltmp0:
	.loc	1 67 42 prologue_end            # layernorm.py:67:42
	imull	%r10d, %r8d
	.loc	1 67 32 is_stmt 0               # layernorm.py:67:32
	movslq	%r8d, %r8
	leaq	(%rdi,%r8,4), %rdi
	.loc	1 76 29 is_stmt 1               # layernorm.py:76:29
	vpbroadcastd	%eax, %zmm1
	.loc	1 74 30                         # layernorm.py:74:30
	testl	%eax, %eax
	jle	.LBB0_1
# %bb.2:                                # %.lr.ph.preheader
	.loc	1 0 30 is_stmt 0                # layernorm.py:0:30
	xorl	%r8d, %r8d
	vxorps	%xmm4, %xmm4, %xmm4
	vpmovsxbd	.LCPI0_9(%rip), %zmm5   # zmm5 = [32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47]
	vpmovsxbd	.LCPI0_10(%rip), %zmm6  # zmm6 = [96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111]
	vpmovsxbd	.LCPI0_11(%rip), %zmm7  # zmm7 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	vpmovsxbd	.LCPI0_12(%rip), %zmm8  # zmm8 = [64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79]
	vpmovsxbd	.LCPI0_13(%rip), %zmm9  # zmm9 = [48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63]
	vpmovsxbd	.LCPI0_14(%rip), %zmm10 # zmm10 = [112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127]
	vpmovsxbd	.LCPI0_15(%rip), %zmm11 # zmm11 = [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
	vpmovsxbd	.LCPI0_16(%rip), %zmm12 # zmm12 = [80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95]
	vxorps	%xmm3, %xmm3, %xmm3
	vxorps	%xmm2, %xmm2, %xmm2
	.p2align	4
.LBB0_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	.loc	1 75 26 is_stmt 1               # layernorm.py:75:26
	vpbroadcastd	%r8d, %zmm13
	vpord	%zmm5, %zmm13, %zmm14
	vpord	%zmm6, %zmm13, %zmm15
	vpord	%zmm7, %zmm13, %zmm16
	vpord	%zmm8, %zmm13, %zmm17
	vpord	%zmm9, %zmm13, %zmm18
	vpord	%zmm10, %zmm13, %zmm19
	vpord	%zmm11, %zmm13, %zmm20
	vpord	%zmm12, %zmm13, %zmm13
	.loc	1 76 29                         # layernorm.py:76:29
	vpcmpgtd	%zmm13, %zmm1, %k1
	vpcmpgtd	%zmm19, %zmm1, %k2
	vpcmpgtd	%zmm18, %zmm1, %k3
	vpcmpgtd	%zmm17, %zmm1, %k4
	vpcmpgtd	%zmm16, %zmm1, %k5
	vpcmpgtd	%zmm15, %zmm1, %k6
	vpcmpgtd	%zmm14, %zmm1, %k7
	.loc	1 77 40                         # layernorm.py:77:40
	movslq	%r8d, %r8
	.loc	1 77 24 is_stmt 0               # layernorm.py:77:24
	vmovups	128(%rdi,%r8,4), %zmm13 {%k7} {z}
	vmovups	384(%rdi,%r8,4), %zmm14 {%k6} {z}
	vmovups	(%rdi,%r8,4), %zmm15 {%k5} {z}
	vmovups	256(%rdi,%r8,4), %zmm16 {%k4} {z}
	vmovups	192(%rdi,%r8,4), %zmm17 {%k3} {z}
	vmovups	448(%rdi,%r8,4), %zmm18 {%k2} {z}
	.loc	1 76 29 is_stmt 1               # layernorm.py:76:29
	vpcmpgtd	%zmm20, %zmm1, %k2
	.loc	1 77 24                         # layernorm.py:77:24
	vmovups	64(%rdi,%r8,4), %zmm19 {%k2} {z}
	vmovups	320(%rdi,%r8,4), %zmm20 {%k1} {z}
.Ltmp1:
	.file	2 "/root/XSAI/Triton/triton-cpu/python/triton/language" "standard.py"
	.loc	2 286 36                        # standard.py:286:36 @[ layernorm.py:78:26 ]
	vaddps	%zmm20, %zmm19, %zmm21
	vaddps	%zmm18, %zmm17, %zmm22
	vaddps	%zmm22, %zmm21, %zmm21
	vaddps	%zmm16, %zmm15, %zmm22
	vaddps	%zmm14, %zmm13, %zmm23
	vaddps	%zmm23, %zmm22, %zmm22
	vaddps	%zmm21, %zmm22, %zmm21
	vextractf64x4	$1, %zmm21, %ymm22
	vaddps	%zmm22, %zmm21, %zmm21
	vextractf32x4	$1, %ymm21, %xmm22
	vaddps	%xmm22, %xmm21, %xmm21
	vshufpd	$1, %xmm21, %xmm21, %xmm22      # xmm22 = xmm21[1,0]
	vaddps	%xmm22, %xmm21, %xmm21
	vmovshdup	%xmm21, %xmm22          # xmm22 = xmm21[1,1,3,3]
	vaddss	%xmm22, %xmm21, %xmm21
	vaddss	%xmm4, %xmm21, %xmm21
.Ltmp2:
	.loc	1 78 19                         # layernorm.py:78:19
	vaddss	%xmm21, %xmm2, %xmm2
	.loc	1 79 37                         # layernorm.py:79:37
	vmulps	%zmm18, %zmm18, %zmm18
.Ltmp3:
	.loc	2 286 36                        # standard.py:286:36 @[ layernorm.py:79:29 ]
	vfmadd231ps	%zmm17, %zmm17, %zmm18  # zmm18 = (zmm17 * zmm17) + zmm18
	vfmadd231ps	%zmm20, %zmm20, %zmm18  # zmm18 = (zmm20 * zmm20) + zmm18
	vfmadd231ps	%zmm19, %zmm19, %zmm18  # zmm18 = (zmm19 * zmm19) + zmm18
	vfmadd231ps	%zmm14, %zmm14, %zmm18  # zmm18 = (zmm14 * zmm14) + zmm18
	vfmadd231ps	%zmm13, %zmm13, %zmm18  # zmm18 = (zmm13 * zmm13) + zmm18
	vfmadd231ps	%zmm16, %zmm16, %zmm18  # zmm18 = (zmm16 * zmm16) + zmm18
	vfmadd231ps	%zmm15, %zmm15, %zmm18  # zmm18 = (zmm15 * zmm15) + zmm18
	vextractf64x4	$1, %zmm18, %ymm13
	vaddps	%zmm13, %zmm18, %zmm13
	vextractf128	$1, %ymm13, %xmm14
	vaddps	%xmm14, %xmm13, %xmm13
	vshufpd	$1, %xmm13, %xmm13, %xmm14      # xmm14 = xmm13[1,0]
	vaddps	%xmm14, %xmm13, %xmm13
	vmovshdup	%xmm13, %xmm14          # xmm14 = xmm13[1,1,3,3]
	vaddss	%xmm14, %xmm13, %xmm13
	vaddss	%xmm4, %xmm13, %xmm13
.Ltmp4:
	.loc	1 79 22                         # layernorm.py:79:22
	vaddss	%xmm3, %xmm13, %xmm3
	.loc	1 74 30                         # layernorm.py:74:30
	subl	$-128, %r8d
	cmpl	%eax, %r8d
	jl	.LBB0_3
# %bb.4:                                # %._crit_edge
	testl	%eax, %eax
	.loc	1 86 30                         # layernorm.py:86:30
	jg	.LBB0_5
	jmp	.LBB0_7
.LBB0_1:
	.loc	1 0 30 is_stmt 0                # layernorm.py:0:30
	vxorps	%xmm2, %xmm2, %xmm2
	vxorps	%xmm3, %xmm3, %xmm3
	.loc	1 74 30 is_stmt 1               # layernorm.py:74:30
	testl	%eax, %eax
	.loc	1 86 30                         # layernorm.py:86:30
	jle	.LBB0_7
.LBB0_5:                                # %.lr.ph6.preheader
	.loc	1 0 30 is_stmt 0                # layernorm.py:0:30
	imull	%r9d, %r10d
	movslq	%r10d, %r8
	leaq	(%rsi,%r8,4), %rsi
	vcvtsi2ss	%eax, %xmm24, %xmm4
	vdivss	%xmm4, %xmm2, %xmm2
	vdivss	%xmm4, %xmm3, %xmm3
	vfnmadd231ss	%xmm2, %xmm2, %xmm3     # xmm3 = -(xmm2 * xmm2) + xmm3
	vaddss	%xmm3, %xmm0, %xmm0
	vsqrtss	%xmm0, %xmm0, %xmm0
	vmovss	.LCPI0_8(%rip), %xmm3           # xmm3 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	vdivss	%xmm0, %xmm3, %xmm3
	vbroadcastss	%xmm2, %zmm0
	vbroadcastss	%xmm3, %zmm2
	xorl	%r8d, %r8d
	vpmovsxbd	.LCPI0_12(%rip), %zmm3  # zmm3 = [64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79]
	vpmovsxbd	.LCPI0_13(%rip), %zmm4  # zmm4 = [48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63]
	vpmovsxbd	.LCPI0_9(%rip), %zmm5   # zmm5 = [32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47]
	vpmovsxbd	.LCPI0_15(%rip), %zmm6  # zmm6 = [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
	vpmovsxbd	.LCPI0_11(%rip), %zmm7  # zmm7 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	vpmovsxbd	.LCPI0_16(%rip), %zmm8  # zmm8 = [80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95]
	vpmovsxbd	.LCPI0_10(%rip), %zmm9  # zmm9 = [96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111]
	vpmovsxbd	.LCPI0_14(%rip), %zmm10 # zmm10 = [112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127]
	vbroadcastss	.LCPI0_8(%rip), %zmm11  # zmm11 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	.p2align	4
.LBB0_6:                                # %.lr.ph6
                                        # =>This Inner Loop Header: Depth=1
	.loc	1 87 26 is_stmt 1               # layernorm.py:87:26
	vpbroadcastd	%r8d, %zmm12
	vpord	%zmm3, %zmm12, %zmm13
	vpord	%zmm4, %zmm12, %zmm14
	vpord	%zmm5, %zmm12, %zmm15
	vpord	%zmm6, %zmm12, %zmm16
	vpord	%zmm7, %zmm12, %zmm17
	vpord	%zmm8, %zmm12, %zmm18
	vpord	%zmm9, %zmm12, %zmm19
	vpord	%zmm10, %zmm12, %zmm12
	.loc	1 88 29                         # layernorm.py:88:29
	vpcmpgtd	%zmm12, %zmm1, %k1
	kmovw	%k1, -8(%rsp)                   # 2-byte Spill
	vpcmpgtd	%zmm19, %zmm1, %k7
	kmovw	%k7, -10(%rsp)                  # 2-byte Spill
	vpcmpgtd	%zmm18, %zmm1, %k6
	vpcmpgtd	%zmm17, %zmm1, %k5
	vpcmpgtd	%zmm16, %zmm1, %k3
	vpcmpgtd	%zmm15, %zmm1, %k2
	kmovw	%k2, -6(%rsp)                   # 2-byte Spill
	vpcmpgtd	%zmm14, %zmm1, %k1
	vpcmpgtd	%zmm13, %zmm1, %k4
	kmovw	%k4, -2(%rsp)                   # 2-byte Spill
	.loc	1 90 36                         # layernorm.py:90:36
	movslq	%r8d, %r8
	.loc	1 90 20 is_stmt 0               # layernorm.py:90:20
	vmovups	256(%rdi,%r8,4), %zmm12 {%k4} {z}
	vmovups	192(%rdi,%r8,4), %zmm13 {%k1} {z}
	vmovups	128(%rdi,%r8,4), %zmm14 {%k2} {z}
	vmovups	64(%rdi,%r8,4), %zmm15 {%k3} {z}
	vmovups	(%rdi,%r8,4), %zmm16 {%k5} {z}
	vmovups	320(%rdi,%r8,4), %zmm17 {%k6} {z}
	vmovups	384(%rdi,%r8,4), %zmm18 {%k7} {z}
	kmovw	-8(%rsp), %k7                   # 2-byte Reload
	vmovups	448(%rdi,%r8,4), %zmm19 {%k7} {z}
	.loc	1 91 24 is_stmt 1               # layernorm.py:91:24
	vblendmps	256(%rdx,%r8,4), %zmm11, %zmm20 {%k4}
	vblendmps	192(%rdx,%r8,4), %zmm11, %zmm21 {%k1}
	kmovw	%k1, -4(%rsp)                   # 2-byte Spill
	vblendmps	128(%rdx,%r8,4), %zmm11, %zmm22 {%k2}
	vblendmps	64(%rdx,%r8,4), %zmm11, %zmm23 {%k3}
	kmovq	%k3, %k2
	vblendmps	(%rdx,%r8,4), %zmm11, %zmm24 {%k5}
	kmovq	%k6, %k3
	vblendmps	320(%rdx,%r8,4), %zmm11, %zmm25 {%k6}
	kmovw	-10(%rsp), %k6                  # 2-byte Reload
	vblendmps	384(%rdx,%r8,4), %zmm11, %zmm26 {%k6}
	vblendmps	448(%rdx,%r8,4), %zmm11, %zmm27 {%k7}
	.loc	1 92 23                         # layernorm.py:92:23
	vmovups	256(%rcx,%r8,4), %zmm28 {%k4} {z}
	.loc	1 94 17                         # layernorm.py:94:17
	vsubps	%zmm0, %zmm12, %zmm12
	.loc	1 94 25 is_stmt 0               # layernorm.py:94:25
	vmulps	%zmm12, %zmm2, %zmm12
	.loc	1 95 24 is_stmt 1               # layernorm.py:95:24
	vfmadd213ps	%zmm28, %zmm20, %zmm12  # zmm12 = (zmm20 * zmm12) + zmm28
	.loc	1 92 23                         # layernorm.py:92:23
	vmovups	192(%rcx,%r8,4), %zmm20 {%k1} {z}
	.loc	1 94 17                         # layernorm.py:94:17
	vsubps	%zmm0, %zmm13, %zmm13
	.loc	1 94 25 is_stmt 0               # layernorm.py:94:25
	vmulps	%zmm13, %zmm2, %zmm13
	.loc	1 95 24 is_stmt 1               # layernorm.py:95:24
	vfmadd213ps	%zmm20, %zmm21, %zmm13  # zmm13 = (zmm21 * zmm13) + zmm20
	kmovw	-6(%rsp), %k6                   # 2-byte Reload
	.loc	1 92 23                         # layernorm.py:92:23
	vmovups	128(%rcx,%r8,4), %zmm20 {%k6} {z}
	vmovups	64(%rcx,%r8,4), %zmm21 {%k2} {z}
	kmovq	%k2, %k7
	.loc	1 94 17                         # layernorm.py:94:17
	vsubps	%zmm0, %zmm14, %zmm14
	.loc	1 94 25 is_stmt 0               # layernorm.py:94:25
	vmulps	%zmm14, %zmm2, %zmm14
	.loc	1 95 24 is_stmt 1               # layernorm.py:95:24
	vfmadd213ps	%zmm20, %zmm22, %zmm14  # zmm14 = (zmm22 * zmm14) + zmm20
	.loc	1 94 17                         # layernorm.py:94:17
	vsubps	%zmm0, %zmm15, %zmm15
	.loc	1 94 25 is_stmt 0               # layernorm.py:94:25
	vmulps	%zmm15, %zmm2, %zmm15
	.loc	1 95 24 is_stmt 1               # layernorm.py:95:24
	vfmadd213ps	%zmm21, %zmm23, %zmm15  # zmm15 = (zmm23 * zmm15) + zmm21
	.loc	1 92 23                         # layernorm.py:92:23
	vmovups	(%rcx,%r8,4), %zmm20 {%k5} {z}
	.loc	1 94 17                         # layernorm.py:94:17
	vsubps	%zmm0, %zmm16, %zmm16
	.loc	1 94 25 is_stmt 0               # layernorm.py:94:25
	vmulps	%zmm16, %zmm2, %zmm16
	.loc	1 95 24 is_stmt 1               # layernorm.py:95:24
	vfmadd213ps	%zmm20, %zmm24, %zmm16  # zmm16 = (zmm24 * zmm16) + zmm20
	.loc	1 92 23                         # layernorm.py:92:23
	vmovups	320(%rcx,%r8,4), %zmm20 {%k3} {z}
	.loc	1 94 17                         # layernorm.py:94:17
	vsubps	%zmm0, %zmm17, %zmm17
	.loc	1 94 25 is_stmt 0               # layernorm.py:94:25
	vmulps	%zmm17, %zmm2, %zmm17
	.loc	1 95 24 is_stmt 1               # layernorm.py:95:24
	vfmadd213ps	%zmm20, %zmm25, %zmm17  # zmm17 = (zmm25 * zmm17) + zmm20
	kmovw	-10(%rsp), %k2                  # 2-byte Reload
	.loc	1 92 23                         # layernorm.py:92:23
	vmovups	384(%rcx,%r8,4), %zmm20 {%k2} {z}
	.loc	1 94 17                         # layernorm.py:94:17
	vsubps	%zmm0, %zmm18, %zmm18
	.loc	1 94 25 is_stmt 0               # layernorm.py:94:25
	vmulps	%zmm18, %zmm2, %zmm18
	.loc	1 95 24 is_stmt 1               # layernorm.py:95:24
	vfmadd213ps	%zmm20, %zmm26, %zmm18  # zmm18 = (zmm26 * zmm18) + zmm20
	kmovw	-8(%rsp), %k1                   # 2-byte Reload
	.loc	1 92 23                         # layernorm.py:92:23
	vmovups	448(%rcx,%r8,4), %zmm20 {%k1} {z}
	.loc	1 94 17                         # layernorm.py:94:17
	vsubps	%zmm0, %zmm19, %zmm19
	.loc	1 94 25 is_stmt 0               # layernorm.py:94:25
	vmulps	%zmm19, %zmm2, %zmm19
	.loc	1 95 24 is_stmt 1               # layernorm.py:95:24
	vfmadd213ps	%zmm20, %zmm27, %zmm19  # zmm19 = (zmm27 * zmm19) + zmm20
	kmovw	-2(%rsp), %k4                   # 2-byte Reload
	.loc	1 97 47                         # layernorm.py:97:47
	vmovups	%zmm12, 256(%rsi,%r8,4) {%k4}
	kmovw	-4(%rsp), %k4                   # 2-byte Reload
	vmovups	%zmm13, 192(%rsi,%r8,4) {%k4}
	vmovups	%zmm14, 128(%rsi,%r8,4) {%k6}
	vmovups	%zmm15, 64(%rsi,%r8,4) {%k7}
	vmovups	%zmm16, (%rsi,%r8,4) {%k5}
	vmovups	%zmm17, 320(%rsi,%r8,4) {%k3}
	vmovups	%zmm18, 384(%rsi,%r8,4) {%k2}
	vmovups	%zmm19, 448(%rsi,%r8,4) {%k1}
	.loc	1 86 30                         # layernorm.py:86:30
	subl	$-128, %r8d
	cmpl	%eax, %r8d
	jl	.LBB0_6
.LBB0_7:                                # %._crit_edge7
	.loc	1 86 4 is_stmt 0                # layernorm.py:86:4
	vzeroupper
	retq
.Ltmp5:
.Lfunc_end0:
	.size	layernorm_kernel_large_row, .Lfunc_end0-layernorm_kernel_large_row
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
	.byte	78                              # DW_AT_call_line
	.byte	26                              # DW_AT_call_column
	.byte	4                               # Abbrev [4] 0x55:0x14 DW_TAG_inlined_subroutine
	.long	42                              # DW_AT_abstract_origin
	.quad	.Ltmp3                          # DW_AT_low_pc
	.long	.Ltmp4-.Ltmp3                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	79                              # DW_AT_call_line
	.byte	29                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        # string offset=0
.Linfo_string1:
	.asciz	"layernorm.py"                  # string offset=7
.Linfo_string2:
	.asciz	"/root/XSAI/Triton/triton-cpu/xsai" # string offset=20
.Linfo_string3:
	.asciz	"layernorm_kernel_large_row"    # string offset=54
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
