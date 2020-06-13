	.text
	.file	".\\HWlooptest\\succ\\notcondition0.ll"
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
	movigh	GR4,%hi(bound)
}
{
	movigl	GR4,%lo(bound)
}
{
	load32	GR4, GR4, 0
	movigl	GR5,0
}
{
	movigh	GR5,0
}
{
	lt	 GR4, GR5
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
# BB#1:
{
	movigh	GR6,%hi(a)
}
{
	movigl	GR6,%lo(a)
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
	le	 GR5, GR4
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


