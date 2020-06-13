	.text
	.file	".\\HWlooptest\\succ\\loop0.ll"
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
}
{
	movg2g	GR2,GR3
}
$BB0_1:                                 # %for.body
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
	addi	GR3, GR3, 4
}
{
	neqi	 GR3, 80
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


