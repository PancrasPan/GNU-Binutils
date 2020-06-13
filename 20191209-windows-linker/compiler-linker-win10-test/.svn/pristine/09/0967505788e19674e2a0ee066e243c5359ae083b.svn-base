	.text
	.file	"./testcase_4slots/global_fir.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 5
	store32	GR2, GR30, 2
	movigh	GR3,%hi(nSamples)
}
{
	movigl	GR3,%lo(nSamples)
}
{
	load32	GR4, GR3, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR4, -1
}
{
	store32	GR4, GR30, 4
	movigl	GR7,2
}
{
	movigh	GR7,0
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
$BB0_5:                                 # %while.end
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR4,2
}
{
	movigh	GR4,0
	load32	GR5, GR30, 4
}
{
	nop
}
{
	nop
}
{
	sl	GR4, GR5, GR4
	movigh	GR5,%hi(y)
}
{
	movigl	GR5,%lo(y)
}
{
	add	GR4, GR5, GR4
}
{
	load32	GR4, GR4, 0
}
{
	nop
}
{
	load32	GR5, GR30, 2
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR5, GR4
}
{
	store32	GR4, GR30, 2
	load32	GR4, GR30, 4
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR4, -1
}
{
	store32	GR4, GR30, 4
}
$BB0_1:                                 # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
{
	load32	GR4, GR30, 4
}
{
	nop
}
{
	lt	 GR4, GR2
}
{
	jc	 $BB0_6
}
{
	nop
}
{
	nop
}
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	store32	GR2, GR30, 3
}
{
	jmp	$BB0_3
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %while.body3
                                        #   in Loop: Header=BB0_3 Depth=2
{
	load32	GR4, GR30, 3
}
{
	nop
}
{
	load32	GR5, GR30, 4
}
{
	nop
}
{
	nop
}
{
	sub	GR6, GR5, GR4
}
{
	sl	GR6, GR6, GR7
	movigh	GR8,%hi(x)
}
{
	movigl	GR8,%lo(x)
}
{
	add	GR6, GR8, GR6
	sl	GR4, GR4, GR7
	movigh	GR8,%hi(h)
}
{
	movigl	GR8,%lo(h)
}
{
	add	GR4, GR8, GR4
}
{
	load32	GR4, GR4, 0
}
{
	nop
}
{
	load32	GR6, GR6, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR4, GR4, GR6
	sl	GR5, GR5, GR7
	movigh	GR6,%hi(y)
}
{
	movigl	GR6,%lo(y)
}
{
	add	GR5, GR6, GR5
}
{
	load32	GR6, GR5, 0
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR6, GR4
}
{
	store32	GR4, GR5, 0
	load32	GR4, GR30, 3
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR4, 1
}
{
	store32	GR4, GR30, 3
}
$BB0_3:                                 # %while.cond1
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	movigh	GR4,%hi(nTaps)
}
{
	movigl	GR4,%lo(nTaps)
}
{
	load32	GR4, GR4, 0
}
{
	nop
}
{
	load32	GR5, GR30, 3
}
{
	ge	 GR5, GR4
}
{
	jnc	 $BB0_4
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
$BB0_6:                                 # %while.end9
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
	addi	GR3, GR3, -1
}
{
	store32	GR3, GR30, 4
	movigl	GR3,2
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR30, 1
}
{
	jmp	$BB0_7
}
{
	nop
}
{
	nop
}
$BB0_8:                                 # %for.body
                                        #   in Loop: Header=BB0_7 Depth=1
{
	movigh	GR2,%hi(x)
}
{
	movigl	GR2,%lo(x)
	load32	GR4, GR30, 4
}
{
	nop
}
{
	nop
}
{
	sl	GR5, GR4, GR3
}
{
	add	GR5, GR2, GR5
}
{
	load32	GR5, GR5, 0
}
{
	nop
}
{
	load32	GR6, GR30, 2
}
{
	nop
}
{
	nop
}
{
	sub	GR5, GR5, GR6
	load32	GR6, GR30, 1
}
{
	nop
}
{
	nop
}
{
	mul32	GR5, GR6, GR5
	load32	GR6, GR30, 0
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
	sl	GR4, GR4, GR3
}
{
	add	GR2, GR2, GR4
}
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
	mul32	GR2, GR5, GR2
	sl	GR4, GR6, GR3
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
	add	GR2, GR5, GR2
}
{
	store32	GR2, GR4, 0
	load32	GR2, GR30, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 1
}
$BB0_7:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR2, GR30, 0
	movigh	GR2,%hi(nTaps)
}
{
	movigl	GR2,%lo(nTaps)
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	load32	GR4, GR30, 0
}
{
	ge	 GR4, GR2
}
{
	jnc	 $BB0_8
}
{
	nop
}
{
	nop
}
# BB#9:                                 # %for.end
{
	movigl	GR2,0
}
{
	movigh	GR2,0
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
$tmp0:                                  # EmittedInsts:139
	.size	main, ($tmp0)-main

	.type	nSamples,@object        # @nSamples
	.data
	.globl	nSamples
	.align	2
nSamples:
	.4byte	16                      # 0x10
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
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.size	h, 64

	.type	x,@object               # @x
	.data
	.globl	x
	.align	2
x:
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.size	x, 64

	.type	y,@object               # @y
	.comm	y,64,4
	.type	w,@object               # @w
	.comm	w,64,4

