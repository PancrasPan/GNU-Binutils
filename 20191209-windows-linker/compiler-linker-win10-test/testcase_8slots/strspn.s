	.text
	.file	"./testcase_8slots/strspn.ll"
	.globl	strspn
	.align	2
	.type	strspn,@function
strspn:                                 # @strspn
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
}
{
	store32	GR4, GR30, 6
	store32	GR5, GR30, 5
}
{
	load32	GR2, GR30, 6
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 4
	load32	GR2, GR30, 5
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 3
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 1
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
$BB0_7:                                 # %if.end6
                                        #   in Loop: Header=BB0_1 Depth=1
{
	store32	GR2, GR30, 0
	load32	GR3, GR30, 1
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
	store32	GR3, GR30, 1
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
}
$BB0_1:                                 # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
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
	load8	GR3, GR3, 0
}
{
	eqi	 GR3, 0
}
{
	jc	 $BB0_8
}
{
	nop
}
{
	nop
}
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR3, GR30, 3
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
$BB0_9:                                 # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=2
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
	addi	GR3, GR3, 1
}
$BB0_3:                                 # %for.cond
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	store32	GR3, GR30, 2
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
	load8	GR3, GR3, 0
}
{
	eqi	 GR3, 0
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
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB0_3 Depth=2
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
	load8	GR3, GR3, 0
	load32	GR4, GR30, 4
}
{
	nop
}
{
	nop
}
{
	load8	GR4, GR4, 0
}
{
	neq	 GR4, GR3
}
{
	jc	 $BB0_9
}
{
	nop
}
{
	nop
}
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR3,1
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR30, 0
}
$BB0_6:                                 # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR3, GR30, 0
}
{
	nop
}
{
	neqi	 GR3, 0
}
{
	jc	 $BB0_7
}
{
	nop
}
{
	nop
}
$BB0_8:                                 # %while.end
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
	store32	GR2, GR30, 7
}
{
	load32	GR2, GR30, 7
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
$tmp0:
	.size	strspn, ($tmp0)-strspn


