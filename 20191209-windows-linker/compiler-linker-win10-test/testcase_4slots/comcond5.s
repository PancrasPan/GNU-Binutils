	.text
	.file	"./testcase_4slots/comcond5.ll"
	.globl	part
	.align	2
	.type	part,@function
part:                                   # @part
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
$BB0_6:                                 # %while.body
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
	addi	GR2, GR2, -1
}
$BB0_1:                                 # %while.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR2, GR30, 0
}
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
	ge	 GR3, GR2
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
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 0
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR4, GR2
	movigh	GR4,%hi(array)
}
{
	movigl	GR4,%lo(array)
}
{
	add	GR2, GR4, GR2
	add	GR3, GR4, GR3
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	load32	GR4, GR2, 0
}
{
	gt	 GR4, GR3
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
# BB#3:                                 #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	jmp	$BB0_5
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
$BB0_5:                                 # %land.end
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
$tmp0:                                  # EmittedInsts:61
	.size	part, ($tmp0)-part


