	.text
	.file	"./testcase_8slots/strstr.ll"
	.globl	strstr
	.align	2
	.type	strstr,@function
strstr:                                 # @strstr
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
}
$BB0_1:                                 # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
{
	load32	GR2, GR30, 4
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
	jc	 $BB0_12
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
	load32	GR2, GR30, 3
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 2
	load32	GR2, GR30, 4
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
$BB0_8:                                 # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=2
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
$BB0_3:                                 # %for.cond
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
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
	load8	GR2, GR2, 0
}
{
	eqi	 GR2, 0
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
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB0_3 Depth=2
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
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	neq	 GR2, GR3
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
$BB0_4:                                 #   in Loop: Header=BB0_3 Depth=2
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
$BB0_6:                                 # %land.end
                                        #   in Loop: Header=BB0_3 Depth=2
{
	eqi	 GR2, 0
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
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB0_3 Depth=2
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
	neq	 GR3, GR2
}
{
	jnc	 $BB0_8
}
{
	nop
}
{
	nop
}
$BB0_9:                                 # %for.end
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
	load8	GR2, GR2, 0
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_11
}
{
	nop
}
{
	nop
}
# BB#10:                                # %land.lhs.true
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
	load8	GR2, GR2, 0
}
{
	neqi	 GR2, 0
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
$BB0_11:                                # %if.then12
{
	load32	GR2, GR30, 4
}
{
	nop
}
{
	jmp	$BB0_13
}
{
	nop
}
{
	nop
}
$BB0_12:                                # %while.end
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
$BB0_13:                                # %return
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
	.size	strstr, ($tmp0)-strstr


