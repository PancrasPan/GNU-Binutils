	.text
	.file	"./testcase_4slots/datarel2.ll"
	.globl	max
	.align	2
	.type	max,@function
max:                                    # @max
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
}
{
	store32	GR4, GR30, 1
	store32	GR5, GR30, 0
	movigh	GR2,%hi(g2)
}
{
	movigl	GR2,%lo(g2)
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
	addi	GR3, GR3, 1
}
{
	store32	GR3, GR2, 0
	load32	GR2, GR30, 1
}
{
	nop
}
{
	nop
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	load32	GR3, GR30, 0
}
{
	le	 GR2, GR3
}
{
	jc	 $BB0_2
}
{
	nop
}
{
	nop
}
# BB#1:                                 # %cond.true
{
	load32	GR2, GR30, 1
}
{
	nop
}
{
	nop
}
{
	load32	GR2, GR2, 0
	addi	GR30, GR30, 8
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
$BB0_2:                                 # %cond.false
{
	load32	GR2, GR30, 0
	addi	GR30, GR30, 8
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
$tmp0:                                  # EmittedInsts:28
	.size	max, ($tmp0)-max

	.type	g2,@object              # @g2
	.comm	g2,4,4

