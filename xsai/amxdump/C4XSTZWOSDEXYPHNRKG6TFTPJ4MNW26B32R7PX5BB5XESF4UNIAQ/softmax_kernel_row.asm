	.file	"LLVMDialectModule"
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0                          # -- Begin function softmax_kernel_row
.LCPI0_0:
	.long	128                             # 0x80
	.long	129                             # 0x81
	.long	130                             # 0x82
	.long	131                             # 0x83
	.long	132                             # 0x84
	.long	133                             # 0x85
	.long	134                             # 0x86
	.long	135                             # 0x87
	.long	136                             # 0x88
	.long	137                             # 0x89
	.long	138                             # 0x8a
	.long	139                             # 0x8b
	.long	140                             # 0x8c
	.long	141                             # 0x8d
	.long	142                             # 0x8e
	.long	143                             # 0x8f
.LCPI0_1:
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
.LCPI0_2:
	.long	192                             # 0xc0
	.long	193                             # 0xc1
	.long	194                             # 0xc2
	.long	195                             # 0xc3
	.long	196                             # 0xc4
	.long	197                             # 0xc5
	.long	198                             # 0xc6
	.long	199                             # 0xc7
	.long	200                             # 0xc8
	.long	201                             # 0xc9
	.long	202                             # 0xca
	.long	203                             # 0xcb
	.long	204                             # 0xcc
	.long	205                             # 0xcd
	.long	206                             # 0xce
	.long	207                             # 0xcf
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
	.long	160                             # 0xa0
	.long	161                             # 0xa1
	.long	162                             # 0xa2
	.long	163                             # 0xa3
	.long	164                             # 0xa4
	.long	165                             # 0xa5
	.long	166                             # 0xa6
	.long	167                             # 0xa7
	.long	168                             # 0xa8
	.long	169                             # 0xa9
	.long	170                             # 0xaa
	.long	171                             # 0xab
	.long	172                             # 0xac
	.long	173                             # 0xad
	.long	174                             # 0xae
	.long	175                             # 0xaf
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
	.long	224                             # 0xe0
	.long	225                             # 0xe1
	.long	226                             # 0xe2
	.long	227                             # 0xe3
	.long	228                             # 0xe4
	.long	229                             # 0xe5
	.long	230                             # 0xe6
	.long	231                             # 0xe7
	.long	232                             # 0xe8
	.long	233                             # 0xe9
	.long	234                             # 0xea
	.long	235                             # 0xeb
	.long	236                             # 0xec
	.long	237                             # 0xed
	.long	238                             # 0xee
	.long	239                             # 0xef
.LCPI0_7:
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
.LCPI0_8:
	.long	144                             # 0x90
	.long	145                             # 0x91
	.long	146                             # 0x92
	.long	147                             # 0x93
	.long	148                             # 0x94
	.long	149                             # 0x95
	.long	150                             # 0x96
	.long	151                             # 0x97
	.long	152                             # 0x98
	.long	153                             # 0x99
	.long	154                             # 0x9a
	.long	155                             # 0x9b
	.long	156                             # 0x9c
	.long	157                             # 0x9d
	.long	158                             # 0x9e
	.long	159                             # 0x9f
.LCPI0_9:
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
.LCPI0_10:
	.long	208                             # 0xd0
	.long	209                             # 0xd1
	.long	210                             # 0xd2
	.long	211                             # 0xd3
	.long	212                             # 0xd4
	.long	213                             # 0xd5
	.long	214                             # 0xd6
	.long	215                             # 0xd7
	.long	216                             # 0xd8
	.long	217                             # 0xd9
	.long	218                             # 0xda
	.long	219                             # 0xdb
	.long	220                             # 0xdc
	.long	221                             # 0xdd
	.long	222                             # 0xde
	.long	223                             # 0xdf
.LCPI0_11:
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
.LCPI0_12:
	.long	176                             # 0xb0
	.long	177                             # 0xb1
	.long	178                             # 0xb2
	.long	179                             # 0xb3
	.long	180                             # 0xb4
	.long	181                             # 0xb5
	.long	182                             # 0xb6
	.long	183                             # 0xb7
	.long	184                             # 0xb8
	.long	185                             # 0xb9
	.long	186                             # 0xba
	.long	187                             # 0xbb
	.long	188                             # 0xbc
	.long	189                             # 0xbd
	.long	190                             # 0xbe
	.long	191                             # 0xbf
