	.text
	.file	".\\HWlooptest\\succ\\bound_regtoimm0.ll"
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
	movigh	GR4,%hi(lowerbound)
}
{
	movigl	GR4,%lo(lowerbound)
}
{
	load32	GR4, GR4, 0
}
{
	lti	 GR4, 256
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
# BB#1:                                 # %for.body.preheader
{
	movigl	GR5,2
}
{
	movigh	GR5,0
}
{
	sl	GR5, GR4, GR5
	movigh	GR6,%hi(a)
}
{
	movigl	GR6,%lo(a)
}
{
	add	GR5, GR6, GR5
}
$BB0_2:                                 # %for.body
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
	add	GR2, GR2, GR6
	addi	GR5, GR5, 8
}
{
	addi	GR4, GR4, 2
	movigl	GR6,256
}
{
	movigh	GR6,0
}
{
	lt	 GR4, GR6
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


