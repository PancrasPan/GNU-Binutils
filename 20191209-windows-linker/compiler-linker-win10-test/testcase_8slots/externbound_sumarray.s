	.text
	.file	"./testcase_8slots/externbound_sumarray.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	movigh	GR2,%hi(nTaps)
}
{
	movigl	GR2,%lo(nTaps)
}
{
	movigl	GR3,1
	load32	GR2, GR2, 0
}
{
	movigh	GR3,0
}
{
	lt	 GR2, GR3
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR30, 3
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_3
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %while.body.lr.ph
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	movigh	GR3,%hi(nTaps)
}
{
	movigl	GR3,%lo(nTaps)
}
{
	load32	GR3, GR3, 0
}
{
	movg2g	GR4,GR2
}
{
	store32	GR4, GR30, 2
	store32	GR3, GR30, 1
}
{
	store32	GR2, GR30, 0
}                                       # 4-byte Folded Spill
$BB0_2:                                 # %while.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR4,2
	load32	GR2, GR30, 0
	load32	GR3, GR30, 2
}
{
	movigh	GR4,0
}
{
	sl	GR4, GR2, GR4
	movigh	GR5,%hi(y)
}
{
	movigl	GR5,%lo(y)
}
{
	add	GR5, GR5, GR4
	movigh	GR6,%hi(x)
}
{
	movigl	GR6,%lo(x)
}
{
	add	GR4, GR6, GR4
}
{
	load32	GR6, GR4, 0
}
{
	nop
}
{
	load32	GR7, GR5, 0
}
{
	nop
}
{
	nop
}
{
	add	GR6, GR7, GR6
}
{
	load32	GR4, GR4, 0
	store32	GR6, GR5, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR4, GR4, GR6
}
{
	add	GR3, GR4, GR3
	addi	GR2, GR2, 1
	load32	GR4, GR30, 1
}
{
	lt	 GR2, GR4
	movg2g	GR6,GR3
}
{
	store32	GR2, GR30, 0
	store32	GR6, GR30, 2
}
{
	store32	GR3, GR30, 3
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_2
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %while.end
{
	addi	GR30, GR30, 16
	load32	GR2, GR30, 3
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
$tmp0:
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


