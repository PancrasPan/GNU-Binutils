	.text
	.file	"./c_standard_lib-master/STRING/STRCAT.ll"
	.globl	strcat
	.align	2
	.type	strcat,@function
strcat:                                 # @strcat
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
	load32	GR2, GR30, 1
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
$BB0_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR2, GR30, 1
}
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
{
	jmp	$BB0_3
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %for.inc7
                                        #   in Loop: Header=BB0_3 Depth=1
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
	addi	GR2, GR2, 1
}
{
	store32	GR2, GR30, 1
	load32	GR2, GR30, 2
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
	store32	GR2, GR30, 2
}
$BB0_3:                                 # %for.cond2
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
	load8	GR2, GR2, 0
	load32	GR3, GR30, 1
}
{
	nop
}
{
	nop
}
{
	store8	GR2, GR3, 0
}
{
	eqi	 GR2, 0
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
# BB#5:                                 # %for.end10
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
	.size	strcat, ($tmp0)-strcat


