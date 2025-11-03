	.file	"LLVMDialectModule"
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0                          # -- Begin function rms_norm_kernel_large_row
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
.LCPI0_1:
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
.LCPI0_2:
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
.LCPI0_3:
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
.LCPI0_4:
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
.LCPI0_5:
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
.LCPI0_6:
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
.LCPI0_7:
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_8:
	.long	0x3f800000                      # float 1
	.section	.rodata.cst16,"aM",@progbits,16
.LCPI0_9:
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
.LCPI0_10:
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
.LCPI0_11:
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
.LCPI0_12:
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
.LCPI0_13:
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
.LCPI0_14:
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
.LCPI0_15:
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
.LCPI0_16:
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
	.text
	.globl	rms_norm_kernel_large_row
	.p2align	4
	.type	rms_norm_kernel_large_row,@function
rms_norm_kernel_large_row:              # @rms_norm_kernel_large_row
.Lfunc_begin0:
	.file	1 "/root/XSAI/Triton/triton-cpu/xsai" "rmsnorm.py"
	.loc	1 50 0                          # rmsnorm.py:50:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	movl	8(%rsp), %r10d
.Ltmp0:
	.loc	1 66 42 prologue_end            # rmsnorm.py:66:42
	imull	%r10d, %ecx
	.loc	1 66 32 is_stmt 0               # rmsnorm.py:66:32
	movslq	%ecx, %rax
	leaq	(%rdi,%rax,4), %rax
	.loc	1 74 29 is_stmt 1               # rmsnorm.py:74:29
	vpbroadcastd	%r9d, %zmm1
	.loc	1 72 30                         # rmsnorm.py:72:30
	testl	%r9d, %r9d
	jle	.LBB0_1
# %bb.2:                                # %.lr.ph.preheader
	.loc	1 0 30 is_stmt 0                # rmsnorm.py:0:30
	xorl	%ecx, %ecx
	vxorps	%xmm3, %xmm3, %xmm3
	vpmovsxbd	.LCPI0_9(%rip), %zmm4   # zmm4 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	vpmovsxbd	.LCPI0_10(%rip), %zmm5  # zmm5 = [64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79]
	vpmovsxbd	.LCPI0_11(%rip), %zmm6  # zmm6 = [32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47]
	vpmovsxbd	.LCPI0_12(%rip), %zmm7  # zmm7 = [96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111]
	vpmovsxbd	.LCPI0_13(%rip), %zmm8  # zmm8 = [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
	vpmovsxbd	.LCPI0_14(%rip), %zmm9  # zmm9 = [80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95]
	vpmovsxbd	.LCPI0_15(%rip), %zmm10 # zmm10 = [48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63]
	vpmovsxbd	.LCPI0_16(%rip), %zmm11 # zmm11 = [112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127]
	vxorps	%xmm2, %xmm2, %xmm2
	.p2align	4
.LBB0_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	.loc	1 73 26 is_stmt 1               # rmsnorm.py:73:26
	vpbroadcastd	%ecx, %zmm12
	vpord	%zmm4, %zmm12, %zmm13
	vpord	%zmm5, %zmm12, %zmm14
	vpord	%zmm6, %zmm12, %zmm15
	vpord	%zmm7, %zmm12, %zmm16
	vpord	%zmm8, %zmm12, %zmm17
	vpord	%zmm9, %zmm12, %zmm18
	vpord	%zmm10, %zmm12, %zmm19
	vpord	%zmm11, %zmm12, %zmm12
	.loc	1 74 29                         # rmsnorm.py:74:29
	vpcmpgtd	%zmm12, %zmm1, %k1
	kmovw	%k1, -6(%rsp)                   # 2-byte Spill
	vpcmpgtd	%zmm19, %zmm1, %k2
	vpcmpgtd	%zmm18, %zmm1, %k3
	vpcmpgtd	%zmm17, %zmm1, %k4
	vpcmpgtd	%zmm16, %zmm1, %k5
	vpcmpgtd	%zmm15, %zmm1, %k6
	vpcmpgtd	%zmm14, %zmm1, %k7
	vpcmpgtd	%zmm13, %zmm1, %k1
	.loc	1 75 40                         # rmsnorm.py:75:40
	movslq	%ecx, %rcx
	.loc	1 75 24 is_stmt 0               # rmsnorm.py:75:24
	vmovups	(%rax,%rcx,4), %zmm12 {%k1} {z}
	vmovups	256(%rax,%rcx,4), %zmm13 {%k7} {z}
	vmovups	128(%rax,%rcx,4), %zmm14 {%k6} {z}
	vmovups	384(%rax,%rcx,4), %zmm15 {%k5} {z}
	vmovups	64(%rax,%rcx,4), %zmm16 {%k4} {z}
	vmovups	320(%rax,%rcx,4), %zmm17 {%k3} {z}
	vmovups	192(%rax,%rcx,4), %zmm18 {%k2} {z}
	kmovw	-6(%rsp), %k1                   # 2-byte Reload
	vmovups	448(%rax,%rcx,4), %zmm19 {%k1} {z}
	.loc	1 76 33 is_stmt 1               # rmsnorm.py:76:33
	vmulps	%zmm19, %zmm19, %zmm19
