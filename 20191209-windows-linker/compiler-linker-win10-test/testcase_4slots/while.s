	.text
	.file	"./testcase_4slots/while.ll"
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
$BB0_3:                                 # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=2
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
$BB0_2:                                 # %for.cond
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
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
	eq	 GR3, GR2
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
$BB0_1:                                 # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
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
	jnc	 $BB0_2
}
{
	nop
}
{
	nop
}
# BB#4:                                 # %while.end
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
$tmp0:                                  # EmittedInsts:36
	.size	main, ($tmp0)-main


