	.text
	.file	".\\HWlooptest\\fail\\fixup_bumpaftercmp_withreg0.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	movigl	GR3,-1
}
{
	movigh	GR3,-1
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
	movigh	GR6,%hi(bound)
}
{
	movigl	GR6,%lo(bound)
}
{
	load32	GR6, GR6, 0
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %do.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR7, GR4, 0
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR7
	addi	GR4, GR4, 4
}
{
	addi	GR3, GR3, 1
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
# BB#2:                                 # %do.end
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