.Ltmp1:
	.file	2 "/root/XSAI/Triton/triton-cpu/python/triton/language" "standard.py"
	.loc	2 286 36                        # standard.py:286:36 @[ rmsnorm.py:76:25 ]
	vfmadd231ps	%zmm18, %zmm18, %zmm19  # zmm19 = (zmm18 * zmm18) + zmm19
	vfmadd231ps	%zmm17, %zmm17, %zmm19  # zmm19 = (zmm17 * zmm17) + zmm19
	vfmadd231ps	%zmm16, %zmm16, %zmm19  # zmm19 = (zmm16 * zmm16) + zmm19
	vfmadd231ps	%zmm15, %zmm15, %zmm19  # zmm19 = (zmm15 * zmm15) + zmm19
	vfmadd231ps	%zmm14, %zmm14, %zmm19  # zmm19 = (zmm14 * zmm14) + zmm19
	vfmadd231ps	%zmm13, %zmm13, %zmm19  # zmm19 = (zmm13 * zmm13) + zmm19
	vfmadd231ps	%zmm12, %zmm12, %zmm19  # zmm19 = (zmm12 * zmm12) + zmm19
	vextractf64x4	$1, %zmm19, %ymm12
	vaddps	%zmm12, %zmm19, %zmm12
	vextractf128	$1, %ymm12, %xmm13
	vaddps	%xmm13, %xmm12, %xmm12
	vshufpd	$1, %xmm12, %xmm12, %xmm13      # xmm13 = xmm12[1,0]
	vaddps	%xmm13, %xmm12, %xmm12
	vmovshdup	%xmm12, %xmm13          # xmm13 = xmm12[1,1,3,3]
	vaddss	%xmm13, %xmm12, %xmm12
	vaddss	%xmm3, %xmm12, %xmm12
.Ltmp2:
	.loc	1 76 18                         # rmsnorm.py:76:18
	vaddss	%xmm2, %xmm12, %xmm2
	.loc	1 72 30                         # rmsnorm.py:72:30
	subl	$-128, %ecx
	cmpl	%r9d, %ecx
	jl	.LBB0_3
# %bb.4:                                # %._crit_edge
	testl	%r9d, %r9d
	.loc	1 83 30                         # rmsnorm.py:83:30
	jg	.LBB0_5
	jmp	.LBB0_7
.LBB0_1:
	.loc	1 0 30 is_stmt 0                # rmsnorm.py:0:30
	vxorps	%xmm2, %xmm2, %xmm2
	.loc	1 72 30 is_stmt 1               # rmsnorm.py:72:30
	testl	%r9d, %r9d
	.loc	1 83 30                         # rmsnorm.py:83:30
	jle	.LBB0_7