.LCPI0_13:
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
.LCPI0_14:
	.long	240                             # 0xf0
	.long	241                             # 0xf1
	.long	242                             # 0xf2
	.long	243                             # 0xf3
	.long	244                             # 0xf4
	.long	245                             # 0xf5
	.long	246                             # 0xf6
	.long	247                             # 0xf7
	.long	248                             # 0xf8
	.long	249                             # 0xf9
	.long	250                             # 0xfa
	.long	251                             # 0xfb
	.long	252                             # 0xfc
	.long	253                             # 0xfd
	.long	254                             # 0xfe
	.long	255                             # 0xff
.LCPI0_15:
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
.LCPI0_16:
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
	subq	$1064, %rsp                     # imm = 0x428
	.cfi_def_cfa_offset 1088
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
.Ltmp0:
	.loc	1 20 36 prologue_end            # softmax.py:20:36
	imull	%r9d, %edx
	.loc	1 24 25                         # softmax.py:24:25
	vpbroadcastd	%r8d, %zmm16
	vpcmpgtd	.LCPI0_8(%rip), %zmm16, %k1
	kmovw	%k1, (%rsp)                     # 2-byte Spill
	vpcmpgtd	.LCPI0_9(%rip), %zmm16, %k4
	kmovw	%k4, 30(%rsp)                   # 2-byte Spill
	vpcmpgtd	.LCPI0_10(%rip), %zmm16, %k7
	kmovw	%k7, 12(%rsp)                   # 2-byte Spill
	vpcmpgtd	.LCPI0_11(%rip), %zmm16, %k3
	kmovw	%k3, 26(%rsp)                   # 2-byte Spill
	vpcmpgtd	.LCPI0_12(%rip), %zmm16, %k6
	kmovw	%k6, 16(%rsp)                   # 2-byte Spill
	vpcmpgtd	.LCPI0_13(%rip), %zmm16, %k2
	kmovw	%k2, 28(%rsp)                   # 2-byte Spill
	.loc	1 20 26                         # softmax.py:20:26
	movslq	%edx, %rax
	.loc	1 24 25                         # softmax.py:24:25
	vpcmpgtd	.LCPI0_14(%rip), %zmm16, %k1
	kmovw	%k1, 10(%rsp)                   # 2-byte Spill
	vpcmpgtd	.LCPI0_15(%rip), %zmm16, %k5
	kmovw	%k5, 24(%rsp)                   # 2-byte Spill
	.loc	1 27 18                         # softmax.py:27:18
	vbroadcastss	.LCPI0_16(%rip), %zmm3  # zmm3 = [-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf,-Inf]
	vblendmps	448(%rdi,%rax,4), %zmm3, %zmm1 {%k5}
	vblendmps	960(%rdi,%rax,4), %zmm3, %zmm8 {%k1}
	vblendmps	192(%rdi,%rax,4), %zmm3, %zmm0 {%k2}
	vblendmps	704(%rdi,%rax,4), %zmm3, %zmm5 {%k6}
	vblendmps	320(%rdi,%rax,4), %zmm3, %zmm4 {%k3}
	vblendmps	832(%rdi,%rax,4), %zmm3, %zmm10 {%k7}
	vblendmps	64(%rdi,%rax,4), %zmm3, %zmm2 {%k4}
	kmovw	(%rsp), %k1                     # 2-byte Reload
	vblendmps	576(%rdi,%rax,4), %zmm3, %zmm9 {%k1}
	.loc	1 24 25                         # softmax.py:24:25
	vpcmpgtd	.LCPI0_7(%rip), %zmm16, %k1
	kmovw	%k1, 18(%rsp)                   # 2-byte Spill
	.loc	1 27 18                         # softmax.py:27:18
	vblendmps	384(%rdi,%rax,4), %zmm3, %zmm6 {%k1}
	.loc	1 24 25                         # softmax.py:24:25
	vpcmpgtd	.LCPI0_6(%rip), %zmm16, %k1
	kmovw	%k1, 6(%rsp)                    # 2-byte Spill
	.loc	1 27 18                         # softmax.py:27:18
	vblendmps	896(%rdi,%rax,4), %zmm3, %zmm13 {%k1}
	.loc	1 24 25                         # softmax.py:24:25
	vpcmpgtd	.LCPI0_5(%rip), %zmm16, %k1
	kmovw	%k1, 22(%rsp)                   # 2-byte Spill
	.loc	1 27 18                         # softmax.py:27:18
	vblendmps	128(%rdi,%rax,4), %zmm3, %zmm7 {%k1}
	.loc	1 24 25                         # softmax.py:24:25
	vpcmpgtd	.LCPI0_4(%rip), %zmm16, %k1
	kmovw	%k1, 8(%rsp)                    # 2-byte Spill
	.loc	1 27 18                         # softmax.py:27:18
	vblendmps	640(%rdi,%rax,4), %zmm3, %zmm14 {%k1}
	.loc	1 24 25                         # softmax.py:24:25
	vpcmpgtd	.LCPI0_3(%rip), %zmm16, %k1
	kmovw	%k1, 14(%rsp)                   # 2-byte Spill
	.loc	1 27 18                         # softmax.py:27:18
	vblendmps	256(%rdi,%rax,4), %zmm3, %zmm11 {%k1}
	.loc	1 24 25                         # softmax.py:24:25
	vpcmpgtd	.LCPI0_2(%rip), %zmm16, %k1
	kmovw	%k1, 2(%rsp)                    # 2-byte Spill
	.loc	1 27 18                         # softmax.py:27:18
	vblendmps	768(%rdi,%rax,4), %zmm3, %zmm15 {%k1}
	.loc	1 24 25                         # softmax.py:24:25
	vpcmpgtd	.LCPI0_1(%rip), %zmm16, %k1
	kmovw	%k1, 20(%rsp)                   # 2-byte Spill
	.loc	1 27 18                         # softmax.py:27:18
	vblendmps	(%rdi,%rax,4), %zmm3, %zmm12 {%k1}
	.loc	1 24 25                         # softmax.py:24:25
	vpcmpgtd	.LCPI0_0(%rip), %zmm16, %k1
	kmovw	%k1, 4(%rsp)                    # 2-byte Spill
	.loc	1 27 18                         # softmax.py:27:18
	vmovups	512(%rdi,%rax,4), %zmm3 {%k1}
