	.text
	.file	"./testcase_8slots/strcmp.ll"
	.globl	strcmp
	.align	2
	.type	strcmp,@function
strcmp:                                 # @strcmp
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
	load32	GR2, GR30, 2
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
$BB0_5:                                 # %while.body
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
{
	store32	GR2, GR30, 1
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
$BB0_1:                                 # %while.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR2, GR30, 0
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
	jc	 $BB0_2
}
{
	nop
}
{
	nop
}
# BB#3:                                 # %land.rhs
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
	load8	GR3, GR3, 0
}
{
	eq	 GR3, GR2
}
{
	jmp	$BB0_4
}
{
	nop
}
{
	nop
}
$BB0_2:                                 #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
$BB0_4:                                 # %land.end
                                        #   in Loop: Header=BB0_1 Depth=1
{
	eqi	 GR2, 0
}
{
	jnc	 $BB0_5
}
{
	nop
}
{
	nop
}
# BB#6:                                 # %while.end
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
	load32	GR3, GR30, 0
}
{
	nop
}
{
	nop
}
{
	load8	GR3, GR3, 0
}
{
	gt	 GR3, GR2
	gt	 GR2, GR3
}
{
	sub	GR2, GR2, GR4
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
	.size	strcmp, ($tmp0)-strcmp


