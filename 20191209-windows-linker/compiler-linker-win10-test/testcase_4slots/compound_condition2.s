	.text
	.file	"./testcase_4slots/compound_condition2.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 3
	store32	GR2, GR30, 2
	movigl	GR2,4
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 1
	movigl	GR2,2
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 0
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
$BB0_6:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
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
	addi	GR2, GR2, 1
}
{
	store32	GR2, GR30, 2
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
	load32	GR3, GR30, 2
}
{
	ge	 GR3, GR2
}
{
	jc	 $BB0_4
}
{
	nop
}
{
	nop
}
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 0
}
{
	nop
}
{
	load32	GR3, GR30, 1
}
{
	gt	 GR3, GR2
}
{
	jc	 $BB0_3
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %lor.rhs
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 0
}
{
	nop
}
{
	load32	GR3, GR30, 2
}
{
	lt	 GR3, GR2
}
{
	movigl	GR2,0
}
{
	movigh	GR2,0
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
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
$BB0_5:                                 # %lor.end
                                        #   in Loop: Header=BB0_1 Depth=1
{
	eqi	 GR2, 0
}
{
	jnc	 $BB0_6
}
{
	nop
}
{
	nop
}
# BB#7:                                 # %while.end
{
	load32	GR2, GR30, 2
}
{
	nop
}
{
	load32	GR3, GR30, 1
}
{
	nop
}
{
	nop
}
{
	sub	GR2, GR3, GR2
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
$tmp0:                                  # EmittedInsts:53
	.size	main, ($tmp0)-main


