	.text
	.file	".\\HWlooptest\\succ\\bound_immoimm0.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	movigl	GR3,0
}
{
	movigh	GR3,0
	movigh	GR4,%hi(a)
}
{
	movigl	GR4,%lo(a)
	movigh	GR5,%hi(sum)
}
{
	movigl	GR5,%lo(sum)
}
{
	load32	GR2, GR5, 0
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
	load32	GR6, GR4, 0
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR6
	addi	GR4, GR4, 8
}
{
	addi	GR3, GR3, 2
	movigl	GR6,256
}
{
	movigh	GR6,0
}
{
	lt	 GR3, GR6
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
# BB#2:                                 # %for.end
{
	store32	GR2, GR5, 0
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


