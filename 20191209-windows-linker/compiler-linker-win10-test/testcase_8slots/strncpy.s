	.text
	.file	"./testcase_8slots/strncpy.ll"
	.globl	strncpy
	.align	2
	.type	strncpy,@function
strncpy:                                # @strncpy
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	load32	GR2, GR30, 6
	store32	GR4, GR30, 3
	store32	GR5, GR30, 2
}
{
	store32	GR2, GR30, 1
}
{
	jmp	$BB0_1
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 1
}
{
	nop
}
{
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR3, GR2
	load32	GR4, GR30, 2
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR4, GR2
}
{
	load8	GR2, GR2, 0
}
{
	store8	GR2, GR3, 0
}
$BB0_1:                                 # %while.cond
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 1
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, -1
}
{
	store32	GR3, GR30, 1
}
{
	eqi	 GR2, 0
}
{
	jnc	 $BB0_2
}
{
	nop
}
{
	nop
}
# BB#3:                                 # %while.end
{
	load32	GR2, GR30, 3
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
	.size	strncpy, ($tmp0)-strncpy


