	.text
	.file	".\\HWlooptest\\succ\\bound_regtoreg_defwithconst0.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	movigh	GR3,%hi(sum)
}
{
	movigl	GR3,%lo(sum)
}
{
	load32	GR2, GR3, 0
	movigh	GR4,%hi(upperbound)
}
{
	movigl	GR4,%lo(upperbound)
}
{
	load32	GR4, GR4, 0
	movigh	GR5,%hi(lowerbound)
}
{
	movigl	GR5,%lo(lowerbound)
}
{
	load32	GR5, GR5, 0
}
{
	ge	 GR5, GR4
}
{
	jc	 $BB0_4
}
{
	nop
}
{
	nop
}
# BB#1:                                 # %for.body.preheader
{
	movigl	GR6,2
}
{
	movigh	GR6,0
}
{
	sl	GR6, GR5, GR6
	movigh	GR7,%hi(a)
}
{
	movigl	GR7,%lo(a)
}
{
	add	GR6, GR7, GR6
}
$BB0_2:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR7, GR6, 0
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR7
	addi	GR6, GR6, 8
}
{
	addi	GR5, GR5, 2
}
{
	lt	 GR5, GR4
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
# BB#3:                                 # %for.cond.for.end_crit_edge
{
	store32	GR2, GR3, 0
}
$BB0_4:                                 # %for.end
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

	.type	lowerbound,@object      # @lowerbound
	.bss
	.globl	lowerbound
	.align	2
lowerbound:
	.4byte	0                       # 0x0
	.size	lowerbound, 4

	.type	upperbound,@object      # @upperbound
	.data
	.globl	upperbound
	.align	2
upperbound:
	.4byte	256                     # 0x100
	.size	upperbound, 4