.LBB0_5:                                # %.lr.ph4.preheader
	.loc	1 0 30 is_stmt 0                # rmsnorm.py:0:30
	imull	%r8d, %r10d
	movslq	%r10d, %rcx
	leaq	(%rsi,%rcx,4), %rcx
	vcvtsi2ss	%r9d, %xmm20, %xmm3
	vdivss	%xmm3, %xmm2, %xmm2
	vaddss	%xmm2, %xmm0, %xmm0
	vsqrtss	%xmm0, %xmm0, %xmm0
	vmovss	.LCPI0_8(%rip), %xmm2           # xmm2 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	vdivss	%xmm0, %xmm2, %xmm0
	vbroadcastss	%xmm0, %zmm0
	xorl	%esi, %esi
	vpmovsxbd	.LCPI0_16(%rip), %zmm2  # zmm2 = [112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127]
	vpmovsxbd	.LCPI0_12(%rip), %zmm3  # zmm3 = [96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111]
	vpmovsxbd	.LCPI0_9(%rip), %zmm4   # zmm4 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	vpmovsxbd	.LCPI0_13(%rip), %zmm5  # zmm5 = [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
	vpmovsxbd	.LCPI0_11(%rip), %zmm6  # zmm6 = [32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47]
	vpmovsxbd	.LCPI0_15(%rip), %zmm7  # zmm7 = [48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63]
	vpmovsxbd	.LCPI0_10(%rip), %zmm8  # zmm8 = [64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79]
	vpmovsxbd	.LCPI0_14(%rip), %zmm9  # zmm9 = [80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95]
	vbroadcastss	.LCPI0_8(%rip), %zmm10  # zmm10 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	.p2align	4
