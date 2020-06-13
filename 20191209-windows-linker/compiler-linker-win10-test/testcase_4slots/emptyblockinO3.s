	.text
	.file	"./testcase_4slots/emptyblockinO3.ll"
	.globl	fir
	.align	2
	.type	fir,@function
fir:                                    # @fir
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
	movigh	GR2,%hi(nSamples)
}
{
	movigl	GR2,%lo(nSamples)
}
{
	load32	GR3, GR2, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, -1
}
{
	store32	GR3, GR30, 5
	movigl	GR6,2
}
{
	movigh	GR6,0
}
{
	jmp	$BB0_1
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %while.end
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, -1
}
{
	store32	GR3, GR30, 5
}
$BB0_1:                                 # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
{
	movigl	GR3,0
}
{
	movigh	GR3,0
	load32	GR4, GR30, 5
}
{
	nop
}
{
	lt	 GR4, GR3
}
{
	jnc	 $BB0_2
}
{
	nop
}
{
	nop
}
{
	jmp	$BB0_5
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %while.body3
                                        #   in Loop: Header=BB0_2 Depth=2
{
	load32	GR3, GR30, 4
}
{
	nop
}
{
	load32	GR4, GR30, 5
}
{
	nop
}
{
	nop
}
{
	sub	GR5, GR4, GR3
}
{
	sl	GR5, GR5, GR6
	movigh	GR7,%hi(x)
}
{
	movigl	GR7,%lo(x)
}
{
	add	GR5, GR7, GR5
	sl	GR3, GR3, GR6
	movigh	GR7,%hi(h)
}
{
	movigl	GR7,%lo(h)
}
{
	add	GR3, GR7, GR3
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	load32	GR5, GR5, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR3, GR3, GR5
	sl	GR4, GR4, GR6
	movigh	GR5,%hi(y)
}
{
	movigl	GR5,%lo(y)
}
{
	add	GR4, GR5, GR4
}
{
	load32	GR7, GR4, 0
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR7, GR3
}
{
	store32	GR3, GR4, 0
	load32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR3, GR6
}
{
	add	GR3, GR5, GR3
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	load32	GR4, GR30, 3
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
}
{
	store32	GR3, GR30, 3
	load32	GR3, GR30, 4
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, 1
}
$BB0_2:                                 # %while.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	store32	GR3, GR30, 4
	movigh	GR3,%hi(nTaps)
}
{
	movigl	GR3,%lo(nTaps)
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	load32	GR4, GR30, 4
}
{
	ge	 GR4, GR3
}
{
	jnc	 $BB0_3
}
{
	nop
}
{
	nop
}
{
	jmp	$BB0_4
}
{
	nop
}
{
	nop
}
$BB0_5:                                 # %while.end9
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, -1
}
{
	store32	GR2, GR30, 5
	movigl	GR2,2
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 2
}
{
	jmp	$BB0_6
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
{
	movigh	GR3,%hi(x)
}
{
	movigl	GR3,%lo(x)
	load32	GR4, GR30, 5
}
{
	nop
}
{
	nop
}
{
	sl	GR5, GR4, GR2
}
{
	add	GR5, GR3, GR5
}
{
	load32	GR5, GR5, 0
}
{
	nop
}
{
	load32	GR6, GR30, 3
}
{
	nop
}
{
	nop
}
{
	sub	GR5, GR5, GR6
	load32	GR6, GR30, 2
}
{
	nop
}
{
	nop
}
{
	mul32	GR5, GR6, GR5
	load32	GR6, GR30, 1
}
{
	nop
}
{
	nop
}
{
	sub	GR4, GR4, GR6
}
{
	sl	GR4, GR4, GR2
}
{
	add	GR3, GR3, GR4
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR3, GR5, GR3
	sl	GR4, GR6, GR2
	movigh	GR5,%hi(w)
}
{
	movigl	GR5,%lo(w)
}
{
	add	GR4, GR5, GR4
}
{
	load32	GR5, GR4, 0
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR5, GR3
}
{
	store32	GR3, GR4, 0
	load32	GR3, GR30, 1
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, 1
}
$BB0_6:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR3, GR30, 1
	movigh	GR3,%hi(nTaps)
}
{
	movigl	GR3,%lo(nTaps)
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	load32	GR4, GR30, 1
}
{
	ge	 GR4, GR3
}
{
	jnc	 $BB0_7
}
{
	nop
}
{
	nop
}
# BB#8:                                 # %for.end
{
	addi	GR30, GR30, 24
}
{
	ret	GR31
}
{
	nop
}
{
	nop
}
$tmp0:                                  # EmittedInsts:133
	.size	fir, ($tmp0)-fir

	.type	nSamples,@object        # @nSamples
	.data
	.globl	nSamples
	.align	2