.Ltmp1:
	.file	2 "/root/XSAI/Triton/triton-cpu/python/triton/language" "standard.py"
	.loc	2 184 40                        # standard.py:184:40 @[ softmax.py:30:21 ]
	vmaxps	%zmm12, %zmm3, %zmm16
	vcmpunordps	%zmm12, %zmm12, %k1
	vmovaps	%zmm3, %zmm16 {%k1}
	vmaxps	%zmm11, %zmm15, %zmm17
	vcmpunordps	%zmm11, %zmm11, %k1
	vmovaps	%zmm15, %zmm17 {%k1}
	vmaxps	%zmm16, %zmm17, %zmm18
	vcmpunordps	%zmm16, %zmm16, %k1
	vmovaps	%zmm17, %zmm18 {%k1}
	vmaxps	%zmm7, %zmm14, %zmm16
	vcmpunordps	%zmm7, %zmm7, %k1
	vmovaps	%zmm14, %zmm16 {%k1}
	vmaxps	%zmm6, %zmm13, %zmm17
	vcmpunordps	%zmm6, %zmm6, %k1
	vmovaps	%zmm13, %zmm17 {%k1}
	vmaxps	%zmm16, %zmm17, %zmm19
	vcmpunordps	%zmm16, %zmm16, %k1
	vmovaps	%zmm17, %zmm19 {%k1}
	vmaxps	%zmm18, %zmm19, %zmm17
	vcmpunordps	%zmm18, %zmm18, %k1
	vmovaps	%zmm19, %zmm17 {%k1}
	vmaxps	%zmm2, %zmm9, %zmm16
	vcmpunordps	%zmm2, %zmm2, %k1
	vmovaps	%zmm9, %zmm16 {%k1}
	vmaxps	%zmm4, %zmm10, %zmm18
	vcmpunordps	%zmm4, %zmm4, %k1
	vmovaps	%zmm10, %zmm18 {%k1}
	vmaxps	%zmm16, %zmm18, %zmm19
	vcmpunordps	%zmm16, %zmm16, %k1
	vmovaps	%zmm18, %zmm19 {%k1}
	vmaxps	%zmm0, %zmm5, %zmm16
	vcmpunordps	%zmm0, %zmm0, %k1
	vmovaps	%zmm5, %zmm16 {%k1}
	vmaxps	%zmm1, %zmm8, %zmm18
	vcmpunordps	%zmm1, %zmm1, %k1
	vmovaps	%zmm8, %zmm18 {%k1}
	vmaxps	%zmm16, %zmm18, %zmm20
	vcmpunordps	%zmm16, %zmm16, %k1
	vmovaps	%zmm18, %zmm20 {%k1}
	vmaxps	%zmm19, %zmm20, %zmm18
	vcmpunordps	%zmm19, %zmm19, %k1
	vmovaps	%zmm20, %zmm18 {%k1}
	vmaxps	%zmm17, %zmm18, %zmm16
	vcmpunordps	%zmm17, %zmm17, %k1
	vmovaps	%zmm18, %zmm16 {%k1}
	vmovshdup	%xmm16, %xmm17          # xmm17 = xmm16[1,1,3,3]
	vmaxss	%xmm16, %xmm17, %xmm18
	vcmpunordss	%xmm16, %xmm16, %k1
	vmovss	%xmm17, %xmm18, %xmm18 {%k1}
	vshufpd	$1, %xmm16, %xmm16, %xmm17      # xmm17 = xmm16[1,0]
	vmaxss	%xmm18, %xmm17, %xmm19
	vcmpunordss	%xmm18, %xmm18, %k1
	vmovss	%xmm17, %xmm19, %xmm19 {%k1}
	vshufps	$255, %xmm16, %xmm16, %xmm17    # xmm17 = xmm16[3,3,3,3]
	vmaxss	%xmm19, %xmm17, %xmm18
	vcmpunordss	%xmm19, %xmm19, %k1
	vmovss	%xmm17, %xmm18, %xmm18 {%k1}
	vextractf32x4	$1, %ymm16, %xmm17
	vmaxss	%xmm18, %xmm17, %xmm19
	vcmpunordss	%xmm18, %xmm18, %k1
	vmovss	%xmm17, %xmm19, %xmm19 {%k1}
	vmovshdup	%xmm17, %xmm18          # xmm18 = xmm17[1,1,3,3]
	vmaxss	%xmm19, %xmm18, %xmm20
	vcmpunordss	%xmm19, %xmm19, %k1
	vmovss	%xmm18, %xmm20, %xmm20 {%k1}
	vshufpd	$1, %xmm17, %xmm17, %xmm18      # xmm18 = xmm17[1,0]
	vmaxss	%xmm20, %xmm18, %xmm19
	vcmpunordss	%xmm20, %xmm20, %k1
	vmovss	%xmm18, %xmm19, %xmm19 {%k1}
	vshufps	$255, %xmm17, %xmm17, %xmm17    # xmm17 = xmm17[3,3,3,3]
	vmaxss	%xmm19, %xmm17, %xmm18
	vcmpunordss	%xmm19, %xmm19, %k1
	vmovss	%xmm17, %xmm18, %xmm18 {%k1}
	vextractf32x4	$2, %zmm16, %xmm17
	vmaxss	%xmm18, %xmm17, %xmm19
	vcmpunordss	%xmm18, %xmm18, %k1
	vmovss	%xmm17, %xmm19, %xmm19 {%k1}
	vmovshdup	%xmm17, %xmm18          # xmm18 = xmm17[1,1,3,3]
	vmaxss	%xmm19, %xmm18, %xmm20
	vcmpunordss	%xmm19, %xmm19, %k1
	vmovss	%xmm18, %xmm20, %xmm20 {%k1}
	vshufpd	$1, %xmm17, %xmm17, %xmm18      # xmm18 = xmm17[1,0]
	vmaxss	%xmm20, %xmm18, %xmm19
	vcmpunordss	%xmm20, %xmm20, %k1
	vmovss	%xmm18, %xmm19, %xmm19 {%k1}
	vshufps	$255, %xmm17, %xmm17, %xmm17    # xmm17 = xmm17[3,3,3,3]
	vmaxss	%xmm19, %xmm17, %xmm18
	vcmpunordss	%xmm19, %xmm19, %k1
	vmovss	%xmm17, %xmm18, %xmm18 {%k1}
	vextractf32x4	$3, %zmm16, %xmm16
	vmaxss	%xmm18, %xmm16, %xmm17
	vcmpunordss	%xmm18, %xmm18, %k1
	vmovss	%xmm16, %xmm17, %xmm17 {%k1}
	vmovshdup	%xmm16, %xmm18          # xmm18 = xmm16[1,1,3,3]
	vmaxss	%xmm17, %xmm18, %xmm19
	vcmpunordss	%xmm17, %xmm17, %k1
	vmovss	%xmm18, %xmm19, %xmm19 {%k1}
	vshufpd	$1, %xmm16, %xmm16, %xmm17      # xmm17 = xmm16[1,0]
	vmaxss	%xmm19, %xmm17, %xmm18
	vcmpunordss	%xmm19, %xmm19, %k1
	vmovss	%xmm17, %xmm18, %xmm18 {%k1}
	vshufps	$255, %xmm16, %xmm16, %xmm16    # xmm16 = xmm16[3,3,3,3]
	vmaxss	%xmm18, %xmm16, %xmm17
	vcmpunordss	%xmm18, %xmm18, %k1
	vmovss	%xmm16, %xmm17, %xmm17 {%k1}
