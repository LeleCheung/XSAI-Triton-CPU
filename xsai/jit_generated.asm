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
	.file	1 "/root/XSAI/Triton/triton-cpu/xsai" "gemm_test.py"
	.loc	1 21 0                          # gemm_test.py:21:0
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
	subq	$16384, %rsp                    # imm = 0x4000
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu64	%zmm0, 216(%rsp)
	movb	$1, 216(%rsp)
	movb	$16, 264(%rsp)
	movw	$64, 232(%rsp)
	movb	$16, 265(%rsp)
	movw	$64, 234(%rsp)
	movb	$16, 266(%rsp)
	movw	$64, 236(%rsp)
	movb	$16, 267(%rsp)
	movw	$64, 238(%rsp)
	movb	$16, 268(%rsp)
	movw	$32, 240(%rsp)
	movb	$16, 269(%rsp)
	movw	$32, 242(%rsp)
	movb	$8, 270(%rsp)
	movw	$64, 244(%rsp)
	ldtilecfg	216(%rsp)
                                        # kill: def $r8d killed $r8d def $r8
	movq	%rdx, 288(%rsp)                 # 8-byte Spill
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r13d
.Ltmp0:
	.loc	1 30 21 prologue_end            # gemm_test.py:30:21
	shll	$5, %r13d
	.loc	1 31 21                         # gemm_test.py:31:21
	shll	$5, %r10d
	.loc	1 40 32                         # gemm_test.py:40:32
	imull	%eax, %ecx
	movw	$64, %dx
	movw	$16, %r11w
	.loc	1 47 25                         # gemm_test.py:47:25
	tilezero	%tmm0
	movl	%r9d, 176(%rsp)                 # 4-byte Spill
	.loc	1 44 25                         # gemm_test.py:44:25
	testl	%r9d, %r9d
	movl	%ecx, 212(%rsp)                 # 4-byte Spill
	jle	.LBB0_1
