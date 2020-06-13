	.text
	.file	"./testcase_8slots/strcpy.ll"
	.globl	strcpy
	.align	2
	.type	strcpy,@function
strcpy:                                 # @strcpy
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	store32	GR4, GR30, 3
	store32	GR5, GR30, 2
}
{
	load32	GR2, GR30, 3
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 1
}
$BB0_1:                                 # %while.cond
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 2
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 1
}
{
	store32	GR3, GR30, 2
}
{
	load8	GR2, GR2, 0
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, 1
}
{
	store32	GR4, GR30, 3
}
{
	store8	GR2, GR3, 0
}
{
	neqi	 GR2, 0
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
# BB#2:                                 # %while.end
{
	load32	GR2, GR30, 1
	addi	GR30, GR30, 16
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
	.size	strcpy, ($tmp0)-strcpy