.Ltmp2:
	.loc	1 21 38                         # softmax.py:21:38
	imull	%r9d, %ecx
.Ltmp3:
	.loc	2 184 40                        # standard.py:184:40 @[ softmax.py:30:21 ]
	vmaxss	.LCPI0_16(%rip), %xmm17, %xmm16
.Ltmp4:
	.loc	1 21 28                         # softmax.py:21:28
	movslq	%ecx, %r14
	.loc	1 31 16                         # softmax.py:31:16
	vbroadcastss	%xmm16, %zmm16
	vsubps	%zmm16, %zmm8, %zmm8
	vmovups	%zmm8, 992(%rsp)                # 64-byte Spill
	vsubps	%zmm16, %zmm13, %zmm8
	vmovups	%zmm8, 864(%rsp)                # 64-byte Spill
	vsubps	%zmm16, %zmm10, %zmm8
	vmovups	%zmm8, 736(%rsp)                # 64-byte Spill
	vsubps	%zmm16, %zmm15, %zmm8
	vmovups	%zmm8, 672(%rsp)                # 64-byte Spill
	vsubps	%zmm16, %zmm5, %zmm5
	vmovups	%zmm5, 608(%rsp)                # 64-byte Spill
	vsubps	%zmm16, %zmm14, %zmm5
	vmovups	%zmm5, 416(%rsp)                # 64-byte Spill
	vsubps	%zmm16, %zmm9, %zmm5
	vmovups	%zmm5, 224(%rsp)                # 64-byte Spill
	vsubps	%zmm16, %zmm3, %zmm3
	vmovups	%zmm3, 160(%rsp)                # 64-byte Spill
	vsubps	%zmm16, %zmm1, %zmm1
	vmovups	%zmm1, 96(%rsp)                 # 64-byte Spill
	vsubps	%zmm16, %zmm6, %zmm1
	vmovups	%zmm1, 32(%rsp)                 # 64-byte Spill
	vsubps	%zmm16, %zmm4, %zmm1
	vmovups	%zmm1, 352(%rsp)                # 64-byte Spill
	vsubps	%zmm16, %zmm11, %zmm1
	vmovups	%zmm1, 288(%rsp)                # 64-byte Spill
	vsubps	%zmm16, %zmm0, %zmm0
	vmovups	%zmm0, 544(%rsp)                # 64-byte Spill
	vsubps	%zmm16, %zmm7, %zmm0
	vmovups	%zmm0, 480(%rsp)                # 64-byte Spill
	vsubps	%zmm16, %zmm2, %zmm0
	vmovups	%zmm0, 800(%rsp)                # 64-byte Spill
	vsubps	%zmm16, %zmm12, %zmm0
	.loc	1 34 21                         # softmax.py:34:21
	callq	Sleef_expf16_u10@PLT
	vmovups	%zmm0, 928(%rsp)                # 64-byte Spill
	vmovups	800(%rsp), %zmm0                # 64-byte Reload
	callq	Sleef_expf16_u10@PLT
	vmovups	%zmm0, 800(%rsp)                # 64-byte Spill
	vmovups	480(%rsp), %zmm0                # 64-byte Reload
	callq	Sleef_expf16_u10@PLT
	vmovups	%zmm0, 480(%rsp)                # 64-byte Spill
	vmovups	544(%rsp), %zmm0                # 64-byte Reload
	callq	Sleef_expf16_u10@PLT
	vmovups	%zmm0, 544(%rsp)                # 64-byte Spill
	vmovups	288(%rsp), %zmm0                # 64-byte Reload
	callq	Sleef_expf16_u10@PLT
	vmovups	%zmm0, 288(%rsp)                # 64-byte Spill
	vmovups	352(%rsp), %zmm0                # 64-byte Reload
	callq	Sleef_expf16_u10@PLT
	vmovups	%zmm0, 352(%rsp)                # 64-byte Spill
	vmovups	32(%rsp), %zmm0                 # 64-byte Reload
	callq	Sleef_expf16_u10@PLT
	vmovups	%zmm0, 32(%rsp)                 # 64-byte Spill
	vmovups	96(%rsp), %zmm0                 # 64-byte Reload
	callq	Sleef_expf16_u10@PLT
	vmovups	%zmm0, 96(%rsp)                 # 64-byte Spill
	vmovups	160(%rsp), %zmm0                # 64-byte Reload
	callq	Sleef_expf16_u10@PLT
	vmovups	%zmm0, 160(%rsp)                # 64-byte Spill
	vmovups	224(%rsp), %zmm0                # 64-byte Reload
	callq	Sleef_expf16_u10@PLT
	vmovups	%zmm0, 224(%rsp)                # 64-byte Spill
	vmovups	416(%rsp), %zmm0                # 64-byte Reload
	callq	Sleef_expf16_u10@PLT
	vmovups	%zmm0, 416(%rsp)                # 64-byte Spill
	vmovups	608(%rsp), %zmm0                # 64-byte Reload
	callq	Sleef_expf16_u10@PLT
	vmovups	%zmm0, 608(%rsp)                # 64-byte Spill
	vmovups	672(%rsp), %zmm0                # 64-byte Reload
	callq	Sleef_expf16_u10@PLT
	vmovups	%zmm0, 672(%rsp)                # 64-byte Spill
	vmovups	736(%rsp), %zmm0                # 64-byte Reload
	callq	Sleef_expf16_u10@PLT
	vmovups	%zmm0, 736(%rsp)                # 64-byte Spill
	vmovups	864(%rsp), %zmm0                # 64-byte Reload
	callq	Sleef_expf16_u10@PLT
	vmovups	%zmm0, 864(%rsp)                # 64-byte Spill
	vmovups	992(%rsp), %zmm0                # 64-byte Reload
	callq	Sleef_expf16_u10@PLT
	vmovups	480(%rsp), %zmm7                # 64-byte Reload
	vmovups	416(%rsp), %zmm15               # 64-byte Reload