# %bb.2:                                # %.lr.ph
	.loc	1 0 25 is_stmt 0                # gemm_test.py:0:25
	movl	176(%rsp), %r9d                 # 4-byte Reload
	imull	%r9d, %ecx
	movl	%r8d, %edx
	imull	%r9d, %edx
	imull	%edx, %eax
	movslq	%ecx, %rcx
	addq	%rcx, %rdi
	cltq
	addq	%rax, %rsi
	movl	%r13d, %eax
	imull	%r9d, %eax
	movq	%rax, 792(%rsp)                 # 8-byte Spill
	movl	%r13d, %eax
	orl	$1, %eax
	movl	%eax, 180(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$2, %eax
	movl	%eax, 184(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$3, %eax
	movl	%eax, 188(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$4, %eax
	movl	%eax, 192(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$5, %eax
	movl	%eax, 196(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$6, %eax
	movl	%eax, 200(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$7, %eax
	movl	%eax, 204(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$8, %eax
	movl	%eax, 80(%rsp)                  # 4-byte Spill
	movl	%r13d, %eax
	orl	$9, %eax
	movl	%eax, 84(%rsp)                  # 4-byte Spill
	movl	%r13d, %eax
	orl	$10, %eax
	movl	%eax, 88(%rsp)                  # 4-byte Spill
	movl	%r13d, %eax
	orl	$11, %eax
	movl	%eax, 92(%rsp)                  # 4-byte Spill
	movl	%r13d, %eax
	orl	$12, %eax
	movl	%eax, 96(%rsp)                  # 4-byte Spill
	movl	%r13d, %eax
	orl	$13, %eax
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$14, %eax
	movl	%eax, 104(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$15, %eax
	movl	%eax, 108(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$16, %eax
	movl	%eax, 112(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$17, %eax
	movl	%eax, 116(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$18, %eax
	movl	%eax, 120(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$19, %eax
	movl	%eax, 124(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$20, %eax
	movl	%eax, 128(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$21, %eax
	movl	%eax, 132(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$22, %eax
	movl	%eax, 136(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$23, %eax
	movl	%eax, 140(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$24, %eax
	movl	%eax, 144(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$25, %eax
	movl	%eax, 148(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$26, %eax
	movl	%eax, 152(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$27, %eax
	movl	%eax, 156(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$28, %eax
	movl	%eax, 160(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$29, %eax
	movl	%eax, 164(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$30, %eax
	movl	%eax, 168(%rsp)                 # 4-byte Spill
	movl	%r13d, %eax
	orl	$31, %eax
	movl	%eax, 172(%rsp)                 # 4-byte Spill
	.loc	1 44 25                         # gemm_test.py:44:25
	movl	%r8d, %ecx
	shll	$5, %ecx
	movl	%ecx, %eax
	subl	%r8d, %eax
	movq	%rax, 776(%rsp)                 # 8-byte Spill
	leal	(%r8,%r8), %edx
	movq	%rcx, 784(%rsp)                 # 8-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	subl	%edx, %ecx
	movq	%rcx, 760(%rsp)                 # 8-byte Spill
	leal	(%r8,%r8,2), %eax
	leal	(,%rax,8), %ecx
	subl	%r8d, %ecx
	movq	%rcx, 744(%rsp)                 # 8-byte Spill
	movl	%r8d, %ecx
	shll	$4, %ecx
	movl	%ecx, %r11d
	subl	%edx, %r11d
	movq	%r11, 728(%rsp)                 # 8-byte Spill
	leal	(,%r8,8), %r11d
	movl	%r11d, %ebx
	subl	%r8d, %ebx
	movq	%rbx, 712(%rsp)                 # 8-byte Spill
	leal	31(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 704(%rsp)                 # 8-byte Spill
	leal	30(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 696(%rsp)                 # 8-byte Spill
	leal	29(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 688(%rsp)                 # 8-byte Spill
	leal	28(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 680(%rsp)                 # 8-byte Spill
	leal	27(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 672(%rsp)                 # 8-byte Spill
	leal	26(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 664(%rsp)                 # 8-byte Spill
	leal	25(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 656(%rsp)                 # 8-byte Spill
	leal	24(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 648(%rsp)                 # 8-byte Spill
	leal	23(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 640(%rsp)                 # 8-byte Spill
	leal	22(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 632(%rsp)                 # 8-byte Spill
	leal	21(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 624(%rsp)                 # 8-byte Spill
	leal	20(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 616(%rsp)                 # 8-byte Spill
	leal	19(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 608(%rsp)                 # 8-byte Spill
	leal	18(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 600(%rsp)                 # 8-byte Spill
	leal	17(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 592(%rsp)                 # 8-byte Spill
	leal	16(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 584(%rsp)                 # 8-byte Spill
	leal	15(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 576(%rsp)                 # 8-byte Spill
	leal	14(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 568(%rsp)                 # 8-byte Spill
	leal	13(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 560(%rsp)                 # 8-byte Spill
	leal	12(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 552(%rsp)                 # 8-byte Spill
	leal	11(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 544(%rsp)                 # 8-byte Spill
	leal	10(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 536(%rsp)                 # 8-byte Spill
	leal	9(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 528(%rsp)                 # 8-byte Spill
	leal	8(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 520(%rsp)                 # 8-byte Spill
	leal	7(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 512(%rsp)                 # 8-byte Spill
	leal	6(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 504(%rsp)                 # 8-byte Spill
	leal	5(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 496(%rsp)                 # 8-byte Spill
	leal	4(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 488(%rsp)                 # 8-byte Spill
	leal	3(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 480(%rsp)                 # 8-byte Spill
	leal	2(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 472(%rsp)                 # 8-byte Spill
	movq	%r13, 280(%rsp)                 # 8-byte Spill
	leal	1(%r13), %ebx
	imull	%r9d, %ebx
	movq	%rbx, 464(%rsp)                 # 8-byte Spill
	vmovdqa64	.LCPI0_0(%rip), %zmm10  # zmm10 = [0,64,1,65,2,66,3,67,4,68,5,69,6,70,7,71,8,72,9,73,10,74,11,75,12,76,13,77,14,78,15,79,48,112,49,113,50,114,51,115,52,116,53,117,54,118,55,119,56,120,57,121,58,122,59,123,60,124,61,125,62,126,63,127]
	movabsq	$64, %rbx
	tilestored	%tmm0, 9216(%rsp,%rbx)  # 1024-byte Folded Spill
	tileloadd	9216(%rsp,%rbx), %tmm1  # 1024-byte Folded Reload
	tilestored	%tmm0, 10240(%rsp,%rbx) # 1024-byte Folded Spill
	tileloadd	10240(%rsp,%rbx), %tmm2 # 1024-byte Folded Reload
	tilestored	%tmm0, 11264(%rsp,%rbx) # 1024-byte Folded Spill
	tileloadd	11264(%rsp,%rbx), %tmm3 # 1024-byte Folded Reload
	leal	(%r8,%r8,8), %r9d
	leal	(%r9,%r9,2), %ebx
	leal	(%rdx,%rbx), %r14d
	movq	%r14, 440(%rsp)                 # 8-byte Spill
	movq	%rbx, 448(%rsp)                 # 8-byte Spill
	leal	(%rbx,%r8), %ebx
	movq	%rbx, 432(%rsp)                 # 8-byte Spill
	leal	(%r8,%r8,4), %ebx
	leal	(%rbx,%rbx,4), %r14d
	movq	%r14, 416(%rsp)                 # 8-byte Spill
	leal	(%r14,%r8), %r14d
	movq	%r14, 408(%rsp)                 # 8-byte Spill
	movq	%r11, 720(%rsp)                 # 8-byte Spill
	leal	(%r11,%r11,2), %r11d
	movq	%r11, 400(%rsp)                 # 8-byte Spill
	leal	(%rdx,%rbx,4), %r11d
	movq	%r11, 392(%rsp)                 # 8-byte Spill
	leal	(%r8,%rbx,4), %r11d
	movq	%r11, 384(%rsp)                 # 8-byte Spill
	leal	(,%r8,4), %r11d
	leal	(%r11,%r11,4), %r14d
	movq	%r14, 368(%rsp)                 # 8-byte Spill
	movq	%r9, 456(%rsp)                  # 8-byte Spill
	leal	(%r8,%r9,2), %r9d
	movq	%r9, 360(%rsp)                  # 8-byte Spill
	leal	(%rdx,%rdx,8), %r9d
	movq	%r9, 352(%rsp)                  # 8-byte Spill
	movq	%rcx, 736(%rsp)                 # 8-byte Spill
	leal	(%r8,%rcx), %ecx
	movq	%rcx, 344(%rsp)                 # 8-byte Spill
	leal	(%rbx,%rbx,2), %ecx
	movq	%rcx, 336(%rsp)                 # 8-byte Spill
	movq	%rax, 752(%rsp)                 # 8-byte Spill
	leal	(%r8,%rax,4), %eax
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	movq	%r11, 376(%rsp)                 # 8-byte Spill
	leal	(%r11,%r11,2), %eax
	movq	%rax, 320(%rsp)                 # 8-byte Spill
	movq	%rbx, 424(%rsp)                 # 8-byte Spill
	leal	(%r8,%rbx,2), %eax
	movq	%rax, 312(%rsp)                 # 8-byte Spill
	leal	(%rdx,%rdx,4), %eax
	movq	%rax, 304(%rsp)                 # 8-byte Spill
	movq	%rdx, 768(%rsp)                 # 8-byte Spill
	leal	(%rdx,%rdx,2), %eax
	movq	%rax, 296(%rsp)                 # 8-byte Spill
	xorl	%r11d, %r11d
	movl	%r10d, 208(%rsp)                # 4-byte Spill
	.loc	1 0 25                          # :0:25
.Ltmp1:
	.p2align	4
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	792(%rsp), %rax                 # 8-byte Reload
	.loc	1 45 44 is_stmt 1               # gemm_test.py:45:44
	addl	%r11d, %eax
	cltq
	.loc	1 45 20 is_stmt 0               # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm9
	movq	464(%rsp), %rax                 # 8-byte Reload
	.loc	1 45 44                         # gemm_test.py:45:44
	leal	(%rax,%r11), %eax
	cltq
	movq	472(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%r11), %ecx
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 3008(%rsp)               # 32-byte Spill
	.loc	1 45 44                         # gemm_test.py:45:44
	movslq	%ecx, %rax
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 2944(%rsp)               # 32-byte Spill
	movq	480(%rsp), %rax                 # 8-byte Reload
	.loc	1 45 44                         # gemm_test.py:45:44
	leal	(%rax,%r11), %eax
	cltq
	movq	488(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%r11), %ecx
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 2880(%rsp)               # 32-byte Spill
	.loc	1 45 44                         # gemm_test.py:45:44
	movslq	%ecx, %rax
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 2816(%rsp)               # 32-byte Spill
	movq	496(%rsp), %rax                 # 8-byte Reload
	.loc	1 45 44                         # gemm_test.py:45:44
	leal	(%rax,%r11), %eax
	cltq
	movq	504(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%r11), %ecx
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 2752(%rsp)               # 32-byte Spill
	.loc	1 45 44                         # gemm_test.py:45:44
	movslq	%ecx, %rax
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 2688(%rsp)               # 32-byte Spill
	movq	512(%rsp), %rax                 # 8-byte Reload
	.loc	1 45 44                         # gemm_test.py:45:44
	leal	(%rax,%r11), %eax
	cltq
	movq	520(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%r11), %ecx
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 2624(%rsp)               # 32-byte Spill
	.loc	1 45 44                         # gemm_test.py:45:44
	movslq	%ecx, %rax
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 2560(%rsp)               # 32-byte Spill
	movq	528(%rsp), %rax                 # 8-byte Reload
	.loc	1 45 44                         # gemm_test.py:45:44
	leal	(%rax,%r11), %eax
	cltq
	movq	536(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%r11), %ecx
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 2496(%rsp)               # 32-byte Spill
	.loc	1 45 44                         # gemm_test.py:45:44
	movslq	%ecx, %rax
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 2432(%rsp)               # 32-byte Spill
	movq	544(%rsp), %rax                 # 8-byte Reload
	.loc	1 45 44                         # gemm_test.py:45:44
	leal	(%rax,%r11), %eax
	cltq
	movq	552(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%r11), %ecx
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 2368(%rsp)               # 32-byte Spill
	.loc	1 45 44                         # gemm_test.py:45:44
	movslq	%ecx, %rax
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 2304(%rsp)               # 32-byte Spill
	movq	560(%rsp), %rax                 # 8-byte Reload
	.loc	1 45 44                         # gemm_test.py:45:44
	leal	(%rax,%r11), %eax
	cltq
	movq	568(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%r11), %ecx
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 2240(%rsp)               # 32-byte Spill
	.loc	1 45 44                         # gemm_test.py:45:44
	movslq	%ecx, %rax
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 2176(%rsp)               # 32-byte Spill
	movq	576(%rsp), %rax                 # 8-byte Reload
	.loc	1 45 44                         # gemm_test.py:45:44
	leal	(%rax,%r11), %eax
	cltq
	movq	584(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%r11), %ecx
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 2112(%rsp)               # 32-byte Spill
	.loc	1 45 44                         # gemm_test.py:45:44
	movslq	%ecx, %rax
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 2048(%rsp)               # 32-byte Spill
	movq	592(%rsp), %rax                 # 8-byte Reload
	.loc	1 45 44                         # gemm_test.py:45:44
	leal	(%rax,%r11), %eax
	cltq
	movq	600(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%r11), %ecx
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 1984(%rsp)               # 32-byte Spill
	.loc	1 45 44                         # gemm_test.py:45:44
	movslq	%ecx, %rax
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 1920(%rsp)               # 32-byte Spill
	movq	608(%rsp), %rax                 # 8-byte Reload
	.loc	1 45 44                         # gemm_test.py:45:44
	leal	(%rax,%r11), %eax
	cltq
	movq	616(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%r11), %ecx
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 1856(%rsp)               # 32-byte Spill
	.loc	1 45 44                         # gemm_test.py:45:44
	movslq	%ecx, %rax
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 1792(%rsp)               # 32-byte Spill
	movq	624(%rsp), %rax                 # 8-byte Reload
	.loc	1 45 44                         # gemm_test.py:45:44
	leal	(%rax,%r11), %eax
	cltq
	movq	632(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%r11), %ecx
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 1728(%rsp)               # 32-byte Spill
	.loc	1 45 44                         # gemm_test.py:45:44
	movslq	%ecx, %rax
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 1664(%rsp)               # 32-byte Spill
	movq	640(%rsp), %rax                 # 8-byte Reload
	.loc	1 45 44                         # gemm_test.py:45:44
	leal	(%rax,%r11), %eax
	cltq
	movq	648(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%r11), %ecx
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 1600(%rsp)               # 32-byte Spill
	.loc	1 45 44                         # gemm_test.py:45:44
	movslq	%ecx, %rax
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 1536(%rsp)               # 32-byte Spill
	movq	656(%rsp), %rax                 # 8-byte Reload
	.loc	1 45 44                         # gemm_test.py:45:44
	leal	(%rax,%r11), %eax
	cltq
	movq	664(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%r11), %ecx
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 1472(%rsp)               # 32-byte Spill
	.loc	1 45 44                         # gemm_test.py:45:44
	movslq	%ecx, %rax
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 1408(%rsp)               # 32-byte Spill
	movq	672(%rsp), %rax                 # 8-byte Reload
	.loc	1 45 44                         # gemm_test.py:45:44
	leal	(%rax,%r11), %eax
	cltq
	movq	680(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%r11), %ecx
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 1344(%rsp)               # 32-byte Spill
	.loc	1 45 44                         # gemm_test.py:45:44
	movslq	%ecx, %rax
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 1280(%rsp)               # 32-byte Spill
	movq	688(%rsp), %rax                 # 8-byte Reload
	.loc	1 45 44                         # gemm_test.py:45:44
	leal	(%rax,%r11), %eax
	cltq
	movq	696(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%r11), %ecx
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 1216(%rsp)               # 32-byte Spill
	.loc	1 45 44                         # gemm_test.py:45:44
	movslq	%ecx, %rax
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 1152(%rsp)               # 32-byte Spill
	movq	704(%rsp), %rax                 # 8-byte Reload
	.loc	1 45 44                         # gemm_test.py:45:44
	leal	(%rax,%r11), %eax
	cltq
	.loc	1 46 44 is_stmt 1               # gemm_test.py:46:44
	movslq	%r10d, %r10
	.loc	1 45 20                         # gemm_test.py:45:20
	vmovups	(%rdi,%rax), %ymm0
	vmovaps	%ymm0, 1088(%rsp)               # 32-byte Spill
	.loc	1 46 44                         # gemm_test.py:46:44
	leal	(%r8,%r10), %eax
	cltq
	movq	%rax, 960(%rsp)                 # 8-byte Spill
	movq	768(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	movslq	%eax, %r13
	movq	752(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 1024(%rsp)                # 8-byte Spill
	movq	376(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 952(%rsp)                 # 8-byte Spill
	movq	424(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 944(%rsp)                 # 8-byte Spill
	movq	296(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 936(%rsp)                 # 8-byte Spill
	movq	712(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 928(%rsp)                 # 8-byte Spill
	movq	720(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 920(%rsp)                 # 8-byte Spill
	movq	456(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 912(%rsp)                 # 8-byte Spill
	movq	304(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 904(%rsp)                 # 8-byte Spill
	movq	312(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 896(%rsp)                 # 8-byte Spill
	movq	320(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 888(%rsp)                 # 8-byte Spill
	movq	328(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 880(%rsp)                 # 8-byte Spill
	movq	728(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 872(%rsp)                 # 8-byte Spill
	movq	336(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 864(%rsp)                 # 8-byte Spill
	movq	736(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 856(%rsp)                 # 8-byte Spill
	movq	344(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 848(%rsp)                 # 8-byte Spill
	movq	352(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 840(%rsp)                 # 8-byte Spill
	movq	360(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 832(%rsp)                 # 8-byte Spill
	movq	368(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 824(%rsp)                 # 8-byte Spill
	movq	384(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 816(%rsp)                 # 8-byte Spill
	movq	392(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 808(%rsp)                 # 8-byte Spill
	movq	744(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	movq	%rax, 800(%rsp)                 # 8-byte Spill
	movq	400(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	movslq	%eax, %r12
	movq	416(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	movslq	%eax, %r15
	movq	408(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	movslq	%eax, %r14
	movq	448(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	movslq	%eax, %rbx
	movq	432(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	movq	%r8, %r9
	movslq	%eax, %r8
	movq	440(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	movslq	%eax, %rdx
	movq	760(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	movslq	%eax, %rcx
	movq	776(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltq
	.loc	1 47 25                         # gemm_test.py:47:25
	vbroadcasti64x4	(%rsi,%r13), %zmm3      # zmm3 = mem[0,1,2,3,0,1,2,3]
	movq	1024(%rsp), %r13                # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm1      # zmm1 = mem[0,1,2,3,0,1,2,3]
	movq	960(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm29     # zmm29 = mem[0,1,2,3,0,1,2,3]
	movq	936(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm31     # zmm31 = mem[0,1,2,3,0,1,2,3]
	movq	952(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm22     # zmm22 = mem[0,1,2,3,0,1,2,3]
	movq	928(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm30     # zmm30 = mem[0,1,2,3,0,1,2,3]
	movq	944(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm28     # zmm28 = mem[0,1,2,3,0,1,2,3]
	movq	904(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm27     # zmm27 = mem[0,1,2,3,0,1,2,3]
	movq	920(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm2      # zmm2 = mem[0,1,2,3,0,1,2,3]
	movq	896(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm26     # zmm26 = mem[0,1,2,3,0,1,2,3]
	movq	912(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm25     # zmm25 = mem[0,1,2,3,0,1,2,3]
	movq	872(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm24     # zmm24 = mem[0,1,2,3,0,1,2,3]
	movq	888(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm16     # zmm16 = mem[0,1,2,3,0,1,2,3]
	movq	864(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm23     # zmm23 = mem[0,1,2,3,0,1,2,3]
	movq	880(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm21     # zmm21 = mem[0,1,2,3,0,1,2,3]
	movq	840(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm20     # zmm20 = mem[0,1,2,3,0,1,2,3]
	movq	856(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm12     # zmm12 = mem[0,1,2,3,0,1,2,3]
	movq	832(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm0      # zmm0 = mem[0,1,2,3,0,1,2,3]
	movq	848(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm19     # zmm19 = mem[0,1,2,3,0,1,2,3]
	movq	808(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm18     # zmm18 = mem[0,1,2,3,0,1,2,3]
	movq	824(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm8      # zmm8 = mem[0,1,2,3,0,1,2,3]
	movq	800(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm17     # zmm17 = mem[0,1,2,3,0,1,2,3]
	movq	816(%rsp), %r13                 # 8-byte Reload
	vbroadcasti64x4	(%rsi,%r13), %zmm15     # zmm15 = mem[0,1,2,3,0,1,2,3]
	vbroadcasti64x4	(%rsi,%r14), %zmm14     # zmm14 = mem[0,1,2,3,0,1,2,3]
	movw	$16, %r14w
	vbroadcasti64x4	(%rsi,%r12), %zmm5      # zmm5 = mem[0,1,2,3,0,1,2,3]
	vbroadcasti64x4	(%rsi,%rbx), %zmm13     # zmm13 = mem[0,1,2,3,0,1,2,3]
	movw	$64, %bx
	vbroadcasti64x4	(%rsi,%r15), %zmm11     # zmm11 = mem[0,1,2,3,0,1,2,3]
	vbroadcasti64x4	(%rsi,%rcx), %zmm4      # zmm4 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm4, 1024(%rsp)       # 64-byte Spill
	vbroadcasti64x4	(%rsi,%r8), %zmm6       # zmm6 = mem[0,1,2,3,0,1,2,3]
	movq	%r9, %r8
	vbroadcasti64x4	(%rsi,%rax), %zmm4      # zmm4 = mem[0,1,2,3,0,1,2,3]
	vmovdqa64	%zmm4, 960(%rsp)        # 64-byte Spill
	vbroadcasti64x4	(%rsi,%rdx), %zmm7      # zmm7 = mem[0,1,2,3,0,1,2,3]
	vbroadcasti64x4	(%rsi,%r10), %zmm4      # zmm4 = mem[0,1,2,3,0,1,2,3]
	vmovaps	%ymm9, 3072(%rsp)
	vmovaps	3008(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3104(%rsp)
	vmovaps	2944(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3136(%rsp)
	vmovaps	2880(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3168(%rsp)
	vmovaps	2816(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3200(%rsp)
	vmovaps	2752(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3232(%rsp)
	vmovaps	2688(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3264(%rsp)
	vmovaps	2624(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3296(%rsp)
	vmovaps	2560(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3328(%rsp)
	vmovaps	2496(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3360(%rsp)
	vmovaps	2432(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3392(%rsp)
	vmovaps	2368(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3424(%rsp)
	vmovaps	2304(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3456(%rsp)
	vmovaps	2240(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3488(%rsp)
	vmovaps	2176(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3520(%rsp)
	vmovaps	2112(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3552(%rsp)
	vmovaps	2048(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3584(%rsp)
	vmovaps	1984(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3616(%rsp)
	vmovaps	1920(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3648(%rsp)
	vmovaps	1856(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3680(%rsp)
	vmovaps	1792(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3712(%rsp)
	vmovaps	1728(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3744(%rsp)
	vmovaps	1664(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3776(%rsp)
	vmovaps	1600(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3808(%rsp)
	vmovaps	1536(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3840(%rsp)
	vmovaps	1472(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3872(%rsp)
	vmovaps	1408(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3904(%rsp)
	vmovaps	1344(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3936(%rsp)
	vmovaps	1280(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 3968(%rsp)
	vmovaps	1216(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 4000(%rsp)
	vmovaps	1152(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 4032(%rsp)
	vmovaps	1088(%rsp), %ymm9               # 32-byte Reload
	vmovaps	%ymm9, 4064(%rsp)
	vpermt2b	%zmm3, %zmm10, %zmm4
	vpermt2b	%zmm1, %zmm10, %zmm29
	vpermt2b	%zmm31, %zmm10, %zmm22
	vmovdqa64	%zmm4, %zmm1
	vmovdqa64	.LCPI0_1(%rip), %zmm31  # zmm31 = [0,64,1,65,2,66,3,67,4,68,5,69,6,70,7,71,8,72,9,73,10,74,11,75,12,76,13,77,14,78,15,79,16,80,17,81,18,82,19,83,20,84,21,85,22,86,23,87,24,88,25,89,26,90,27,91,28,92,29,93,30,94,31,95]
	vpermt2b	%zmm29, %zmm31, %zmm1
	vmovdqa64	.LCPI0_2(%rip), %zmm9   # zmm9 = [32,96,33,97,34,98,35,99,36,100,37,101,38,102,39,103,40,104,41,105,42,106,43,107,44,108,45,109,46,110,47,111,48,112,49,113,50,114,51,115,52,116,53,117,54,118,55,119,56,120,57,121,58,122,59,123,60,124,61,125,62,126,63,127]
	vpermt2b	%zmm29, %zmm9, %zmm4
	vpermt2b	%zmm30, %zmm10, %zmm28
	vmovdqa64	%zmm22, %zmm3
	vpermt2b	%zmm28, %zmm31, %zmm3
	vpermt2b	%zmm28, %zmm9, %zmm22
	vmovdqa64	%zmm4, 4160(%rsp)
	vpermt2b	%zmm27, %zmm10, %zmm2
	vmovdqa64	%zmm1, 4096(%rsp)
	vpermt2b	%zmm26, %zmm10, %zmm25
	vmovdqa64	%zmm2, %zmm1
	vpermt2b	%zmm25, %zmm31, %zmm1
	vpermt2b	%zmm25, %zmm9, %zmm2
	vmovdqa64	%zmm22, 4288(%rsp)
	vpermt2b	%zmm24, %zmm10, %zmm16
	vmovdqa64	%zmm3, 4224(%rsp)
	vpermt2b	%zmm23, %zmm10, %zmm21
	vmovdqa64	%zmm16, %zmm3
	vpermt2b	%zmm21, %zmm31, %zmm3
	vpermt2b	%zmm21, %zmm9, %zmm16
	vmovdqa64	%zmm2, 4416(%rsp)
	vpermt2b	%zmm20, %zmm10, %zmm12
	vmovdqa64	%zmm1, 4352(%rsp)
	vpermt2b	%zmm0, %zmm10, %zmm19
	vmovdqa64	%zmm12, %zmm0
	vpermt2b	%zmm19, %zmm31, %zmm0
	vpermt2b	%zmm19, %zmm9, %zmm12
	vmovdqa64	%zmm16, 4544(%rsp)
	vpermt2b	%zmm18, %zmm10, %zmm8
	vmovdqa64	%zmm3, 4480(%rsp)
	vpermt2b	%zmm17, %zmm10, %zmm15
	vmovdqa64	%zmm8, %zmm1
	vpermt2b	%zmm15, %zmm31, %zmm1
	vpermt2b	%zmm15, %zmm9, %zmm8
	vmovdqa64	%zmm12, 4672(%rsp)
	vpermt2b	%zmm14, %zmm10, %zmm5
	vmovdqa64	%zmm0, 4608(%rsp)
	vpermt2b	%zmm13, %zmm10, %zmm11
	vmovdqa64	%zmm5, %zmm0
	vpermt2b	%zmm11, %zmm31, %zmm0
	vpermt2b	%zmm11, %zmm9, %zmm5
	vmovdqa64	%zmm8, 4800(%rsp)
	vpermt2b	1024(%rsp), %zmm10, %zmm6       # 64-byte Folded Reload
	vmovdqa64	%zmm1, 4736(%rsp)
	vpermt2b	960(%rsp), %zmm10, %zmm7        # 64-byte Folded Reload
	vmovdqa64	%zmm6, %zmm1
	vpermt2b	%zmm7, %zmm31, %zmm1
	vpermt2b	%zmm7, %zmm9, %zmm6
	vmovdqa64	%zmm5, 4928(%rsp)
	vmovdqa64	%zmm0, 4864(%rsp)
	vmovdqa64	%zmm6, 5056(%rsp)
	vmovdqa64	%zmm1, 4992(%rsp)
	movl	$32, %ecx
	leaq	3072(%rsp), %rax
	movw	$32, %dx
	tileloadd	(%rax,%rcx), %tmm4
	leaq	3584(%rsp), %rax
	tileloadd	(%rax,%rcx), %tmm5
	movl	$128, %ecx
	leaq	4096(%rsp), %rax
	movw	$8, %r9w
	tileloadd	(%rax,%rcx), %tmm6
	tdpbssd	%tmm6, %tmm4, %tmm0
	tdpbssd	%tmm6, %tmm5, %tmm2
	leaq	4160(%rsp), %rax
	tileloadd	(%rax,%rcx), %tmm6
	tdpbssd	%tmm6, %tmm4, %tmm3
	tdpbssd	%tmm6, %tmm5, %tmm1
	.loc	1 44 25                         # gemm_test.py:44:25
	addl	$32, %r11d
	movq	784(%rsp), %rax                 # 8-byte Reload
	addl	%eax, %r10d
	cmpl	176(%rsp), %r11d                # 4-byte Folded Reload
	jl	.LBB0_3
# %bb.4:
	.loc	1 0 25 is_stmt 0                # gemm_test.py:0:25
	movl	208(%rsp), %r10d                # 4-byte Reload
	movl	204(%rsp), %edi                 # 4-byte Reload
	movl	200(%rsp), %r13d                # 4-byte Reload
	movl	196(%rsp), %r11d                # 4-byte Reload
	movl	192(%rsp), %ebx                 # 4-byte Reload
	movl	188(%rsp), %r14d                # 4-byte Reload
	movl	184(%rsp), %r15d                # 4-byte Reload
	movl	180(%rsp), %r12d                # 4-byte Reload
	movq	280(%rsp), %r9                  # 8-byte Reload
	jmp	.LBB0_5
.LBB0_1:                                # %.._crit_edge_crit_edge
	.loc	1 30 36 is_stmt 1               # gemm_test.py:30:36
	movl	%r13d, %r12d
	orl	$1, %r12d
	movl	%r13d, %r15d
	orl	$2, %r15d
	movl	%r13d, %r14d
	orl	$3, %r14d
	movl	%r13d, %ebx
	orl	$4, %ebx
	movl	%r13d, %r11d
	orl	$5, %r11d
	movq	%r13, %r9
	orl	$6, %r13d
	movl	%r9d, %edi
	orl	$7, %edi
	movl	%r9d, %eax
	orl	$8, %eax
	movl	%eax, 80(%rsp)                  # 4-byte Spill
	movl	%r9d, %eax
	orl	$9, %eax
	movl	%eax, 84(%rsp)                  # 4-byte Spill
	movl	%r9d, %eax
	orl	$10, %eax
	movl	%eax, 88(%rsp)                  # 4-byte Spill
	movl	%r9d, %eax
	orl	$11, %eax
	movl	%eax, 92(%rsp)                  # 4-byte Spill
	movl	%r9d, %eax
	orl	$12, %eax
	movl	%eax, 96(%rsp)                  # 4-byte Spill
	movl	%r9d, %eax
	orl	$13, %eax
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$14, %eax
	movl	%eax, 104(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$15, %eax
	movl	%eax, 108(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$16, %eax
	movl	%eax, 112(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$17, %eax
	movl	%eax, 116(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$18, %eax
	movl	%eax, 120(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$19, %eax
	movl	%eax, 124(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$20, %eax
	movl	%eax, 128(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$21, %eax
	movl	%eax, 132(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$22, %eax
	movl	%eax, 136(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$23, %eax
	movl	%eax, 140(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$24, %eax
	movl	%eax, 144(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$25, %eax
	movl	%eax, 148(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$26, %eax
	movl	%eax, 152(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$27, %eax
	movl	%eax, 156(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$28, %eax
	movl	%eax, 160(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$29, %eax
	movl	%eax, 164(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$30, %eax
	movl	%eax, 168(%rsp)                 # 4-byte Spill
	movl	%r9d, %eax
	orl	$31, %eax
	movl	%eax, 172(%rsp)                 # 4-byte Spill
	movabsq	$64, %rax
	tilestored	%tmm0, 12288(%rsp,%rax) # 1024-byte Folded Spill
	tileloadd	12288(%rsp,%rax), %tmm3 # 1024-byte Folded Reload
	tilestored	%tmm0, 13312(%rsp,%rax) # 1024-byte Folded Spill
	tileloadd	13312(%rsp,%rax), %tmm2 # 1024-byte Folded Reload
	tilestored	%tmm0, 14336(%rsp,%rax) # 1024-byte Folded Spill
	tileloadd	14336(%rsp,%rax), %tmm1 # 1024-byte Folded Reload
.LBB0_5:                                # %._crit_edge
	.loc	1 0 36 is_stmt 0                # gemm_test.py:0:36
	movl	$128, %eax
	leaq	5120(%rsp), %rcx
	movw	$64, %dx
	movw	$16, %si
	.loc	1 47 25 is_stmt 1               # gemm_test.py:47:25
	tilestored	%tmm0, (%rcx,%rax)
	leaq	5184(%rsp), %rcx
	tilestored	%tmm3, (%rcx,%rax)
	leaq	7168(%rsp), %rcx
	tilestored	%tmm2, (%rcx,%rax)
	leaq	7232(%rsp), %rcx
	tilestored	%tmm1, (%rcx,%rax)
	movl	212(%rsp), %eax                 # 4-byte Reload
	.loc	1 42 28                         # gemm_test.py:42:28
	imull	%r8d, %eax
	.loc	1 49 21                         # gemm_test.py:49:21
	cltq
	movq	288(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rax,4), %rax
	.loc	1 47 25                         # gemm_test.py:47:25
	vmovaps	5120(%rsp), %zmm1
	vmovaps	5184(%rsp), %zmm0
	vmovaps	5248(%rsp), %zmm3
	vmovaps	5312(%rsp), %zmm2
	vmovaps	5376(%rsp), %zmm5
	vmovaps	5440(%rsp), %zmm4
	vmovaps	5504(%rsp), %zmm7
	vmovaps	5568(%rsp), %zmm6
	vmovaps	5632(%rsp), %zmm9
	vmovaps	5696(%rsp), %zmm8
	vmovaps	5760(%rsp), %zmm11
	vmovaps	5824(%rsp), %zmm10
	vmovaps	5888(%rsp), %zmm13
	vmovaps	5952(%rsp), %zmm12
	vmovaps	6016(%rsp), %zmm15
	vmovaps	6080(%rsp), %zmm14
	vmovaps	6144(%rsp), %zmm17
	vmovaps	6208(%rsp), %zmm16
	vmovaps	6272(%rsp), %zmm19
	vmovaps	6336(%rsp), %zmm18
	vmovaps	6400(%rsp), %zmm21
	vmovaps	6464(%rsp), %zmm20
	vmovaps	6528(%rsp), %zmm23
	vmovaps	6592(%rsp), %zmm22
	vmovaps	6656(%rsp), %zmm25
	vmovaps	6720(%rsp), %zmm24
	vmovaps	6784(%rsp), %zmm27
	vmovaps	6848(%rsp), %zmm26
	vmovaps	6912(%rsp), %zmm29
	vmovaps	6976(%rsp), %zmm28
	vmovaps	7040(%rsp), %zmm30
	vmovaps	%zmm30, 1152(%rsp)              # 64-byte Spill
	vmovaps	7104(%rsp), %zmm30
	vmovaps	%zmm30, 960(%rsp)               # 64-byte Spill
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %r9d
	.loc	1 49 59 is_stmt 0               # gemm_test.py:49:59
	addl	%r10d, %r9d
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%r9d, %rcx
	.loc	1 47 25 is_stmt 1               # gemm_test.py:47:25
	vmovaps	7168(%rsp), %zmm30
	vmovaps	%zmm30, 1088(%rsp)              # 64-byte Spill
	vmovaps	7232(%rsp), %zmm31
	vmovaps	7296(%rsp), %zmm30
	vmovaps	%zmm30, 1280(%rsp)              # 64-byte Spill
	vmovaps	7360(%rsp), %zmm30
	vmovaps	%zmm30, 1216(%rsp)              # 64-byte Spill
	vmovaps	7424(%rsp), %zmm30
	vmovaps	%zmm30, 1408(%rsp)              # 64-byte Spill
	vmovaps	7488(%rsp), %zmm30
	vmovaps	%zmm30, 1344(%rsp)              # 64-byte Spill
	vmovaps	7552(%rsp), %zmm30
	vmovaps	%zmm30, 1536(%rsp)              # 64-byte Spill
	vmovaps	7616(%rsp), %zmm30
	vmovaps	%zmm30, 1472(%rsp)              # 64-byte Spill
	vmovaps	7680(%rsp), %zmm30
	vmovaps	%zmm30, 1664(%rsp)              # 64-byte Spill
	vmovaps	7744(%rsp), %zmm30
	vmovaps	%zmm30, 1600(%rsp)              # 64-byte Spill
	vmovaps	7808(%rsp), %zmm30
	vmovaps	%zmm30, 1792(%rsp)              # 64-byte Spill
	vmovaps	7872(%rsp), %zmm30
	vmovaps	%zmm30, 1728(%rsp)              # 64-byte Spill
	vmovaps	7936(%rsp), %zmm30
	vmovaps	%zmm30, 1920(%rsp)              # 64-byte Spill
	vmovaps	8000(%rsp), %zmm30
	vmovaps	%zmm30, 1856(%rsp)              # 64-byte Spill
	vmovaps	8064(%rsp), %zmm30
	vmovaps	%zmm30, 2048(%rsp)              # 64-byte Spill
	vmovaps	8128(%rsp), %zmm30
	vmovaps	%zmm30, 1984(%rsp)              # 64-byte Spill
	vmovaps	8192(%rsp), %zmm30
	vmovaps	%zmm30, 2176(%rsp)              # 64-byte Spill
	vmovaps	8256(%rsp), %zmm30
	vmovaps	%zmm30, 2112(%rsp)              # 64-byte Spill
	vmovaps	8320(%rsp), %zmm30
	vmovaps	%zmm30, 2304(%rsp)              # 64-byte Spill
	vmovaps	8384(%rsp), %zmm30
	vmovaps	%zmm30, 2240(%rsp)              # 64-byte Spill
	vmovaps	8448(%rsp), %zmm30
	vmovaps	%zmm30, 2432(%rsp)              # 64-byte Spill
	vmovaps	8512(%rsp), %zmm30
	vmovaps	%zmm30, 2368(%rsp)              # 64-byte Spill
	vmovaps	8576(%rsp), %zmm30
	vmovaps	%zmm30, 2560(%rsp)              # 64-byte Spill
	vmovaps	8640(%rsp), %zmm30
	vmovaps	%zmm30, 2496(%rsp)              # 64-byte Spill
	vmovaps	8704(%rsp), %zmm30
	vmovaps	%zmm30, 2688(%rsp)              # 64-byte Spill
	vmovaps	8768(%rsp), %zmm30
	vmovaps	%zmm30, 2624(%rsp)              # 64-byte Spill
	vmovaps	8832(%rsp), %zmm30
	vmovaps	%zmm30, 2816(%rsp)              # 64-byte Spill
	vmovaps	8896(%rsp), %zmm30
	vmovaps	%zmm30, 2752(%rsp)              # 64-byte Spill
	vmovaps	8960(%rsp), %zmm30
	vmovaps	%zmm30, 2944(%rsp)              # 64-byte Spill
	vmovaps	9024(%rsp), %zmm30
	vmovaps	%zmm30, 2880(%rsp)              # 64-byte Spill
	vmovaps	9088(%rsp), %zmm30
	vmovaps	%zmm30, 3008(%rsp)              # 64-byte Spill
	vmovaps	9152(%rsp), %zmm30
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm0, 64(%rax,%rcx,4)
	vmovups	%zmm1, (%rax,%rcx,4)
	.loc	1 49 55 is_stmt 0               # gemm_test.py:49:55
	imull	%r8d, %r12d
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %r12d
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%r12d, %rcx
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm2, 64(%rax,%rcx,4)
	vmovups	%zmm3, (%rax,%rcx,4)
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %r15d
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %r15d
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%r15d, %rcx
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm4, 64(%rax,%rcx,4)
	vmovups	%zmm5, (%rax,%rcx,4)
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %r14d
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %r14d
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%r14d, %rcx
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm6, 64(%rax,%rcx,4)
	vmovups	%zmm7, (%rax,%rcx,4)
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ebx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ebx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ebx, %rcx
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm8, 64(%rax,%rcx,4)
	vmovups	%zmm9, (%rax,%rcx,4)
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %r11d
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %r11d
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%r11d, %rcx
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm10, 64(%rax,%rcx,4)
	vmovups	%zmm11, (%rax,%rcx,4)
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %r13d
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %r13d
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%r13d, %rcx
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm12, 64(%rax,%rcx,4)
	vmovups	%zmm13, (%rax,%rcx,4)
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %edi
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %edi
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%edi, %rcx
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm14, 64(%rax,%rcx,4)
	vmovups	%zmm15, (%rax,%rcx,4)
	movl	80(%rsp), %ecx                  # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm16, 64(%rax,%rcx,4)
	vmovups	%zmm17, (%rax,%rcx,4)
	movl	84(%rsp), %ecx                  # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm18, 64(%rax,%rcx,4)
	vmovups	%zmm19, (%rax,%rcx,4)
	movl	88(%rsp), %ecx                  # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm20, 64(%rax,%rcx,4)
	vmovups	%zmm21, (%rax,%rcx,4)
	movl	92(%rsp), %ecx                  # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm22, 64(%rax,%rcx,4)
	vmovups	%zmm23, (%rax,%rcx,4)
	movl	96(%rsp), %ecx                  # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm24, 64(%rax,%rcx,4)
	vmovups	%zmm25, (%rax,%rcx,4)
	movl	100(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm26, 64(%rax,%rcx,4)
	vmovups	%zmm27, (%rax,%rcx,4)
	movl	104(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm28, 64(%rax,%rcx,4)
	vmovups	%zmm29, (%rax,%rcx,4)
	movl	108(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	vmovaps	960(%rsp), %zmm0                # 64-byte Reload
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm0, 64(%rax,%rcx,4)
	vmovaps	1152(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rax,%rcx,4)
	movl	112(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm31, 64(%rax,%rcx,4)
	vmovaps	1088(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rax,%rcx,4)
	movl	116(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	vmovaps	1216(%rsp), %zmm0               # 64-byte Reload
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm0, 64(%rax,%rcx,4)
	vmovaps	1280(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rax,%rcx,4)
	movl	120(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	vmovaps	1344(%rsp), %zmm0               # 64-byte Reload
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm0, 64(%rax,%rcx,4)
	vmovaps	1408(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rax,%rcx,4)
	movl	124(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	vmovaps	1472(%rsp), %zmm0               # 64-byte Reload
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm0, 64(%rax,%rcx,4)
	vmovaps	1536(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rax,%rcx,4)
	movl	128(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	vmovaps	1600(%rsp), %zmm0               # 64-byte Reload
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm0, 64(%rax,%rcx,4)
	vmovaps	1664(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rax,%rcx,4)
	movl	132(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	vmovaps	1728(%rsp), %zmm0               # 64-byte Reload
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm0, 64(%rax,%rcx,4)
	vmovaps	1792(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rax,%rcx,4)
	movl	136(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	vmovaps	1856(%rsp), %zmm0               # 64-byte Reload
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm0, 64(%rax,%rcx,4)
	vmovaps	1920(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rax,%rcx,4)
	movl	140(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	vmovaps	1984(%rsp), %zmm0               # 64-byte Reload
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm0, 64(%rax,%rcx,4)
	vmovaps	2048(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rax,%rcx,4)
	movl	144(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	vmovaps	2112(%rsp), %zmm0               # 64-byte Reload
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm0, 64(%rax,%rcx,4)
	vmovaps	2176(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rax,%rcx,4)
	movl	148(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	vmovaps	2240(%rsp), %zmm0               # 64-byte Reload
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm0, 64(%rax,%rcx,4)
	vmovaps	2304(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rax,%rcx,4)
	movl	152(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	vmovaps	2368(%rsp), %zmm0               # 64-byte Reload
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm0, 64(%rax,%rcx,4)
	vmovaps	2432(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rax,%rcx,4)
	movl	156(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	vmovaps	2496(%rsp), %zmm0               # 64-byte Reload
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm0, 64(%rax,%rcx,4)
	vmovaps	2560(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rax,%rcx,4)
	movl	160(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	vmovaps	2624(%rsp), %zmm0               # 64-byte Reload
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm0, 64(%rax,%rcx,4)
	vmovaps	2688(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rax,%rcx,4)
	movl	164(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	vmovaps	2752(%rsp), %zmm0               # 64-byte Reload
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm0, 64(%rax,%rcx,4)
	vmovaps	2816(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rax,%rcx,4)
	movl	168(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	vmovaps	2880(%rsp), %zmm0               # 64-byte Reload
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm0, 64(%rax,%rcx,4)
	vmovaps	2944(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rax,%rcx,4)
	movl	172(%rsp), %ecx                 # 4-byte Reload
	.loc	1 49 55                         # gemm_test.py:49:55
	imull	%r8d, %ecx
	.loc	1 49 59                         # gemm_test.py:49:59
	addl	%r10d, %ecx
	.loc	1 49 37                         # gemm_test.py:49:37
	movslq	%ecx, %rcx
	.loc	1 49 77                         # gemm_test.py:49:77
	vmovups	%zmm30, 64(%rax,%rcx,4)
	vmovaps	3008(%rsp), %zmm0               # 64-byte Reload
	vmovups	%zmm0, (%rax,%rcx,4)
	.loc	1 49 4                          # gemm_test.py:49:4
	leaq	-40(%rbp), %rsp
	.loc	1 49 4 epilogue_begin           # gemm_test.py:49:4
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
	.asciz	"gemm_test.py"                  # string offset=7
.Linfo_string2:
	.asciz	"/root/XSAI/Triton/triton-cpu/xsai" # string offset=20
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
