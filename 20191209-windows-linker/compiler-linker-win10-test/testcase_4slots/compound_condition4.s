	.text
	.file	"./testcase_4slots/compound_condition4.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 5
	store32	GR2, GR30, 4
	movigl	GR3,4
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR30, 3
	movigl	GR3,2
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR30, 2
	movigl	GR3,3
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR30, 1
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
$BB0_7:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR3, GR30, 4
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, 1
}
{
	store32	GR3, GR30, 4
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, 1
}
{
	store32	GR3, GR30, 2
}
$BB0_1:                                 # %while.cond
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR3, GR30, 3
}
{
	nop
}
{
	load32	GR4, GR30, 4
}
{
	ge	 GR4, GR3
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
	load32	GR3, GR30, 3
}
{
	nop
}
{
	load32	GR4, GR30, 2
}
{
	lt	 GR4, GR3
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
	load32	GR3, GR30, 2
}
{
	nop
}
{
	load32	GR4, GR30, 4
}
{
	ge	 GR4, GR3
	movg2g	GR3,GR2
}
{
	jc	 $BB0_6
}
{
	nop
}
{
	nop
}
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR3, GR30, 1
}
{
	nop
}
{
	load32	GR4, GR30, 2
}
{
	lt	 GR4, GR3
}
{
	movigl	GR3,0
}
{
	movigh	GR3,0
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
$BB0_3:                                 #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR3,1
}
{
	movigh	GR3,0
}
$BB0_6:                                 # %lor.end
                                        #   in Loop: Header=BB0_1 Depth=1
{
	eqi	 GR3, 0
}
{
	jnc	 $BB0_7
}
{
	nop
}
{
	nop
}
# BB#8:                                 # %while.end
{
	load32	GR2, GR30, 4
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
	sub	GR2, GR3, GR2
	addi	GR30, GR30, 24
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
$tmp0:                                  # EmittedInsts:66
	.size	main, ($tmp0)-main


