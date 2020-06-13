	.text
	.file	"./testcase_4slots/externbound_sumarray.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 3
	store32	GR2, GR30, 2
}
{
	store32	GR2, GR30, 1
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
$BB0_2:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR3, GR2
	movigh	GR4,%hi(x)
}
{
	movigl	GR4,%lo(x)
}
{
	add	GR5, GR4, GR3
}
{
	load32	GR5, GR5, 0
	movigh	GR6,%hi(y)
}
{
	movigl	GR6,%lo(y)
}
{
	add	GR3, GR6, GR3
}
{
	load32	GR7, GR3, 0
}
{
	nop
}
{
	nop
}
{
	add	GR5, GR7, GR5
}
{
	store32	GR5, GR3, 0
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
}
{
	add	GR3, GR4, GR2
	add	GR2, GR6, GR2
}
{
	load32	GR2, GR2, 0
}
{
	nop
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
	mul32	GR2, GR3, GR2
	load32	GR3, GR30, 1
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
}
{
	store32	GR2, GR30, 1
	load32	GR2, GR30, 2
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
{
	store32	GR2, GR30, 2
}
$BB0_1:                                 # %while.cond
                                        # =>This Inner Loop Header: Depth=1
{
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
	load32	GR3, GR30, 2
}
{
	ge	 GR3, GR2
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
# BB#3:                                 # %while.end
{
	load32	GR2, GR30, 1
	addi	GR30, GR30, 16
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
$tmp0:                                  # EmittedInsts:53
	.size	main, ($tmp0)-main

	.type	x,@object               # @x
	.data
	.globl	x
	.align	2
x:
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.size	x, 20

	.type	nTaps,@object           # @nTaps
	.globl	nTaps
	.align	2
nTaps:
	.4byte	5                       # 0x5
	.size	nTaps, 4

	.type	y,@object               # @y
	.bss
	.globl	y
	.align	2
y:
	.space	20
	.size	y, 20


