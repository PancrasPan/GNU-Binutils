	.text
	.file	".\\HWlooptest\\fail\\loopCountUnderflow0.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	movigh	GR3,%hi(i)
}
{
	movigl	GR3,%lo(i)
}
{
	load32	GR4, GR3, 0
	movigl	GR2,2
}
{
	movigh	GR2,0
}
{
	sl	GR2, GR4, GR2
	movigh	GR5,%hi(a)
}
{
	movigl	GR5,%lo(a)
}
{
	add	GR5, GR5, GR2
	movigl	GR2,0
}
{
	movigh	GR2,0
}
$BB0_1:                                 # %do.body
                                        # =>This Inner Loop Header: Depth=1
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
	add	GR2, GR6, GR2
	addi	GR5, GR5, -4
}
{
	addi	GR4, GR4, -1
}
{
	neqi	 GR4, 0
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
	movigl	GR4,0
}
{
	movigh	GR4,0
}
{
	store32	GR4, GR3, 0
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


