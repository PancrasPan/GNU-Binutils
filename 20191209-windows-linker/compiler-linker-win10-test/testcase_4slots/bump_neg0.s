	.text
	.file	".\\HWlooptest\\succ\\bump_neg0.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	movigl	GR3,255
}
{
	movigh	GR3,0
	movigh	GR2,%hi(a)
}
{
	movigl	GR2,%lo(a)
}
{
	addi	GR5, GR2, 1020
	movigh	GR4,%hi(sum)
}
{
	movigl	GR4,%lo(sum)
}
{
	load32	GR2, GR4, 0
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %for.body
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
	addi	GR5, GR5, -8
}
{
	addi	GR3, GR3, -2
}
{
	lti	 GR3, 1
}
{
	jnc	 $BB0_1
}
{
	nop
}
{
	nop
}
# BB#2:                                 # %for.end
{
	store32	GR2, GR4, 0
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


