	.text
	.file	".\\HWlooptest\\fail\\loopCountUnderflow10.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	movigl	GR3,16
}
{
	movigh	GR3,0
}
$BB0_1:                                 # %do.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigh	GR4,%hi(a)
}
{
	movigl	GR4,%lo(a)
}
{
	add	GR4, GR4, GR3
}
{
	load32	GR4, GR4, 0
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR4, GR2
	addi	GR3, GR3, -4
}
{
	neqi	 GR3, 0
}
{
	jc	 $BB0_1
}
{
	nop
}
{
	nop
}
# BB#2:                                 # %do.end
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
	.size	add, ($tmp0)-add

	.type	a,@object               # @a
	.data
	.globl	a
	.align	2
a:
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.size	a, 20


