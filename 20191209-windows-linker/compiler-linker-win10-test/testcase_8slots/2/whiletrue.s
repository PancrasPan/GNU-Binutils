	.text
	.file	"./testcase_8slots/2/whiletrue.ll"
	.globl	check
	.align	2
	.type	check,@function
check:                                  # @check
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
}
{
	load32	GR2, GR30, 10
	store32	GR4, GR30, 7
	store32	GR5, GR30, 6
}
{
	movigl	GR2,0
	store32	GR2, GR30, 5
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 4
	store32	GR2, GR30, 3
}
{
	store32	GR5, GR30, 2
	store32	GR4, GR30, 1
}
$BB0_1:                                 # %do.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 4
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	load32	GR3, GR30, 7
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
}
{
	load32	GR3, GR2, 1
}
{
	nop
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	le	 GR2, GR3
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
$BB0_2:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,-1
}
{
	movigh	GR2,-1
}
{
	store32	GR2, GR30, 3
}
$BB0_3:                                 # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigh	GR2,%hi(bound)
}
{
	movigl	GR2,%lo(bound)
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	load32	GR3, GR30, 4
}
{
	lt	 GR3, GR2
}
{
	jc	 $BB0_5
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %if.then3
{
	jmp	$BB0_7
}
{
	nop
}
{
	nop
}
$BB0_5:                                 # %if.end4
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 4
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
	load32	GR2, GR30, 4
	store32	GR3, GR2, 0
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
	store32	GR2, GR30, 4
}
# BB#6:                                 # %do.cond
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	jc	 $BB0_1
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %do.end
{
	addi	GR30, GR30, 32
	load32	GR2, GR30, 3
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
	.size	check, ($tmp0)-check


