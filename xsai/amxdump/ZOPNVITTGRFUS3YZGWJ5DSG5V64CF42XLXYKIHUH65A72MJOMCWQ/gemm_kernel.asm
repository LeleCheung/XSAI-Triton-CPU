	.file	"LLVMDialectModule"
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0                          # -- Begin function gemm_kernel
.LCPI0_0:
	.byte	0                               # 0x0
	.byte	64                              # 0x40
	.byte	1                               # 0x1
	.byte	65                              # 0x41
	.byte	2                               # 0x2
	.byte	66                              # 0x42
	.byte	3                               # 0x3
	.byte	67                              # 0x43
	.byte	4                               # 0x4
	.byte	68                              # 0x44
	.byte	5                               # 0x5
	.byte	69                              # 0x45
	.byte	6                               # 0x6
	.byte	70                              # 0x46
	.byte	7                               # 0x7
	.byte	71                              # 0x47
	.byte	8                               # 0x8
	.byte	72                              # 0x48
	.byte	9                               # 0x9
	.byte	73                              # 0x49
	.byte	10                              # 0xa
	.byte	74                              # 0x4a
	.byte	11                              # 0xb
	.byte	75                              # 0x4b
	.byte	12                              # 0xc
	.byte	76                              # 0x4c
	.byte	13                              # 0xd
	.byte	77                              # 0x4d
	.byte	14                              # 0xe
	.byte	78                              # 0x4e
	.byte	15                              # 0xf
	.byte	79                              # 0x4f
	.byte	48                              # 0x30
	.byte	112                             # 0x70
	.byte	49                              # 0x31
	.byte	113                             # 0x71
	.byte	50                              # 0x32
	.byte	114                             # 0x72
	.byte	51                              # 0x33
	.byte	115                             # 0x73
	.byte	52                              # 0x34
	.byte	116                             # 0x74
	.byte	53                              # 0x35
	.byte	117                             # 0x75
	.byte	54                              # 0x36
	.byte	118                             # 0x76
	.byte	55                              # 0x37
	.byte	119                             # 0x77
	.byte	56                              # 0x38
	.byte	120                             # 0x78
	.byte	57                              # 0x39
	.byte	121                             # 0x79
	.byte	58                              # 0x3a
	.byte	122                             # 0x7a
	.byte	59                              # 0x3b
	.byte	123                             # 0x7b
	.byte	60                              # 0x3c
	.byte	124                             # 0x7c
	.byte	61                              # 0x3d
	.byte	125                             # 0x7d
	.byte	62                              # 0x3e
	.byte	126                             # 0x7e
	.byte	63                              # 0x3f
	.byte	127                             # 0x7f
.LCPI0_1:
	.byte	0                               # 0x0
	.byte	64                              # 0x40
	.byte	1                               # 0x1
	.byte	65                              # 0x41
	.byte	2                               # 0x2
	.byte	66                              # 0x42
	.byte	3                               # 0x3
	.byte	67                              # 0x43
	.byte	4                               # 0x4
	.byte	68                              # 0x44
	.byte	5                               # 0x5
	.byte	69                              # 0x45
	.byte	6                               # 0x6
	.byte	70                              # 0x46
	.byte	7                               # 0x7
	.byte	71                              # 0x47
	.byte	8                               # 0x8
	.byte	72                              # 0x48
	.byte	9                               # 0x9
	.byte	73                              # 0x49
	.byte	10                              # 0xa
	.byte	74                              # 0x4a
	.byte	11                              # 0xb
	.byte	75                              # 0x4b
	.byte	12                              # 0xc
	.byte	76                              # 0x4c
	.byte	13                              # 0xd
	.byte	77                              # 0x4d
	.byte	14                              # 0xe
	.byte	78                              # 0x4e
	.byte	15                              # 0xf
	.byte	79                              # 0x4f
	.byte	16                              # 0x10
	.byte	80                              # 0x50
	.byte	17                              # 0x11
	.byte	81                              # 0x51
	.byte	18                              # 0x12
	.byte	82                              # 0x52
	.byte	19                              # 0x13
	.byte	83                              # 0x53
	.byte	20                              # 0x14
	.byte	84                              # 0x54
	.byte	21                              # 0x15
	.byte	85                              # 0x55
	.byte	22                              # 0x16
	.byte	86                              # 0x56
	.byte	23                              # 0x17
	.byte	87                              # 0x57
	.byte	24                              # 0x18
	.byte	88                              # 0x58
	.byte	25                              # 0x19
	.byte	89                              # 0x59
	.byte	26                              # 0x1a
	.byte	90                              # 0x5a
	.byte	27                              # 0x1b
	.byte	91                              # 0x5b
	.byte	28                              # 0x1c
	.byte	92                              # 0x5c
	.byte	29                              # 0x1d
	.byte	93                              # 0x5d
	.byte	30                              # 0x1e
	.byte	94                              # 0x5e
	.byte	31                              # 0x1f
	.byte	95                              # 0x5f
.LCPI0_2:
	.byte	32                              # 0x20
	.byte	96                              # 0x60
	.byte	33                              # 0x21
	.byte	97                              # 0x61
	.byte	34                              # 0x22
	.byte	98                              # 0x62
	.byte	35                              # 0x23
	.byte	99                              # 0x63
	.byte	36                              # 0x24
	.byte	100                             # 0x64
	.byte	37                              # 0x25
	.byte	101                             # 0x65
	.byte	38                              # 0x26
	.byte	102                             # 0x66
	.byte	39                              # 0x27
	.byte	103                             # 0x67
	.byte	40                              # 0x28
	.byte	104                             # 0x68
	.byte	41                              # 0x29
	.byte	105                             # 0x69
	.byte	42                              # 0x2a
	.byte	106                             # 0x6a
	.byte	43                              # 0x2b
	.byte	107                             # 0x6b
	.byte	44                              # 0x2c
	.byte	108                             # 0x6c
	.byte	45                              # 0x2d
	.byte	109                             # 0x6d
	.byte	46                              # 0x2e
	.byte	110                             # 0x6e
	.byte	47                              # 0x2f
	.byte	111                             # 0x6f
	.byte	48                              # 0x30
	.byte	112                             # 0x70
	.byte	49                              # 0x31
	.byte	113                             # 0x71
	.byte	50                              # 0x32
	.byte	114                             # 0x72
	.byte	51                              # 0x33
	.byte	115                             # 0x73
	.byte	52                              # 0x34
	.byte	116                             # 0x74
	.byte	53                              # 0x35
	.byte	117                             # 0x75
	.byte	54                              # 0x36
	.byte	118                             # 0x76
	.byte	55                              # 0x37
	.byte	119                             # 0x77
	.byte	56                              # 0x38
	.byte	120                             # 0x78
	.byte	57                              # 0x39
	.byte	121                             # 0x79
	.byte	58                              # 0x3a
	.byte	122                             # 0x7a
	.byte	59                              # 0x3b
	.byte	123                             # 0x7b
	.byte	60                              # 0x3c
	.byte	124                             # 0x7c
	.byte	61                              # 0x3d
	.byte	125                             # 0x7d
	.byte	62                              # 0x3e
	.byte	126                             # 0x7e
	.byte	63                              # 0x3f
	.byte	127                             # 0x7f
	.text
	.globl	gemm_kernel
	.p2align	4
	.type	gemm_kernel,@function
gemm_kernel:                            # @gemm_kernel
.Lfunc_begin0:
	.file	1 "/root/XSAI/Triton/triton-cpu/xsai" "gemm.py"
	.loc	1 7 0                           # gemm.py:7:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-1024, %rsp                    # imm = 0xFC00
	subq	$21504, %rsp                    # imm = 0x5400
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu64	%zmm0, 968(%rsp)
	movb	$1, 968(%rsp)
	movb	$16, 1016(%rsp)
	movw	$64, 984(%rsp)
	movb	$16, 1017(%rsp)
	movw	$64, 986(%rsp)
	movb	$16, 1018(%rsp)
	movw	$64, 988(%rsp)
	movb	$16, 1019(%rsp)
	movw	$64, 990(%rsp)
	movb	$16, 1020(%rsp)
	movw	$64, 992(%rsp)
	movb	$16, 1021(%rsp)
	movw	$64, 994(%rsp)
	movb	$16, 1022(%rsp)
	movw	$64, 996(%rsp)
	ldtilecfg	968(%rsp)
                                        # kill: def $r8d killed $r8d def $r8
	movl	24(%rbp), %r15d
	movl	16(%rbp), %ecx
