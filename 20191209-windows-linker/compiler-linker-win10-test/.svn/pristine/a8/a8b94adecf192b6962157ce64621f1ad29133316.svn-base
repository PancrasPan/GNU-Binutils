	.text
	.file	"./c_standard_lib-master/STRING/STRLEN.ll"
	.globl	strlen
	.align	2
	.type	strlen,@function
strlen:                                 # @strlen
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
}
{
	store32	GR4, GR30, 1
	store32	GR4, GR30, 0
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
$BB0_2:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 1
}
{
	store32	GR2, GR30, 0
}
$BB0_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 0
}
{
	nop
}
{
	nop
}
{
	load8	GR2, GR2, 0
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
# BB#3:                                 # %for.end
{
	load32	GR2, GR30, 1
}
{
	nop
}
{
	load32	GR3, GR30, 0
}
{
	nop
}
{
	nop
}
{
	sub	GR2, GR3, GR2
	addi	GR30, GR30, 8
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
	.size	strlen, ($tmp0)-strlen


