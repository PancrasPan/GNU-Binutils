	.text
	.file	"./testcase_4slots/binary_search.ll"
	.globl	binarysearch
	.align	2
	.type	binarysearch,@function
binarysearch:                           # @binarysearch
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
}
{
	load32	GR2, GR30, 11
	load32	GR3, GR30, 10
}
{
	store32	GR4, GR30, 6
	store32	GR5, GR30, 5
}
{
	store32	GR3, GR30, 4
	store32	GR2, GR30, 3
}
{
	load32	GR3, GR30, 4
}
{
	le	 GR3, GR2
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
# BB#1:                                 # %if.then
{
	movigl	GR2,-1
}
{
	movigh	GR2,-1
}
{
	jmp	$BB0_11
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %if.end
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
	store32	GR2, GR30, 2
	load32	GR2, GR30, 3
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
$BB0_9:                                 # %if.else8
                                        #   in Loop: Header=BB0_3 Depth=1
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
$BB0_3:                                 # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
{
	store32	GR2, GR30, 1
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
$BB0_8:                                 # %if.then6
                                        #   in Loop: Header=BB0_4 Depth=2
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
	addi	GR2, GR2, 1
}
{
	store32	GR2, GR30, 2
}
$BB0_4:                                 # %while.cond
                                        #   Parent Loop BB0_3 Depth=1
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
	gt	 GR3, GR2
}
{
	jc	 $BB0_10
}
{
	nop
}
{
	nop
}
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB0_4 Depth=2
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
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
	movigl	GR3,31
}
{
	movigh	GR3,0
}
{
	srl	GR3, GR2, GR3
}
{
	add	GR2, GR2, GR3
	movigl	GR3,1
}
{
	movigh	GR3,0
}
{
	sra	GR3, GR2, GR3
}
{
	store32	GR3, GR30, 0
	movigl	GR2,2
}
{
	movigh	GR2,0
}
{
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 6
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
	load32	GR3, GR3, 0
}
{
	nop
}
{
	load32	GR4, GR30, 5
}
{
	neq	 GR3, GR4
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
# BB#7:                                 # %if.else
                                        #   in Loop: Header=BB0_4 Depth=2
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
	sl	GR2, GR3, GR2
	load32	GR3, GR30, 6
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
	load32	GR2, GR2, 0
}
{
	nop
}
{
	load32	GR3, GR30, 5
}
{
	ge	 GR2, GR3
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
{
	jmp	$BB0_8
}
{
	nop
}
{
	nop
}
$BB0_10:                                # %while.end
{
	movigl	GR2,-2
}
{
	movigh	GR2,-1
}
{
	jmp	$BB0_11
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %if.then3
{
	load32	GR2, GR30, 0
}
{
	nop
}
{
	nop
}
$BB0_11:                                # %return
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
$tmp0:                                  # EmittedInsts:96
	.size	binarysearch, ($tmp0)-binarysearch


