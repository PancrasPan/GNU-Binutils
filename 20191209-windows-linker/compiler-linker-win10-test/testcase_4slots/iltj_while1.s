	.text
	.file	"./testcase_4slots/iltj_while1.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 7
	store32	GR2, GR30, 6
}
{
	store32	GR2, GR30, 5
}
{
	store32	GR2, GR30, 4
	store32	GR2, GR30, 3
	movigl	GR2,4
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 2
	movigl	GR2,2
}
{
	movigh	GR2,0
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
$BB0_6:                                 # %while.end8
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
	store32	GR2, GR30, 5
}
$BB0_1:                                 # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #     Child Loop BB0_4 Depth 2
{
	load32	GR2, GR30, 3
}
{
	nop
}
{
	lti	 GR2, 4
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
{
	jmp	$BB0_7
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %while.body3
                                        #   in Loop: Header=BB0_2 Depth=2
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
	addi	GR2, GR2, 1
}
{
	store32	GR2, GR30, 3
}
$BB0_2:                                 # %while.cond1
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
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
	ge	 GR3, GR2
}
{
	jnc	 $BB0_3
}
{
	nop
}
{
	nop
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
$BB0_5:                                 # %while.body6
                                        #   in Loop: Header=BB0_4 Depth=2
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
}
$BB0_4:                                 # %while.cond4
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
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
	ge	 GR3, GR2
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
{
	jmp	$BB0_6
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %while.end9
{
	load32	GR2, GR30, 3
}
{
	nop
}
{
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	sub	GR2, GR3, GR2
	addi	GR30, GR30, 32
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
$tmp0:                                  # EmittedInsts:64
	.size	main, ($tmp0)-main