nSamples:
	.4byte	40                      # 0x28
	.size	nSamples, 4

	.type	nTaps,@object           # @nTaps
	.globl	nTaps
	.align	2
nTaps:
	.4byte	16                      # 0x10
	.size	nTaps, 4

	.type	h,@object               # @h
	.section	.rodata,"a",@progbits
	.globl	h
	.align	2
h:
	.4byte	4294967261              # 0xffffffdd
	.4byte	4294967077              # 0xffffff25
	.4byte	4294966793              # 0xfffffe09
	.4byte	4294966802              # 0xfffffe12
	.4byte	4294967288              # 0xfffffff8
	.4byte	347                     # 0x15b
	.4byte	19                      # 0x13
	.4byte	4294966948              # 0xfffffea4
	.4byte	26                      # 0x1a
	.4byte	404                     # 0x194
	.4byte	4294967193              # 0xffffff99
	.4byte	4294966811              # 0xfffffe1b
	.4byte	220                     # 0xdc
	.4byte	579                     # 0x243
	.4byte	4294966898              # 0xfffffe72
	.4byte	4294966618              # 0xfffffd5a
	.4byte	663                     # 0x297
	.4byte	774                     # 0x306
	.4byte	4294966223              # 0xfffffbcf
	.4byte	4294966437              # 0xfffffca5
	.4byte	1769                    # 0x6e9
	.4byte	925                     # 0x39d
	.4byte	4294964017              # 0xfffff331
	.4byte	4294966328              # 0xfffffc38
	.4byte	10363                   # 0x287b
	.4byte	17367                   # 0x43d7
	.4byte	10363                   # 0x287b
	.4byte	4294966328              # 0xfffffc38
	.4byte	4294964017              # 0xfffff331
	.4byte	925                     # 0x39d
	.4byte	1769                    # 0x6e9
	.4byte	4294966437              # 0xfffffca5
	.4byte	4294966223              # 0xfffffbcf
	.4byte	774                     # 0x306
	.4byte	663                     # 0x297
	.4byte	4294966618              # 0xfffffd5a
	.4byte	4294966898              # 0xfffffe72
	.4byte	579                     # 0x243
	.4byte	220                     # 0xdc
	.4byte	4294966811              # 0xfffffe1b
	.4byte	4294967193              # 0xffffff99
	.4byte	404                     # 0x194
	.4byte	26                      # 0x1a
	.4byte	4294966948              # 0xfffffea4
	.4byte	19                      # 0x13
	.4byte	347                     # 0x15b
	.4byte	4294967288              # 0xfffffff8
	.4byte	4294966802              # 0xfffffe12
	.4byte	4294966793              # 0xfffffe09
	.4byte	4294967077              # 0xffffff25
	.4byte	4294967261              # 0xffffffdd
	.size	h, 204

	.type	x,@object               # @x
	.data
	.globl	x
	.align	2
x:
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.4byte	6                       # 0x6
	.4byte	7                       # 0x7
	.4byte	8                       # 0x8
	.4byte	9                       # 0x9
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.4byte	6                       # 0x6
	.4byte	7                       # 0x7
	.4byte	8                       # 0x8
	.4byte	9                       # 0x9
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.4byte	6                       # 0x6
	.4byte	7                       # 0x7
	.4byte	8                       # 0x8
	.4byte	9                       # 0x9
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.4byte	6                       # 0x6
	.4byte	7                       # 0x7
	.4byte	8                       # 0x8
	.4byte	9                       # 0x9
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.4byte	6                       # 0x6
	.4byte	7                       # 0x7
	.4byte	8                       # 0x8
	.4byte	9                       # 0x9
	.4byte	0                       # 0x0
	.size	x, 204

	.type	y,@object               # @y
	.comm	y,204,4
	.type	w,@object               # @w
	.comm	w,204,4