.Ltmp5:
	.loc	2 286 36                        # standard.py:286:36 @[ softmax.py:37:19 ]
	vaddps	%zmm15, %zmm7, %zmm1
	vmovups	32(%rsp), %zmm11                # 64-byte Reload
	vmovups	864(%rsp), %zmm19               # 64-byte Reload
	vaddps	%zmm19, %zmm11, %zmm2
	vaddps	%zmm2, %zmm1, %zmm1
	vmovups	928(%rsp), %zmm5                # 64-byte Reload
	vmovups	160(%rsp), %zmm13               # 64-byte Reload
	vaddps	%zmm13, %zmm5, %zmm2
	vmovups	288(%rsp), %zmm9                # 64-byte Reload
	vmovups	672(%rsp), %zmm17               # 64-byte Reload
	vaddps	%zmm17, %zmm9, %zmm3
	vaddps	%zmm3, %zmm2, %zmm2
	vaddps	%zmm1, %zmm2, %zmm1
	vmovups	544(%rsp), %zmm8                # 64-byte Reload
	vmovups	608(%rsp), %zmm16               # 64-byte Reload
	vaddps	%zmm16, %zmm8, %zmm2
	vmovups	96(%rsp), %zmm12                # 64-byte Reload
	vaddps	%zmm0, %zmm12, %zmm3
	vaddps	%zmm3, %zmm2, %zmm2
	vmovups	800(%rsp), %zmm6                # 64-byte Reload
	vmovups	224(%rsp), %zmm14               # 64-byte Reload
	vaddps	%zmm14, %zmm6, %zmm3
	vmovups	352(%rsp), %zmm10               # 64-byte Reload
	vmovups	736(%rsp), %zmm18               # 64-byte Reload
	vaddps	%zmm18, %zmm10, %zmm4
	vaddps	%zmm4, %zmm3, %zmm3
	vaddps	%zmm2, %zmm3, %zmm2
	vaddps	%zmm2, %zmm1, %zmm1
	vextractf64x4	$1, %zmm1, %ymm2
	vaddps	%zmm2, %zmm1, %zmm1
	vextractf128	$1, %ymm1, %xmm2
	vaddps	%xmm2, %xmm1, %xmm1
	vshufpd	$1, %xmm1, %xmm1, %xmm2         # xmm2 = xmm1[1,0]
	vaddps	%xmm2, %xmm1, %xmm1
	vmovshdup	%xmm1, %xmm2            # xmm2 = xmm1[1,1,3,3]
	vaddss	%xmm2, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	vaddss	%xmm2, %xmm1, %xmm1
