	.text
	.file	"./testcase_4slots/whiletrue.ll"
	.globl	check
	.align	2
	.type	check,@function
check:                                  # @check
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	load32	GR2, GR30, 8
	store32	GR4, GR30, 5
}
{
	store32	GR5, GR30, 4
	store32	GR2, GR30, 3
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 2
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
$BB0_4:                                 # %do.cond
                                        #   in Loop: Header=BB0_1 Depth=1
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
	sl	GR2, GR3, GR2
	movigh	GR3,%hi(flagsar)
}
{
	movigl	GR3,%lo(flagsar)
}
{
	add	GR2, GR3, GR2
	movigl	GR3,-1
}
{
	movigh	GR3,-1
}
{
	store32	GR3, GR2, 0
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
$BB0_1:                                 # %do.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 5
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
}
{
	load32	GR4, GR3, 1
}
{
	nop
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	le	 GR3, GR4
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
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR3,-1
}
{
	movigh	GR3,-1
}
{
	store32	GR3, GR30, 1
}
$BB0_3:                                 # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigh	GR3,%hi(bound)
}
{
	movigl	GR3,%lo(bound)
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	load32	GR4, GR30, 2
}
{
	ge	 GR4, GR3
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
# BB#5:                                 # %do.end
{
	load32	GR2, GR30, 1
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
$tmp0:                                  # EmittedInsts:52
	.size	check, ($tmp0)-check