.Ltmp0:
	.loc	1 12 21 prologue_end            # gemm.py:12:21
	shll	$5, %ecx
	.loc	1 13 21                         # gemm.py:13:21
	shll	$5, %r15d
	movw	$64, %ax
	movw	$16, %r10w
	.loc	1 34 25                         # gemm.py:34:25
	tilezero	%tmm0
	movl	%r9d, 936(%rsp)                 # 4-byte Spill
	.loc	1 23 25                         # gemm.py:23:25
	testl	%r9d, %r9d
	jle	.LBB0_1
# %bb.2:                                # %.lr.ph
	.loc	1 0 25 is_stmt 0                # gemm.py:0:25
	movq	%rdx, 1040(%rsp)                # 8-byte Spill
	movl	%ecx, %eax
	movl	936(%rsp), %edx                 # 4-byte Reload
	imull	%edx, %eax
	movq	%rax, 1800(%rsp)                # 8-byte Spill
	movl	%ecx, %eax
	orl	$1, %eax
	movl	%eax, 940(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$2, %eax
	movl	%eax, 944(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$3, %eax
	movl	%eax, 948(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$4, %eax
	movl	%eax, 952(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$5, %eax
	movl	%eax, 956(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$6, %eax
	movl	%eax, 960(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$7, %eax
	movl	%eax, 836(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$8, %eax
	movl	%eax, 840(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$9, %eax
	movl	%eax, 844(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$10, %eax
	movl	%eax, 848(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$11, %eax
	movl	%eax, 852(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$12, %eax
	movl	%eax, 856(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$13, %eax
	movl	%eax, 860(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$14, %eax
	movl	%eax, 864(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$15, %eax
	movl	%eax, 868(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$16, %eax
	movl	%eax, 872(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$17, %eax
	movl	%eax, 876(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$18, %eax
	movl	%eax, 880(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$19, %eax
	movl	%eax, 884(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$20, %eax
	movl	%eax, 888(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$21, %eax
	movl	%eax, 892(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$22, %eax
	movl	%eax, 896(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$23, %eax
	movl	%eax, 900(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$24, %eax
	movl	%eax, 904(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$25, %eax
	movl	%eax, 908(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$26, %eax
	movl	%eax, 912(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$27, %eax
	movl	%eax, 916(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$28, %eax
	movl	%eax, 920(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$29, %eax
	movl	%eax, 924(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$30, %eax
	movl	%eax, 928(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$31, %eax
	movl	%eax, 932(%rsp)                 # 4-byte Spill
	.loc	1 23 25                         # gemm.py:23:25
	movl	%r8d, %r9d
	shll	$6, %r9d
	movl	%r9d, %eax
	subl	%r8d, %eax
	movq	%rax, 1784(%rsp)                # 8-byte Spill
	leal	(%r8,%r8), %r10d
	movq	%r9, 1792(%rsp)                 # 8-byte Spill
                                        # kill: def $r9d killed $r9d killed $r9 def $r9
	subl	%r10d, %r9d
	movq	%r9, 1768(%rsp)                 # 8-byte Spill
	movl	%r8d, %eax
	shll	$4, %eax
	movl	%r8d, %r9d
	shll	$5, %r9d
	movl	%r9d, %r11d
	subl	%r8d, %r11d
	movq	%r11, 1744(%rsp)                # 8-byte Spill
	movl	%r9d, %r11d
	subl	%r10d, %r11d
	movq	%r11, 1736(%rsp)                # 8-byte Spill
	leal	(%r8,%r8,2), %r11d
	leal	(,%r11,8), %ebx
	subl	%r8d, %ebx
	movq	%rbx, 1720(%rsp)                # 8-byte Spill
	movl	%eax, %ebx
	subl	%r10d, %ebx
	movq	%rbx, 1712(%rsp)                # 8-byte Spill
	leal	(,%r8,8), %ebx
	movl	%ebx, %r14d
	subl	%r8d, %r14d
	movq	%r14, 1696(%rsp)                # 8-byte Spill
	leal	31(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1688(%rsp)                # 8-byte Spill
	leal	30(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1680(%rsp)                # 8-byte Spill
	leal	29(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1672(%rsp)                # 8-byte Spill
	leal	28(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1664(%rsp)                # 8-byte Spill
	leal	27(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1656(%rsp)                # 8-byte Spill
	leal	26(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1648(%rsp)                # 8-byte Spill
	leal	25(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1640(%rsp)                # 8-byte Spill
	leal	24(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1632(%rsp)                # 8-byte Spill
	leal	23(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1624(%rsp)                # 8-byte Spill
	leal	22(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1616(%rsp)                # 8-byte Spill
	leal	21(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1608(%rsp)                # 8-byte Spill
	leal	20(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1600(%rsp)                # 8-byte Spill
	leal	19(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1592(%rsp)                # 8-byte Spill
	leal	18(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1584(%rsp)                # 8-byte Spill
	leal	17(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1576(%rsp)                # 8-byte Spill
	leal	16(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1568(%rsp)                # 8-byte Spill
	leal	15(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1560(%rsp)                # 8-byte Spill
	leal	14(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1552(%rsp)                # 8-byte Spill
	leal	13(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1544(%rsp)                # 8-byte Spill
	leal	12(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1536(%rsp)                # 8-byte Spill
	leal	11(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1528(%rsp)                # 8-byte Spill
	leal	10(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1520(%rsp)                # 8-byte Spill
	leal	9(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1512(%rsp)                # 8-byte Spill
	leal	8(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1504(%rsp)                # 8-byte Spill
	leal	7(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1496(%rsp)                # 8-byte Spill
	leal	6(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1488(%rsp)                # 8-byte Spill
	leal	5(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1480(%rsp)                # 8-byte Spill
	leal	4(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1472(%rsp)                # 8-byte Spill
	leal	3(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1464(%rsp)                # 8-byte Spill
	leal	2(%rcx), %r14d
	imull	%edx, %r14d
	movq	%r14, 1456(%rsp)                # 8-byte Spill
	movq	%rcx, 1032(%rsp)                # 8-byte Spill
	incl	%ecx
	imull	%edx, %ecx
	movq	%rcx, 1448(%rsp)                # 8-byte Spill
	movabsq	$64, %rcx
	tilestored	%tmm0, 14336(%rsp,%rcx) # 1024-byte Folded Spill
	tileloadd	14336(%rsp,%rcx), %tmm1 # 1024-byte Folded Reload
	tilestored	%tmm0, 15360(%rsp,%rcx) # 1024-byte Folded Spill
	tileloadd	15360(%rsp,%rcx), %tmm2 # 1024-byte Folded Reload
	tilestored	%tmm0, 16384(%rsp,%rcx) # 1024-byte Folded Spill
	tileloadd	16384(%rsp,%rcx), %tmm3 # 1024-byte Folded Reload
	imull	$61, %r8d, %ecx
	movq	%rcx, 1440(%rsp)                # 8-byte Spill
	imull	$60, %r8d, %ecx
	movq	%rcx, 1432(%rsp)                # 8-byte Spill
	imull	$59, %r8d, %ecx
	movq	%rcx, 1424(%rsp)                # 8-byte Spill
	imull	$58, %r8d, %ecx
	movq	%rcx, 1416(%rsp)                # 8-byte Spill
	imull	$57, %r8d, %ecx
	movq	%rcx, 1408(%rsp)                # 8-byte Spill
	imull	$56, %r8d, %ecx
	movq	%rcx, 1400(%rsp)                # 8-byte Spill
	imull	$55, %r8d, %ecx
	movq	%rcx, 1392(%rsp)                # 8-byte Spill
	imull	$54, %r8d, %ecx
	movq	%rcx, 1384(%rsp)                # 8-byte Spill
	imull	$53, %r8d, %ecx
	movq	%rcx, 1376(%rsp)                # 8-byte Spill
	imull	$52, %r8d, %ecx
	movq	%rcx, 1368(%rsp)                # 8-byte Spill
	imull	$51, %r8d, %ecx
	movq	%rcx, 1360(%rsp)                # 8-byte Spill
	imull	$50, %r8d, %ecx
	movq	%rcx, 1352(%rsp)                # 8-byte Spill
	imull	$49, %r8d, %ecx
	movq	%rcx, 1344(%rsp)                # 8-byte Spill
	leal	(%rax,%rax,2), %ecx
	movq	%rcx, 1336(%rsp)                # 8-byte Spill
	imull	$47, %r8d, %ecx
	movq	%rcx, 1328(%rsp)                # 8-byte Spill
	imull	$46, %r8d, %ecx
	movq	%rcx, 1320(%rsp)                # 8-byte Spill
	leal	(%r8,%r8,8), %ecx
	leal	(%rcx,%rcx,4), %edx
	movq	%rdx, 1304(%rsp)                # 8-byte Spill
	imull	$44, %r8d, %edx
	movq	%rdx, 1296(%rsp)                # 8-byte Spill
	imull	$43, %r8d, %edx
	movq	%rdx, 1288(%rsp)                # 8-byte Spill
	imull	$42, %r8d, %edx
	movq	%rdx, 1280(%rsp)                # 8-byte Spill
	leal	(%r8,%r8,4), %edx
	leal	(%r8,%rdx,8), %r14d
	movq	%r14, 1264(%rsp)                # 8-byte Spill
	leal	(%rbx,%rbx,4), %r14d
	movq	%r14, 1256(%rsp)                # 8-byte Spill
	imull	$39, %r8d, %r14d
	movq	%r14, 1248(%rsp)                # 8-byte Spill
	imull	$38, %r8d, %r14d
	movq	%r14, 1240(%rsp)                # 8-byte Spill
	leal	(%r8,%rcx,4), %r14d
	movq	%r14, 1232(%rsp)                # 8-byte Spill
	leal	(,%r8,4), %r14d
	leal	(%r14,%r14,8), %r12d
	movq	%r12, 1216(%rsp)                # 8-byte Spill
	imull	$35, %r8d, %r12d
	movq	%r12, 1208(%rsp)                # 8-byte Spill
	leal	(%r9,%r8,2), %r12d
	movq	%r12, 1200(%rsp)                # 8-byte Spill
	movq	%r9, 1752(%rsp)                 # 8-byte Spill
	addl	%r8d, %r9d
	movq	%r9, 1192(%rsp)                 # 8-byte Spill
	leal	(%rcx,%rcx,2), %r9d
	leal	(%r10,%r9), %r12d
	movq	%r12, 1176(%rsp)                # 8-byte Spill
	movq	%r9, 1184(%rsp)                 # 8-byte Spill
	leal	(%r9,%r8), %r9d
	movq	%r9, 1168(%rsp)                 # 8-byte Spill
	leal	(%rdx,%rdx,4), %r9d
	movq	%r9, 1160(%rsp)                 # 8-byte Spill
	leal	(%r9,%r8), %r9d
	movq	%r9, 1152(%rsp)                 # 8-byte Spill
	movq	%rbx, 1704(%rsp)                # 8-byte Spill
	leal	(%rbx,%rbx,2), %r9d
	movq	%r9, 1144(%rsp)                 # 8-byte Spill
	leal	(%r10,%rdx,4), %r9d
	movq	%r9, 1136(%rsp)                 # 8-byte Spill
	leal	(%r8,%rdx,4), %r9d
	movq	%r9, 1128(%rsp)                 # 8-byte Spill
	leal	(%r14,%r14,4), %r9d
	movq	%r9, 1120(%rsp)                 # 8-byte Spill
	movq	%rcx, 1312(%rsp)                # 8-byte Spill
	leal	(%r8,%rcx,2), %ecx
	movq	%rcx, 1112(%rsp)                # 8-byte Spill
	leal	(%r10,%r10,8), %ecx
	movq	%rcx, 1104(%rsp)                # 8-byte Spill
	movq	%rax, 1760(%rsp)                # 8-byte Spill
	leal	(%r8,%rax), %eax
	movq	%rax, 1096(%rsp)                # 8-byte Spill
	leal	(%rdx,%rdx,2), %eax
	movq	%rax, 1088(%rsp)                # 8-byte Spill
	movq	%r11, 1728(%rsp)                # 8-byte Spill
	leal	(%r8,%r11,4), %eax
	movq	%rax, 1080(%rsp)                # 8-byte Spill
	movq	%r14, 1224(%rsp)                # 8-byte Spill
	leal	(%r14,%r14,2), %eax
	movq	%rax, 1072(%rsp)                # 8-byte Spill
	movq	%rdx, 1272(%rsp)                # 8-byte Spill
	leal	(%r8,%rdx,2), %eax
	movq	%rax, 1064(%rsp)                # 8-byte Spill
	leal	(%r10,%r10,4), %eax
	movq	%rax, 1056(%rsp)                # 8-byte Spill
	movq	%r10, 1776(%rsp)                # 8-byte Spill
	leal	(%r10,%r10,2), %eax
	movq	%rax, 1048(%rsp)                # 8-byte Spill
	xorl	%ebx, %ebx
	movl	%r15d, 964(%rsp)                # 4-byte Spill
	.loc	1 0 25                          # :0:25
.Ltmp1:
	.p2align	4
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	1800(%rsp), %rcx                # 8-byte Reload
	.loc	1 28 29 is_stmt 1               # gemm.py:28:29
	addl	%ebx, %ecx
	movslq	%ecx, %rcx
	.loc	1 28 20 is_stmt 0               # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm2
	movq	1448(%rsp), %rcx                # 8-byte Reload
	.loc	1 28 29                         # gemm.py:28:29
	leal	(%rcx,%rbx), %ecx
	movslq	%ecx, %rcx
	movq	1456(%rsp), %rdx                # 8-byte Reload
	leal	(%rdx,%rbx), %edx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm3
	.loc	1 28 29                         # gemm.py:28:29
	movslq	%edx, %rcx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm4
	movq	1464(%rsp), %rcx                # 8-byte Reload
	.loc	1 28 29                         # gemm.py:28:29
	leal	(%rcx,%rbx), %ecx
	movslq	%ecx, %rcx
	movq	1472(%rsp), %rdx                # 8-byte Reload
	leal	(%rdx,%rbx), %edx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm6
	.loc	1 28 29                         # gemm.py:28:29
	movslq	%edx, %rcx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 5312(%rsp)               # 64-byte Spill
	movq	1480(%rsp), %rcx                # 8-byte Reload
	.loc	1 28 29                         # gemm.py:28:29
	leal	(%rcx,%rbx), %ecx
	movslq	%ecx, %rcx
	movq	1488(%rsp), %rdx                # 8-byte Reload
	leal	(%rdx,%rbx), %edx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 5248(%rsp)               # 64-byte Spill
	.loc	1 28 29                         # gemm.py:28:29
	movslq	%edx, %rcx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 5184(%rsp)               # 64-byte Spill
	movq	1496(%rsp), %rcx                # 8-byte Reload
	.loc	1 28 29                         # gemm.py:28:29
	leal	(%rcx,%rbx), %ecx
	movslq	%ecx, %rcx
	movq	1504(%rsp), %rdx                # 8-byte Reload
	leal	(%rdx,%rbx), %edx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 5120(%rsp)               # 64-byte Spill
	.loc	1 28 29                         # gemm.py:28:29
	movslq	%edx, %rcx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 5056(%rsp)               # 64-byte Spill
	movq	1512(%rsp), %rcx                # 8-byte Reload
	.loc	1 28 29                         # gemm.py:28:29
	leal	(%rcx,%rbx), %ecx
	movslq	%ecx, %rcx
	movq	1520(%rsp), %rdx                # 8-byte Reload
	leal	(%rdx,%rbx), %edx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 4992(%rsp)               # 64-byte Spill
	.loc	1 28 29                         # gemm.py:28:29
	movslq	%edx, %rcx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 4928(%rsp)               # 64-byte Spill
	movq	1528(%rsp), %rcx                # 8-byte Reload
	.loc	1 28 29                         # gemm.py:28:29
	leal	(%rcx,%rbx), %ecx
	movslq	%ecx, %rcx
	movq	1536(%rsp), %rdx                # 8-byte Reload
	leal	(%rdx,%rbx), %edx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 4864(%rsp)               # 64-byte Spill
	.loc	1 28 29                         # gemm.py:28:29
	movslq	%edx, %rcx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 4800(%rsp)               # 64-byte Spill
	movq	1544(%rsp), %rcx                # 8-byte Reload
	.loc	1 28 29                         # gemm.py:28:29
	leal	(%rcx,%rbx), %ecx
	movslq	%ecx, %rcx
	movq	1552(%rsp), %rdx                # 8-byte Reload
	leal	(%rdx,%rbx), %edx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 4736(%rsp)               # 64-byte Spill
	.loc	1 28 29                         # gemm.py:28:29
	movslq	%edx, %rcx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 4672(%rsp)               # 64-byte Spill
	movq	1560(%rsp), %rcx                # 8-byte Reload
	.loc	1 28 29                         # gemm.py:28:29
	leal	(%rcx,%rbx), %ecx
	movslq	%ecx, %rcx
	movq	1568(%rsp), %rdx                # 8-byte Reload
	leal	(%rdx,%rbx), %edx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 4608(%rsp)               # 64-byte Spill
	.loc	1 28 29                         # gemm.py:28:29
	movslq	%edx, %rcx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 4544(%rsp)               # 64-byte Spill
	movq	1576(%rsp), %rcx                # 8-byte Reload
	.loc	1 28 29                         # gemm.py:28:29
	leal	(%rcx,%rbx), %ecx
	movslq	%ecx, %rcx
	movq	1584(%rsp), %rdx                # 8-byte Reload
	leal	(%rdx,%rbx), %edx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 4480(%rsp)               # 64-byte Spill
	.loc	1 28 29                         # gemm.py:28:29
	movslq	%edx, %rcx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 4416(%rsp)               # 64-byte Spill
	movq	1592(%rsp), %rcx                # 8-byte Reload
	.loc	1 28 29                         # gemm.py:28:29
	leal	(%rcx,%rbx), %ecx
	movslq	%ecx, %rcx
	movq	1600(%rsp), %rdx                # 8-byte Reload
	leal	(%rdx,%rbx), %edx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 4352(%rsp)               # 64-byte Spill
	.loc	1 28 29                         # gemm.py:28:29
	movslq	%edx, %rcx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 4288(%rsp)               # 64-byte Spill
	movq	1608(%rsp), %rcx                # 8-byte Reload
	.loc	1 28 29                         # gemm.py:28:29
	leal	(%rcx,%rbx), %ecx
	movslq	%ecx, %rcx
	movq	1616(%rsp), %rdx                # 8-byte Reload
	leal	(%rdx,%rbx), %edx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 4224(%rsp)               # 64-byte Spill
	.loc	1 28 29                         # gemm.py:28:29
	movslq	%edx, %rcx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 4160(%rsp)               # 64-byte Spill
	movq	1624(%rsp), %rcx                # 8-byte Reload
	.loc	1 28 29                         # gemm.py:28:29
	leal	(%rcx,%rbx), %ecx
	movslq	%ecx, %rcx
	movq	1632(%rsp), %rdx                # 8-byte Reload
	leal	(%rdx,%rbx), %edx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 4096(%rsp)               # 64-byte Spill
	.loc	1 28 29                         # gemm.py:28:29
	movslq	%edx, %rcx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 4032(%rsp)               # 64-byte Spill
	movq	1640(%rsp), %rcx                # 8-byte Reload
	.loc	1 28 29                         # gemm.py:28:29
	leal	(%rcx,%rbx), %ecx
	movslq	%ecx, %rcx
	movq	1648(%rsp), %rdx                # 8-byte Reload
	leal	(%rdx,%rbx), %edx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 3968(%rsp)               # 64-byte Spill
	.loc	1 28 29                         # gemm.py:28:29
	movslq	%edx, %rcx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 3904(%rsp)               # 64-byte Spill
	movq	1656(%rsp), %rcx                # 8-byte Reload
	.loc	1 28 29                         # gemm.py:28:29
	leal	(%rcx,%rbx), %ecx
	movslq	%ecx, %rcx
	movq	1664(%rsp), %rdx                # 8-byte Reload
	leal	(%rdx,%rbx), %edx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 3840(%rsp)               # 64-byte Spill
	.loc	1 28 29                         # gemm.py:28:29
	movslq	%edx, %rcx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 3776(%rsp)               # 64-byte Spill
	movq	1672(%rsp), %rcx                # 8-byte Reload
	.loc	1 28 29                         # gemm.py:28:29
	leal	(%rcx,%rbx), %ecx
	movslq	%ecx, %rcx
	movq	1680(%rsp), %rdx                # 8-byte Reload
	leal	(%rdx,%rbx), %edx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 3712(%rsp)               # 64-byte Spill
	.loc	1 28 29                         # gemm.py:28:29
	movslq	%edx, %rcx
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 3648(%rsp)               # 64-byte Spill
	movq	1688(%rsp), %rcx                # 8-byte Reload
	.loc	1 28 29                         # gemm.py:28:29
	leal	(%rcx,%rbx), %ecx
	movslq	%ecx, %rcx
	.loc	1 31 29 is_stmt 1               # gemm.py:31:29
	movslq	%r15d, %r11
	.loc	1 28 20                         # gemm.py:28:20
	vmovups	(%rdi,%rcx), %zmm0
	vmovaps	%zmm0, 3584(%rsp)               # 64-byte Spill
	.loc	1 31 29                         # gemm.py:31:29
	leal	(%r8,%r11), %eax
	cltq
	movq	%rax, 2240(%rsp)                # 8-byte Spill
	movq	1776(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	movslq	%eax, %r13
	movq	1728(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2176(%rsp)                # 8-byte Spill
	movq	1224(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2112(%rsp)                # 8-byte Spill
	movq	1272(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2048(%rsp)                # 8-byte Spill
	movq	1048(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 3520(%rsp)                # 8-byte Spill
	movq	1696(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 3456(%rsp)                # 8-byte Spill
	movq	1704(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 3392(%rsp)                # 8-byte Spill
	movq	1312(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 3328(%rsp)                # 8-byte Spill
	movq	1056(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 3264(%rsp)                # 8-byte Spill
	movq	1064(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 3200(%rsp)                # 8-byte Spill
	movq	1072(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 3136(%rsp)                # 8-byte Spill
	movq	1080(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 3072(%rsp)                # 8-byte Spill
	movq	1712(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 3008(%rsp)                # 8-byte Spill
	movq	1088(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2944(%rsp)                # 8-byte Spill
	movq	1760(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2880(%rsp)                # 8-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2816(%rsp)                # 8-byte Spill
	movq	1104(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2752(%rsp)                # 8-byte Spill
	movq	1112(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2688(%rsp)                # 8-byte Spill
	movq	1120(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2624(%rsp)                # 8-byte Spill
	movq	1128(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2560(%rsp)                # 8-byte Spill
	movq	1136(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2496(%rsp)                # 8-byte Spill
	movq	1720(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2432(%rsp)                # 8-byte Spill
	movq	1144(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2368(%rsp)                # 8-byte Spill
	movq	1160(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2040(%rsp)                # 8-byte Spill
	movq	1152(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2304(%rsp)                # 8-byte Spill
	movq	1184(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2032(%rsp)                # 8-byte Spill
	movq	1168(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2024(%rsp)                # 8-byte Spill
	movq	1176(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2016(%rsp)                # 8-byte Spill
	movq	1736(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2008(%rsp)                # 8-byte Spill
	movq	1744(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 2000(%rsp)                # 8-byte Spill
	movq	1752(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1992(%rsp)                # 8-byte Spill
	movq	1192(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1984(%rsp)                # 8-byte Spill
	movq	1200(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1976(%rsp)                # 8-byte Spill
	movq	1208(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1968(%rsp)                # 8-byte Spill
	movq	1216(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1960(%rsp)                # 8-byte Spill
	movq	1232(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1952(%rsp)                # 8-byte Spill
	movq	1240(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1944(%rsp)                # 8-byte Spill
	movq	1248(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1936(%rsp)                # 8-byte Spill
	movq	1256(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1928(%rsp)                # 8-byte Spill
	movq	1264(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1920(%rsp)                # 8-byte Spill
	movq	1280(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1912(%rsp)                # 8-byte Spill
	movq	1288(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1904(%rsp)                # 8-byte Spill
	movq	1296(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1896(%rsp)                # 8-byte Spill
	movq	1304(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1888(%rsp)                # 8-byte Spill
	movq	1320(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1880(%rsp)                # 8-byte Spill
	movq	1328(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1872(%rsp)                # 8-byte Spill
	movq	1336(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1864(%rsp)                # 8-byte Spill
	movq	1344(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1856(%rsp)                # 8-byte Spill
	movq	1352(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1848(%rsp)                # 8-byte Spill
	movq	1360(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1840(%rsp)                # 8-byte Spill
	movq	1368(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1832(%rsp)                # 8-byte Spill
	movq	1376(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1824(%rsp)                # 8-byte Spill
	movq	1384(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1816(%rsp)                # 8-byte Spill
	movq	1392(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	movq	%rax, 1808(%rsp)                # 8-byte Spill
	movq	1400(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	movslq	%eax, %r12
	movq	1408(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	movslq	%eax, %r15
	movq	1416(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	movslq	%eax, %r14
	movq	1424(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	movslq	%eax, %r10
	movq	1432(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	movq	%r8, %r9
	movslq	%eax, %r8
	movq	1440(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	movslq	%eax, %rdx
	movq	1768(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	movslq	%eax, %rcx
	movq	1784(%rsp), %rax                # 8-byte Reload
	leal	(%rax,%r11), %eax
	cltq
	.loc	1 34 25                         # gemm.py:34:25
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 5376(%rsp)       # 64-byte Spill
	movq	2176(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 5440(%rsp)       # 64-byte Spill
	movq	2240(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm5      # zmm5 = mem[0,1,2,3,0,1,2,3]
	movq	3520(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 5504(%rsp)       # 64-byte Spill
	movq	2112(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm22     # zmm22 = mem[0,1,2,3,0,1,2,3]
	movq	3456(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 5568(%rsp)       # 64-byte Spill
	movq	2048(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm14     # zmm14 = mem[0,1,2,3,0,1,2,3]
	movq	3264(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 5632(%rsp)       # 64-byte Spill
	movq	3392(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm25     # zmm25 = mem[0,1,2,3,0,1,2,3]
	movq	3200(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 5696(%rsp)       # 64-byte Spill
	movq	3328(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm15     # zmm15 = mem[0,1,2,3,0,1,2,3]
	movq	3008(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 5760(%rsp)       # 64-byte Spill
	movq	3136(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm30     # zmm30 = mem[0,1,2,3,0,1,2,3]
	movq	2944(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 5824(%rsp)       # 64-byte Spill
	movq	3072(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm23     # zmm23 = mem[0,1,2,3,0,1,2,3]
	movq	2752(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 5888(%rsp)       # 64-byte Spill
	movq	2880(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm1      # zmm1 = mem[0,1,2,3,0,1,2,3]
	movq	2688(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 5952(%rsp)       # 64-byte Spill
	movq	2816(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm29     # zmm29 = mem[0,1,2,3,0,1,2,3]
	movq	2496(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 6016(%rsp)       # 64-byte Spill
	movq	2624(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm10     # zmm10 = mem[0,1,2,3,0,1,2,3]
	movq	2432(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 6080(%rsp)       # 64-byte Spill
	movq	2560(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm7      # zmm7 = mem[0,1,2,3,0,1,2,3]
	movq	2304(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 2304(%rsp)       # 64-byte Spill
	movq	2368(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm18     # zmm18 = mem[0,1,2,3,0,1,2,3]
	movq	2032(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 2368(%rsp)       # 64-byte Spill
	movq	2040(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm9      # zmm9 = mem[0,1,2,3,0,1,2,3]
	movq	2008(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 2432(%rsp)       # 64-byte Spill
	movq	2024(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm26     # zmm26 = mem[0,1,2,3,0,1,2,3]
	movq	2000(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 2496(%rsp)       # 64-byte Spill
	movq	2016(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm17     # zmm17 = mem[0,1,2,3,0,1,2,3]
	movq	1976(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 2560(%rsp)       # 64-byte Spill
	movq	1992(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm28     # zmm28 = mem[0,1,2,3,0,1,2,3]
	movq	1968(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 2624(%rsp)       # 64-byte Spill
	movq	1984(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm19     # zmm19 = mem[0,1,2,3,0,1,2,3]
	movq	1944(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 2688(%rsp)       # 64-byte Spill
	movq	1960(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm24     # zmm24 = mem[0,1,2,3,0,1,2,3]
	movq	1936(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 2752(%rsp)       # 64-byte Spill
	movq	1952(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm31     # zmm31 = mem[0,1,2,3,0,1,2,3]
	movq	1912(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 2816(%rsp)       # 64-byte Spill
	movq	1928(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm20     # zmm20 = mem[0,1,2,3,0,1,2,3]
	movq	1904(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 2880(%rsp)       # 64-byte Spill
	movq	1920(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm27     # zmm27 = mem[0,1,2,3,0,1,2,3]
	movq	1880(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 2944(%rsp)       # 64-byte Spill
	movq	1896(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm16     # zmm16 = mem[0,1,2,3,0,1,2,3]
	movq	1872(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 3008(%rsp)       # 64-byte Spill
	movq	1888(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm21     # zmm21 = mem[0,1,2,3,0,1,2,3]
	movq	1848(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 3136(%rsp)       # 64-byte Spill
	movq	1864(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm12     # zmm12 = mem[0,1,2,3,0,1,2,3]
	movq	1840(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 3200(%rsp)       # 64-byte Spill
	movq	1856(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 3072(%rsp)       # 64-byte Spill
	movq	1816(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 3328(%rsp)       # 64-byte Spill
	movq	1832(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm8      # zmm8 = mem[0,1,2,3,0,1,2,3]
	movq	1808(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 3392(%rsp)       # 64-byte Spill
	movq	1824(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 3264(%rsp)       # 64-byte Spill
	vbroadcasti64x4	(%rsi,%r14), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 3520(%rsp)       # 64-byte Spill
	movw	$16, %r14w
	vbroadcasti64x4	(%rsi,%r12), %zmm13     # zmm13 = mem[0,1,2,3,0,1,2,3]
	vbroadcasti64x4	(%rsi,%r10), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 2048(%rsp)       # 64-byte Spill
	movw	$64, %r10w
	vbroadcasti64x4	(%rsi,%r15), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 3456(%rsp)       # 64-byte Spill
	vbroadcasti64x4	(%rsi,%rcx), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 2176(%rsp)       # 64-byte Spill
	vbroadcasti64x4	(%rsi,%r8), %zmm11      # zmm11 = mem[0,1,2,3,0,1,2,3]
	movq	%r9, %r8
	vbroadcasti64x4	(%rsi,%rax), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 2240(%rsp)       # 64-byte Spill
	vbroadcasti64x4	(%rsi,%rdx), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm0, 2112(%rsp)       # 64-byte Spill
	vbroadcasti64x4	(%rsi,%r11), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	vmovaps	%zmm2, 12288(%rsp)
	vmovaps	%zmm3, 12352(%rsp)
	vmovaps	%zmm4, 12416(%rsp)
	vmovaps	%zmm6, 12480(%rsp)
	vmovaps	5312(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 12544(%rsp)
	vmovaps	5248(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 12608(%rsp)
	vmovaps	5184(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 12672(%rsp)
	vmovaps	5120(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 12736(%rsp)
	vmovaps	5056(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 12800(%rsp)
	vmovaps	4992(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 12864(%rsp)
	vmovaps	4928(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 12928(%rsp)
	vmovaps	4864(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 12992(%rsp)
	vmovaps	4800(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 13056(%rsp)
	vmovaps	4736(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 13120(%rsp)
	vmovaps	4672(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 13184(%rsp)
	vmovaps	4608(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 13248(%rsp)
	vmovaps	4544(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 13312(%rsp)
	vmovaps	4480(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 13376(%rsp)
	vmovaps	4416(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 13440(%rsp)
	vmovaps	4352(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 13504(%rsp)
	vmovaps	4288(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 13568(%rsp)
	vmovaps	4224(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 13632(%rsp)
	vmovaps	4160(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 13696(%rsp)
	vmovaps	4096(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 13760(%rsp)
	vmovaps	4032(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 13824(%rsp)
	vmovaps	3968(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 13888(%rsp)
	vmovaps	3904(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 13952(%rsp)
	vmovaps	3840(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 14016(%rsp)
	vmovaps	3776(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 14080(%rsp)
	vmovaps	3712(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 14144(%rsp)
	vmovaps	3648(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 14208(%rsp)
	vmovaps	3584(%rsp), %zmm2               # 64-byte Reload
	vmovaps	%zmm2, 14272(%rsp)
	vmovdqa64	.LCPI0_0(%rip), %zmm2   # zmm2 = [0,64,1,65,2,66,3,67,4,68,5,69,6,70,7,71,8,72,9,73,10,74,11,75,12,76,13,77,14,78,15,79,48,112,49,113,50,114,51,115,52,116,53,117,54,118,55,119,56,120,57,121,58,122,59,123,60,124,61,125,62,126,63,127]
	vpermt2b	5376(%rsp), %zmm2, %zmm0        # 64-byte Folded Reload
	vpermt2b	5440(%rsp), %zmm2, %zmm5        # 64-byte Folded Reload
	vpermt2b	5504(%rsp), %zmm2, %zmm22       # 64-byte Folded Reload
	vmovdqa64	%zmm0, %zmm4
	vmovdqa64	.LCPI0_1(%rip), %zmm3   # zmm3 = [0,64,1,65,2,66,3,67,4,68,5,69,6,70,7,71,8,72,9,73,10,74,11,75,12,76,13,77,14,78,15,79,16,80,17,81,18,82,19,83,20,84,21,85,22,86,23,87,24,88,25,89,26,90,27,91,28,92,29,93,30,94,31,95]
	vpermt2b	%zmm5, %zmm3, %zmm4
	vmovdqa64	.LCPI0_2(%rip), %zmm6   # zmm6 = [32,96,33,97,34,98,35,99,36,100,37,101,38,102,39,103,40,104,41,105,42,106,43,107,44,108,45,109,46,110,47,111,48,112,49,113,50,114,51,115,52,116,53,117,54,118,55,119,56,120,57,121,58,122,59,123,60,124,61,125,62,126,63,127]
	vpermt2b	%zmm5, %zmm6, %zmm0
	vpermt2b	5568(%rsp), %zmm2, %zmm14       # 64-byte Folded Reload
	vmovdqa64	%zmm22, %zmm5
	vpermt2b	%zmm14, %zmm3, %zmm5
	vpermt2b	%zmm14, %zmm6, %zmm22
	vmovdqa64	%zmm0, 10304(%rsp)
	vpermt2b	5632(%rsp), %zmm2, %zmm25       # 64-byte Folded Reload
	vmovdqa64	%zmm4, 10240(%rsp)
	vpermt2b	5696(%rsp), %zmm2, %zmm15       # 64-byte Folded Reload
	vmovdqa64	%zmm25, %zmm0
	vpermt2b	%zmm15, %zmm3, %zmm0
	vpermt2b	%zmm15, %zmm6, %zmm25
	vmovdqa64	%zmm22, 10432(%rsp)
	vpermt2b	5760(%rsp), %zmm2, %zmm30       # 64-byte Folded Reload
	vmovdqa64	%zmm5, 10368(%rsp)
	vpermt2b	5824(%rsp), %zmm2, %zmm23       # 64-byte Folded Reload
	vmovdqa64	%zmm30, %zmm4
	vpermt2b	%zmm23, %zmm3, %zmm4
	vpermt2b	%zmm23, %zmm6, %zmm30
	vmovdqa64	%zmm25, 10560(%rsp)
	vpermt2b	5888(%rsp), %zmm2, %zmm1        # 64-byte Folded Reload
	vmovdqa64	%zmm0, 10496(%rsp)
	vpermt2b	5952(%rsp), %zmm2, %zmm29       # 64-byte Folded Reload
	vmovdqa64	%zmm1, %zmm0
	vpermt2b	%zmm29, %zmm3, %zmm0
	vpermt2b	%zmm29, %zmm6, %zmm1
	vmovdqa64	%zmm30, 10688(%rsp)
	vpermt2b	6016(%rsp), %zmm2, %zmm10       # 64-byte Folded Reload
	vmovdqa64	%zmm4, 10624(%rsp)
	vpermt2b	6080(%rsp), %zmm2, %zmm7        # 64-byte Folded Reload
	vmovdqa64	%zmm10, %zmm4
	vpermt2b	%zmm7, %zmm3, %zmm4
	vpermt2b	%zmm7, %zmm6, %zmm10
	vmovdqa64	%zmm1, 10816(%rsp)
	vpermt2b	2304(%rsp), %zmm2, %zmm18       # 64-byte Folded Reload
	vmovdqa64	%zmm0, 10752(%rsp)
	vpermt2b	2368(%rsp), %zmm2, %zmm9        # 64-byte Folded Reload
	vmovdqa64	%zmm18, %zmm0
	vpermt2b	%zmm9, %zmm3, %zmm0
	vpermt2b	%zmm9, %zmm6, %zmm18
	vmovdqa64	%zmm10, 10944(%rsp)
	vpermt2b	2432(%rsp), %zmm2, %zmm26       # 64-byte Folded Reload
	vmovdqa64	%zmm4, 10880(%rsp)
	vpermt2b	2496(%rsp), %zmm2, %zmm17       # 64-byte Folded Reload
	vmovdqa64	%zmm26, %zmm1
	vpermt2b	%zmm17, %zmm3, %zmm1
	vpermt2b	%zmm17, %zmm6, %zmm26
	vmovdqa64	%zmm18, 11072(%rsp)
	vpermt2b	2560(%rsp), %zmm2, %zmm28       # 64-byte Folded Reload
	vmovdqa64	%zmm0, 11008(%rsp)
	vpermt2b	2624(%rsp), %zmm2, %zmm19       # 64-byte Folded Reload
	vmovdqa64	%zmm28, %zmm0
	vpermt2b	%zmm19, %zmm3, %zmm0
	vpermt2b	%zmm19, %zmm6, %zmm28
	vmovdqa64	%zmm26, 11200(%rsp)
	vpermt2b	2688(%rsp), %zmm2, %zmm24       # 64-byte Folded Reload
	vmovdqa64	%zmm1, 11136(%rsp)
	vpermt2b	2752(%rsp), %zmm2, %zmm31       # 64-byte Folded Reload
	vmovdqa64	%zmm24, %zmm1
	vpermt2b	%zmm31, %zmm3, %zmm1
	vpermt2b	%zmm31, %zmm6, %zmm24
	vmovdqa64	%zmm28, 11328(%rsp)
	vpermt2b	2816(%rsp), %zmm2, %zmm20       # 64-byte Folded Reload
	vmovdqa64	%zmm0, 11264(%rsp)
	vpermt2b	2880(%rsp), %zmm2, %zmm27       # 64-byte Folded Reload
	vmovdqa64	%zmm20, %zmm0
	vpermt2b	%zmm27, %zmm3, %zmm0
	vpermt2b	%zmm27, %zmm6, %zmm20
	vmovdqa64	%zmm24, 11456(%rsp)
	vpermt2b	2944(%rsp), %zmm2, %zmm16       # 64-byte Folded Reload
	vmovdqa64	%zmm1, 11392(%rsp)
	vpermt2b	3008(%rsp), %zmm2, %zmm21       # 64-byte Folded Reload
	vmovdqa64	%zmm16, %zmm1
	vpermt2b	%zmm21, %zmm3, %zmm1
	vpermt2b	%zmm21, %zmm6, %zmm16
	vmovdqa64	%zmm20, 11584(%rsp)
	vpermt2b	3136(%rsp), %zmm2, %zmm12       # 64-byte Folded Reload
	vmovdqa64	%zmm0, 11520(%rsp)
	vmovdqa64	3072(%rsp), %zmm4       # 64-byte Reload
	vpermt2b	3200(%rsp), %zmm2, %zmm4        # 64-byte Folded Reload
	vmovdqa64	%zmm12, %zmm0
	vpermt2b	%zmm4, %zmm3, %zmm0
	vpermt2b	%zmm4, %zmm6, %zmm12
	vmovdqa64	%zmm16, 11712(%rsp)
	vpermt2b	3328(%rsp), %zmm2, %zmm8        # 64-byte Folded Reload
	vmovdqa64	%zmm1, 11648(%rsp)
	vmovdqa64	3264(%rsp), %zmm4       # 64-byte Reload
	vpermt2b	3392(%rsp), %zmm2, %zmm4        # 64-byte Folded Reload
	vmovdqa64	%zmm8, %zmm1
	vpermt2b	%zmm4, %zmm3, %zmm1
	vpermt2b	%zmm4, %zmm6, %zmm8
	vmovdqa64	%zmm12, 11840(%rsp)
	vpermt2b	3520(%rsp), %zmm2, %zmm13       # 64-byte Folded Reload
	vmovdqa64	%zmm0, 11776(%rsp)
	vmovdqa64	3456(%rsp), %zmm4       # 64-byte Reload
	vpermt2b	2048(%rsp), %zmm2, %zmm4        # 64-byte Folded Reload
	vmovdqa64	%zmm13, %zmm0
	vpermt2b	%zmm4, %zmm3, %zmm0
	vpermt2b	%zmm4, %zmm6, %zmm13
	vmovdqa64	%zmm8, 11968(%rsp)
	vpermt2b	2176(%rsp), %zmm2, %zmm11       # 64-byte Folded Reload
	vmovdqa64	%zmm1, 11904(%rsp)
	vmovdqa64	2112(%rsp), %zmm4       # 64-byte Reload
	vpermt2b	2240(%rsp), %zmm2, %zmm4        # 64-byte Folded Reload
	vmovdqa64	%zmm11, %zmm1
	vpermt2b	%zmm4, %zmm3, %zmm1
	vpermt2b	%zmm4, %zmm6, %zmm11
	vmovdqa64	%zmm13, 12096(%rsp)
	vmovdqa64	%zmm0, 12032(%rsp)
	vmovdqa64	%zmm11, 12224(%rsp)
	vmovdqa64	%zmm1, 12160(%rsp)
	movl	$64, %ecx
	leaq	12288(%rsp), %rax
	tileloadd	(%rax,%rcx), %tmm4
	leaq	13312(%rsp), %rax
	tileloadd	(%rax,%rcx), %tmm5
	movl	$128, %ecx
	leaq	10240(%rsp), %rax
	tileloadd	(%rax,%rcx), %tmm6
	tdpbssd	%tmm6, %tmm4, %tmm0
	tdpbssd	%tmm6, %tmm5, %tmm2
	leaq	10304(%rsp), %rax
	tileloadd	(%rax,%rcx), %tmm6
	tdpbssd	%tmm6, %tmm4, %tmm3
	tdpbssd	%tmm6, %tmm5, %tmm1
	.loc	1 23 25                         # gemm.py:23:25
	addl	$64, %ebx
	movq	1792(%rsp), %rax                # 8-byte Reload
	leal	(%r11,%rax), %r15d
	cmpl	936(%rsp), %ebx                 # 4-byte Folded Reload
	jl	.LBB0_3
# %bb.4:
	.loc	1 0 25 is_stmt 0                # gemm.py:0:25
	movq	1040(%rsp), %rdx                # 8-byte Reload
	movl	964(%rsp), %r15d                # 4-byte Reload
	movl	960(%rsp), %r9d                 # 4-byte Reload
	movl	956(%rsp), %r12d                # 4-byte Reload
	movl	952(%rsp), %r13d                # 4-byte Reload
	movl	948(%rsp), %r10d                # 4-byte Reload
	movl	944(%rsp), %r11d                # 4-byte Reload
	movl	940(%rsp), %ebx                 # 4-byte Reload
	movq	1032(%rsp), %r14                # 8-byte Reload
	jmp	.LBB0_5
.LBB0_1:                                # %.._crit_edge_crit_edge
	.loc	1 12 36 is_stmt 1               # gemm.py:12:36
	movl	%ecx, %ebx
	orl	$1, %ebx
	movl	%ecx, %r11d
	orl	$2, %r11d
	movl	%ecx, %r10d
	orl	$3, %r10d
	movl	%ecx, %r13d
	orl	$4, %r13d
	movl	%ecx, %r12d
	orl	$5, %r12d
	movl	%ecx, %r9d
	orl	$6, %r9d
	movl	%ecx, %eax
	orl	$7, %eax
	movl	%eax, 836(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$8, %eax
	movl	%eax, 840(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$9, %eax
	movl	%eax, 844(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$10, %eax
	movl	%eax, 848(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$11, %eax
	movl	%eax, 852(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$12, %eax
	movl	%eax, 856(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$13, %eax
	movl	%eax, 860(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$14, %eax
	movl	%eax, 864(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$15, %eax
	movl	%eax, 868(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$16, %eax
	movl	%eax, 872(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$17, %eax
	movl	%eax, 876(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$18, %eax
	movl	%eax, 880(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$19, %eax
	movl	%eax, 884(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$20, %eax
	movl	%eax, 888(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$21, %eax
	movl	%eax, 892(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$22, %eax
	movl	%eax, 896(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$23, %eax
	movl	%eax, 900(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$24, %eax
	movl	%eax, 904(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$25, %eax
	movl	%eax, 908(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$26, %eax
	movl	%eax, 912(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$27, %eax
	movl	%eax, 916(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$28, %eax
	movl	%eax, 920(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$29, %eax
	movl	%eax, 924(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$30, %eax
	movl	%eax, 928(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	orl	$31, %eax
	movl	%eax, 932(%rsp)                 # 4-byte Spill
	movabsq	$64, %rax
	tilestored	%tmm0, 17408(%rsp,%rax) # 1024-byte Folded Spill
	tileloadd	17408(%rsp,%rax), %tmm3 # 1024-byte Folded Reload
	tilestored	%tmm0, 18432(%rsp,%rax) # 1024-byte Folded Spill
	tileloadd	18432(%rsp,%rax), %tmm2 # 1024-byte Folded Reload
	tilestored	%tmm0, 19456(%rsp,%rax) # 1024-byte Folded Spill
	tileloadd	19456(%rsp,%rax), %tmm1 # 1024-byte Folded Reload
	movq	%rcx, %r14
.LBB0_5:                                # %._crit_edge
	.loc	1 0 36 is_stmt 0                # gemm.py:0:36
	movl	$128, %eax
	leaq	6144(%rsp), %rcx
	movw	$64, %di
	movw	$16, %si
	.loc	1 34 25 is_stmt 1               # gemm.py:34:25
	tilestored	%tmm0, (%rcx,%rax)
	leaq	6208(%rsp), %rcx
	tilestored	%tmm3, (%rcx,%rax)
	leaq	8192(%rsp), %rcx
	tilestored	%tmm2, (%rcx,%rax)
	leaq	8256(%rsp), %rcx
	tilestored	%tmm1, (%rcx,%rax)
	vmovaps	6144(%rsp), %zmm1
	vmovaps	6208(%rsp), %zmm0
	vmovaps	6272(%rsp), %zmm3
	vmovaps	6336(%rsp), %zmm2
	vmovaps	6400(%rsp), %zmm5
	vmovaps	6464(%rsp), %zmm4
	vmovaps	6528(%rsp), %zmm7
	vmovaps	6592(%rsp), %zmm6
	vmovaps	6656(%rsp), %zmm9
	vmovaps	6720(%rsp), %zmm8
	vmovaps	6784(%rsp), %zmm11
	vmovaps	6848(%rsp), %zmm10
	vmovaps	6912(%rsp), %zmm13
	vmovaps	6976(%rsp), %zmm12
	vmovaps	7040(%rsp), %zmm15
	vmovaps	7104(%rsp), %zmm14
	vmovaps	7168(%rsp), %zmm17
	vmovaps	7232(%rsp), %zmm16
	vmovaps	7296(%rsp), %zmm21
	vmovaps	7360(%rsp), %zmm20
	vmovaps	7424(%rsp), %zmm25
	vmovaps	7488(%rsp), %zmm24
	vmovaps	7552(%rsp), %zmm29
	vmovaps	7616(%rsp), %zmm28
	vmovaps	7680(%rsp), %zmm18
	vmovaps	%zmm18, 2176(%rsp)              # 64-byte Spill
	vmovaps	7744(%rsp), %zmm18
	vmovaps	%zmm18, 2112(%rsp)              # 64-byte Spill
	vmovaps	7808(%rsp), %zmm18
	vmovaps	%zmm18, 3712(%rsp)              # 64-byte Spill
	vmovaps	7872(%rsp), %zmm18
	vmovaps	%zmm18, 3648(%rsp)              # 64-byte Spill
	vmovaps	7936(%rsp), %zmm18
	vmovaps	%zmm18, 3968(%rsp)              # 64-byte Spill
	vmovaps	8000(%rsp), %zmm18
	vmovaps	%zmm18, 3904(%rsp)              # 64-byte Spill
	vmovaps	8064(%rsp), %zmm18
	vmovaps	%zmm18, 4224(%rsp)              # 64-byte Spill
	vmovaps	8128(%rsp), %zmm18
	vmovaps	%zmm18, 4160(%rsp)              # 64-byte Spill
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %r14d
	.loc	1 37 44 is_stmt 0               # gemm.py:37:44
	addl	%r15d, %r14d
	.loc	1 37 22                         # gemm.py:37:22
	movslq	%r14d, %rax
	.loc	1 34 25 is_stmt 1               # gemm.py:34:25
	vmovaps	8192(%rsp), %zmm19
	vmovaps	8256(%rsp), %zmm18
	vmovaps	8320(%rsp), %zmm23
	vmovaps	8384(%rsp), %zmm22
	vmovaps	8448(%rsp), %zmm27
	vmovaps	8512(%rsp), %zmm26
	vmovaps	8576(%rsp), %zmm30
	vmovaps	%zmm30, 2048(%rsp)              # 64-byte Spill
	vmovaps	8640(%rsp), %zmm30
	vmovaps	8704(%rsp), %zmm31
	vmovaps	%zmm31, 3584(%rsp)              # 64-byte Spill
	vmovaps	8768(%rsp), %zmm31
	vmovaps	%zmm31, 2240(%rsp)              # 64-byte Spill
	vmovaps	8832(%rsp), %zmm31
	vmovaps	%zmm31, 3840(%rsp)              # 64-byte Spill
	vmovaps	8896(%rsp), %zmm31
	vmovaps	%zmm31, 3776(%rsp)              # 64-byte Spill
	vmovaps	8960(%rsp), %zmm31
	vmovaps	%zmm31, 4096(%rsp)              # 64-byte Spill
	vmovaps	9024(%rsp), %zmm31
	vmovaps	%zmm31, 4032(%rsp)              # 64-byte Spill
	vmovaps	9088(%rsp), %zmm31
	vmovaps	%zmm31, 4352(%rsp)              # 64-byte Spill
	vmovaps	9152(%rsp), %zmm31
	vmovaps	%zmm31, 4288(%rsp)              # 64-byte Spill
	vmovaps	9216(%rsp), %zmm31
	vmovaps	%zmm31, 4480(%rsp)              # 64-byte Spill
	vmovaps	9280(%rsp), %zmm31
	vmovaps	%zmm31, 4416(%rsp)              # 64-byte Spill
	vmovaps	9344(%rsp), %zmm31
	vmovaps	%zmm31, 4608(%rsp)              # 64-byte Spill
	vmovaps	9408(%rsp), %zmm31
	vmovaps	%zmm31, 4544(%rsp)              # 64-byte Spill
	vmovaps	9472(%rsp), %zmm31
	vmovaps	%zmm31, 4736(%rsp)              # 64-byte Spill
	vmovaps	9536(%rsp), %zmm31
	vmovaps	%zmm31, 4672(%rsp)              # 64-byte Spill
	vmovaps	9600(%rsp), %zmm31
	vmovaps	%zmm31, 4864(%rsp)              # 64-byte Spill
	vmovaps	9664(%rsp), %zmm31
	vmovaps	%zmm31, 4800(%rsp)              # 64-byte Spill
	vmovaps	9728(%rsp), %zmm31
	vmovaps	%zmm31, 4992(%rsp)              # 64-byte Spill
	vmovaps	9792(%rsp), %zmm31
	vmovaps	%zmm31, 4928(%rsp)              # 64-byte Spill
	vmovaps	9856(%rsp), %zmm31
	vmovaps	%zmm31, 5120(%rsp)              # 64-byte Spill
	vmovaps	9920(%rsp), %zmm31
	vmovaps	%zmm31, 5056(%rsp)              # 64-byte Spill
	vmovaps	9984(%rsp), %zmm31
	vmovaps	%zmm31, 5248(%rsp)              # 64-byte Spill
	vmovaps	10048(%rsp), %zmm31
	vmovaps	%zmm31, 5184(%rsp)              # 64-byte Spill
	vmovaps	10112(%rsp), %zmm31
	vmovaps	%zmm31, 5312(%rsp)              # 64-byte Spill
	vmovaps	10176(%rsp), %zmm31
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm0, 64(%rdx,%rax,4)
	vmovups	%zmm1, (%rdx,%rax,4)
	.loc	1 37 40 is_stmt 0               # gemm.py:37:40
	imull	%r8d, %ebx
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %ebx
	.loc	1 37 22                         # gemm.py:37:22
	movslq	%ebx, %rax
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm2, 64(%rdx,%rax,4)
	vmovups	%zmm3, (%rdx,%rax,4)
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %r11d
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %r11d
	.loc	1 37 22                         # gemm.py:37:22
	movslq	%r11d, %rax
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm4, 64(%rdx,%rax,4)
	vmovups	%zmm5, (%rdx,%rax,4)
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %r10d
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %r10d
	.loc	1 37 22                         # gemm.py:37:22
	movslq	%r10d, %rax
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm6, 64(%rdx,%rax,4)
	vmovups	%zmm7, (%rdx,%rax,4)
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %r13d
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %r13d
	.loc	1 37 22                         # gemm.py:37:22
	movslq	%r13d, %rax
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm8, 64(%rdx,%rax,4)
	vmovups	%zmm9, (%rdx,%rax,4)
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %r12d
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %r12d
	.loc	1 37 22                         # gemm.py:37:22
	movslq	%r12d, %rax
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm10, 64(%rdx,%rax,4)
	vmovups	%zmm11, (%rdx,%rax,4)
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %r9d
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %r9d
	.loc	1 37 22                         # gemm.py:37:22
	movslq	%r9d, %rax
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm12, 64(%rdx,%rax,4)
	vmovups	%zmm13, (%rdx,%rax,4)
	movl	836(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm14, 64(%rdx,%rax,4)
	vmovups	%zmm15, (%rdx,%rax,4)
	movl	840(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm16, 64(%rdx,%rax,4)
	vmovups	%zmm17, (%rdx,%rax,4)
	movl	844(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm20, 64(%rdx,%rax,4)
	vmovups	%zmm21, (%rdx,%rax,4)
	movl	848(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm24, 64(%rdx,%rax,4)
	vmovups	%zmm25, (%rdx,%rax,4)
	movl	852(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm28, 64(%rdx,%rax,4)
	vmovups	%zmm29, (%rdx,%rax,4)
	movl	856(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	vmovaps	2112(%rsp), %zmm0               # 64-byte Reload
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm0, 64(%rdx,%rax,4)
	vmovaps	2176(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rdx,%rax,4)
	movl	860(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	vmovaps	3648(%rsp), %zmm0               # 64-byte Reload
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm0, 64(%rdx,%rax,4)
	vmovaps	3712(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rdx,%rax,4)
	movl	864(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	vmovaps	3904(%rsp), %zmm0               # 64-byte Reload
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm0, 64(%rdx,%rax,4)
	vmovaps	3968(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rdx,%rax,4)
	movl	868(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	vmovaps	4160(%rsp), %zmm0               # 64-byte Reload
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm0, 64(%rdx,%rax,4)
	vmovaps	4224(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rdx,%rax,4)
	movl	872(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm18, 64(%rdx,%rax,4)
	vmovups	%zmm19, (%rdx,%rax,4)
	movl	876(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm22, 64(%rdx,%rax,4)
	vmovups	%zmm23, (%rdx,%rax,4)
	movl	880(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm26, 64(%rdx,%rax,4)
	vmovups	%zmm27, (%rdx,%rax,4)
	movl	884(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm30, 64(%rdx,%rax,4)
	vmovaps	2048(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rdx,%rax,4)
	movl	888(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	vmovaps	2240(%rsp), %zmm0               # 64-byte Reload
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm0, 64(%rdx,%rax,4)
	vmovaps	3584(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rdx,%rax,4)
	movl	892(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	vmovaps	3776(%rsp), %zmm0               # 64-byte Reload
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm0, 64(%rdx,%rax,4)
	vmovaps	3840(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rdx,%rax,4)
	movl	896(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	vmovaps	4032(%rsp), %zmm0               # 64-byte Reload
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm0, 64(%rdx,%rax,4)
	vmovaps	4096(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rdx,%rax,4)
	movl	900(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	vmovaps	4288(%rsp), %zmm0               # 64-byte Reload
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm0, 64(%rdx,%rax,4)
	vmovaps	4352(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rdx,%rax,4)
	movl	904(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	vmovaps	4416(%rsp), %zmm0               # 64-byte Reload
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm0, 64(%rdx,%rax,4)
	vmovaps	4480(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rdx,%rax,4)
	movl	908(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	vmovaps	4544(%rsp), %zmm0               # 64-byte Reload
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm0, 64(%rdx,%rax,4)
	vmovaps	4608(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rdx,%rax,4)
	movl	912(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	vmovaps	4672(%rsp), %zmm0               # 64-byte Reload
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm0, 64(%rdx,%rax,4)
	vmovaps	4736(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rdx,%rax,4)
	movl	916(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	vmovaps	4800(%rsp), %zmm0               # 64-byte Reload
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm0, 64(%rdx,%rax,4)
	vmovaps	4864(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rdx,%rax,4)
	movl	920(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	vmovaps	4928(%rsp), %zmm0               # 64-byte Reload
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm0, 64(%rdx,%rax,4)
	vmovaps	4992(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rdx,%rax,4)
	movl	924(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	vmovaps	5056(%rsp), %zmm0               # 64-byte Reload
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm0, 64(%rdx,%rax,4)
	vmovaps	5120(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rdx,%rax,4)
	movl	928(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	vmovaps	5184(%rsp), %zmm0               # 64-byte Reload
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm0, 64(%rdx,%rax,4)
	vmovaps	5248(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rdx,%rax,4)
	movl	932(%rsp), %eax                 # 4-byte Reload
	.loc	1 37 40                         # gemm.py:37:40
	imull	%r8d, %eax
	.loc	1 37 44                         # gemm.py:37:44
	addl	%r15d, %eax
	.loc	1 37 22                         # gemm.py:37:22
	cltq
	.loc	1 37 62                         # gemm.py:37:62
	vmovups	%zmm31, 64(%rdx,%rax,4)
	vmovaps	5312(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rdx,%rax,4)
	.loc	1 37 4                          # gemm.py:37:4
	leaq	-40(%rbp), %rsp
	.loc	1 37 4 epilogue_begin           # gemm.py:37:4
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	tilerelease
	vzeroupper
	retq
.Ltmp2:
.Lfunc_end0:
	.size	gemm_kernel, .Lfunc_end0-gemm_kernel
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
	.asciz	"gemm.py"                       # string offset=7
.Linfo_string2:
	.asciz	"/root/XSAI/Triton/triton-cpu/xsai" # string offset=15
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