.Ltmp6:
	.loc	1 40 29                         # softmax.py:40:29
	vbroadcastss	%xmm1, %zmm1
	vdivps	%zmm1, %zmm0, %zmm0
	kmovw	10(%rsp), %k1                   # 2-byte Reload
	.loc	1 43 23                         # softmax.py:43:23
	vmovups	%zmm0, 960(%rbx,%r14,4) {%k1}
	.loc	1 40 29                         # softmax.py:40:29
	vdivps	%zmm1, %zmm19, %zmm0
	kmovw	6(%rsp), %k1                    # 2-byte Reload
	.loc	1 43 23                         # softmax.py:43:23
	vmovups	%zmm0, 896(%rbx,%r14,4) {%k1}
	.loc	1 40 29                         # softmax.py:40:29
	vdivps	%zmm1, %zmm18, %zmm0
	kmovw	12(%rsp), %k1                   # 2-byte Reload
	.loc	1 43 23                         # softmax.py:43:23
	vmovups	%zmm0, 832(%rbx,%r14,4) {%k1}
	.loc	1 40 29                         # softmax.py:40:29
	vdivps	%zmm1, %zmm17, %zmm0
	kmovw	2(%rsp), %k1                    # 2-byte Reload
	.loc	1 43 23                         # softmax.py:43:23
	vmovups	%zmm0, 768(%rbx,%r14,4) {%k1}
	.loc	1 40 29                         # softmax.py:40:29
	vdivps	%zmm1, %zmm16, %zmm0
	kmovw	16(%rsp), %k1                   # 2-byte Reload
	.loc	1 43 23                         # softmax.py:43:23
	vmovups	%zmm0, 704(%rbx,%r14,4) {%k1}
	.loc	1 40 29                         # softmax.py:40:29
	vdivps	%zmm1, %zmm15, %zmm0
	kmovw	8(%rsp), %k1                    # 2-byte Reload
	.loc	1 43 23                         # softmax.py:43:23
	vmovups	%zmm0, 640(%rbx,%r14,4) {%k1}
	.loc	1 40 29                         # softmax.py:40:29
	vdivps	%zmm1, %zmm14, %zmm0
	kmovw	(%rsp), %k1                     # 2-byte Reload
	.loc	1 43 23                         # softmax.py:43:23
	vmovups	%zmm0, 576(%rbx,%r14,4) {%k1}
	.loc	1 40 29                         # softmax.py:40:29
	vdivps	%zmm1, %zmm13, %zmm0
	kmovw	4(%rsp), %k1                    # 2-byte Reload
	.loc	1 43 23                         # softmax.py:43:23
	vmovups	%zmm0, 512(%rbx,%r14,4) {%k1}
	.loc	1 40 29                         # softmax.py:40:29
	vdivps	%zmm1, %zmm12, %zmm0
	kmovw	24(%rsp), %k1                   # 2-byte Reload
	.loc	1 43 23                         # softmax.py:43:23
	vmovups	%zmm0, 448(%rbx,%r14,4) {%k1}
	.loc	1 40 29                         # softmax.py:40:29
	vdivps	%zmm1, %zmm11, %zmm0
	kmovw	18(%rsp), %k1                   # 2-byte Reload
	.loc	1 43 23                         # softmax.py:43:23
	vmovups	%zmm0, 384(%rbx,%r14,4) {%k1}
	.loc	1 40 29                         # softmax.py:40:29
	vdivps	%zmm1, %zmm10, %zmm0
	kmovw	26(%rsp), %k1                   # 2-byte Reload
	.loc	1 43 23                         # softmax.py:43:23
	vmovups	%zmm0, 320(%rbx,%r14,4) {%k1}
	.loc	1 40 29                         # softmax.py:40:29
	vdivps	%zmm1, %zmm9, %zmm0
	kmovw	14(%rsp), %k1                   # 2-byte Reload
	.loc	1 43 23                         # softmax.py:43:23
	vmovups	%zmm0, 256(%rbx,%r14,4) {%k1}
	.loc	1 40 29                         # softmax.py:40:29
	vdivps	%zmm1, %zmm8, %zmm0
	kmovw	28(%rsp), %k1                   # 2-byte Reload
	.loc	1 43 23                         # softmax.py:43:23
	vmovups	%zmm0, 192(%rbx,%r14,4) {%k1}
	.loc	1 40 29                         # softmax.py:40:29
	vdivps	%zmm1, %zmm7, %zmm0
	kmovw	22(%rsp), %k1                   # 2-byte Reload
	.loc	1 43 23                         # softmax.py:43:23
	vmovups	%zmm0, 128(%rbx,%r14,4) {%k1}
	.loc	1 40 29                         # softmax.py:40:29
	vdivps	%zmm1, %zmm6, %zmm0
	kmovw	30(%rsp), %k1                   # 2-byte Reload
	.loc	1 43 23                         # softmax.py:43:23
	vmovups	%zmm0, 64(%rbx,%r14,4) {%k1}
	.loc	1 40 29                         # softmax.py:40:29
	vdivps	%zmm1, %zmm5, %zmm0
	kmovw	20(%rsp), %k1                   # 2-byte Reload
	.loc	1 43 23                         # softmax.py:43:23
	vmovups	%zmm0, (%rbx,%r14,4) {%k1}
	.loc	1 43 4 epilogue_begin is_stmt 0 # softmax.py:43:4
	addq	$1064, %rsp                     # imm = 0x428
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.Ltmp7:
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
	.byte	85                              # DW_AT_ranges
	.byte	23                              # DW_FORM_sec_offset
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x58 DW_TAG_compile_unit
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
	.byte	3                               # Abbrev [3] 0x30:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	42                              # DW_AT_abstract_origin
	.byte	4                               # Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              # DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 # DW_AT_ranges
	.byte	1                               # DW_AT_call_file
	.byte	30                              # DW_AT_call_line
	.byte	21                              # DW_AT_call_column
	.byte	5                               # Abbrev [5] 0x4d:0x14 DW_TAG_inlined_subroutine
	.long	42                              # DW_AT_abstract_origin
	.quad	.Ltmp5                          # DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   # DW_AT_high_pc
	.byte	1                               # DW_AT_call_file
	.byte	37                              # DW_AT_call_line
	.byte	19                              # DW_AT_call_column
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	0
	.quad	0
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