.LBB0_6:                                # %.lr.ph4
                                        # =>This Inner Loop Header: Depth=1
	.loc	1 84 26 is_stmt 1               # rmsnorm.py:84:26
	vpbroadcastd	%esi, %zmm11
	vpord	%zmm2, %zmm11, %zmm12
	vpord	%zmm3, %zmm11, %zmm13
	vpord	%zmm4, %zmm11, %zmm14
	vpord	%zmm5, %zmm11, %zmm15
	vpord	%zmm6, %zmm11, %zmm16
	vpord	%zmm7, %zmm11, %zmm17
	vpord	%zmm8, %zmm11, %zmm18
	vpord	%zmm9, %zmm11, %zmm11
	.loc	1 85 29                         # rmsnorm.py:85:29
	vpcmpgtd	%zmm11, %zmm1, %k1
	kmovw	%k1, -6(%rsp)                   # 2-byte Spill
	vpcmpgtd	%zmm18, %zmm1, %k2
	kmovw	%k2, -2(%rsp)                   # 2-byte Spill
	vpcmpgtd	%zmm17, %zmm1, %k3
	vpcmpgtd	%zmm16, %zmm1, %k4
	vpcmpgtd	%zmm15, %zmm1, %k5
	vpcmpgtd	%zmm14, %zmm1, %k6
	vpcmpgtd	%zmm13, %zmm1, %k7
	vpcmpgtd	%zmm12, %zmm1, %k1
	kmovw	%k1, -4(%rsp)                   # 2-byte Spill
	.loc	1 87 36                         # rmsnorm.py:87:36
	movslq	%esi, %rsi
	.loc	1 87 20 is_stmt 0               # rmsnorm.py:87:20
	vmovups	448(%rax,%rsi,4), %zmm11 {%k1} {z}
	vmovups	384(%rax,%rsi,4), %zmm12 {%k7} {z}
	vmovups	(%rax,%rsi,4), %zmm13 {%k6} {z}
	vmovups	64(%rax,%rsi,4), %zmm14 {%k5} {z}
	vmovups	128(%rax,%rsi,4), %zmm15 {%k4} {z}
	vmovups	192(%rax,%rsi,4), %zmm16 {%k3} {z}
	vmovups	256(%rax,%rsi,4), %zmm17 {%k2} {z}
	kmovw	-6(%rsp), %k1                   # 2-byte Reload
	vmovups	320(%rax,%rsi,4), %zmm18 {%k1} {z}
	.loc	1 88 25 is_stmt 1               # rmsnorm.py:88:25
	vblendmps	320(%rdx,%rsi,4), %zmm10, %zmm19 {%k1}
	vblendmps	256(%rdx,%rsi,4), %zmm10, %zmm20 {%k2}
	vblendmps	192(%rdx,%rsi,4), %zmm10, %zmm21 {%k3}
	vblendmps	128(%rdx,%rsi,4), %zmm10, %zmm22 {%k4}
	vblendmps	64(%rdx,%rsi,4), %zmm10, %zmm23 {%k5}
	vblendmps	(%rdx,%rsi,4), %zmm10, %zmm24 {%k6}
	vblendmps	384(%rdx,%rsi,4), %zmm10, %zmm25 {%k7}
	kmovw	-4(%rsp), %k1                   # 2-byte Reload
	vblendmps	448(%rdx,%rsi,4), %zmm10, %zmm26 {%k1}
	.loc	1 91 16                         # rmsnorm.py:91:16
	vmulps	%zmm18, %zmm0, %zmm18
	.loc	1 92 21                         # rmsnorm.py:92:21
	vmulps	%zmm18, %zmm19, %zmm18
	.loc	1 91 16                         # rmsnorm.py:91:16
	vmulps	%zmm17, %zmm0, %zmm17
	.loc	1 92 21                         # rmsnorm.py:92:21
	vmulps	%zmm17, %zmm20, %zmm17
	.loc	1 91 16                         # rmsnorm.py:91:16
	vmulps	%zmm16, %zmm0, %zmm16
	.loc	1 92 21                         # rmsnorm.py:92:21
	vmulps	%zmm16, %zmm21, %zmm16
	.loc	1 91 16                         # rmsnorm.py:91:16
	vmulps	%zmm15, %zmm0, %zmm15
	.loc	1 92 21                         # rmsnorm.py:92:21
	vmulps	%zmm15, %zmm22, %zmm15
	.loc	1 91 16                         # rmsnorm.py:91:16
	vmulps	%zmm14, %zmm0, %zmm14
	.loc	1 92 21                         # rmsnorm.py:92:21
	vmulps	%zmm14, %zmm23, %zmm14
	.loc	1 91 16                         # rmsnorm.py:91:16
	vmulps	%zmm13, %zmm0, %zmm13
	.loc	1 92 21                         # rmsnorm.py:92:21
	vmulps	%zmm13, %zmm24, %zmm13
	.loc	1 91 16                         # rmsnorm.py:91:16
	vmulps	%zmm12, %zmm0, %zmm12
	.loc	1 92 21                         # rmsnorm.py:92:21
	vmulps	%zmm12, %zmm25, %zmm12
	.loc	1 91 16                         # rmsnorm.py:91:16
	vmulps	%zmm11, %zmm0, %zmm11
	.loc	1 92 21                         # rmsnorm.py:92:21
	vmulps	%zmm11, %zmm26, %zmm11
	kmovw	-6(%rsp), %k2                   # 2-byte Reload
	.loc	1 94 47                         # rmsnorm.py:94:47
	vmovups	%zmm18, 320(%rcx,%rsi,4) {%k2}
	kmovw	-2(%rsp), %k2                   # 2-byte Reload
	vmovups	%zmm17, 256(%rcx,%rsi,4) {%k2}
	vmovups	%zmm16, 192(%rcx,%rsi,4) {%k3}
	vmovups	%zmm15, 128(%rcx,%rsi,4) {%k4}
	vmovups	%zmm14, 64(%rcx,%rsi,4) {%k5}
	vmovups	%zmm13, (%rcx,%rsi,4) {%k6}
	vmovups	%zmm12, 384(%rcx,%rsi,4) {%k7}
	vmovups	%zmm11, 448(%rcx,%rsi,4) {%k1}
	.loc	1 83 30                         # rmsnorm.py:83:30
	subl	$-128, %esi
	cmpl	%r9d, %esi
	jl	.LBB0_6
.LBB0_7:                                # %._crit_edge5
	.loc	1 83 4 is_stmt 0                # rmsnorm.py:83:4
	vzeroupper
	retq
.Ltmp3:
.Lfunc_end0:
	.size	rms_norm_kernel_large_row, .Lfunc_end0-rms_norm_kernel_large_row
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
	.quad	.Ltmp1                          # DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	76                              # DW_AT_call_line
	.byte	25                              # DW_AT_call_column
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
	.asciz	"rms_norm_kernel_large_row"     # string offset=52
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
