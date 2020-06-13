	.text
	.file	"./testcase_8slots/binary_search.ll"
	.globl	binarysearch
	.align	2
	.type	binarysearch,@function
binarysearch:                           # @binarysearch
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -56
}
{
	movigl	GR2,-1
}
{
	movigh	GR2,-1
	load32	GR3, GR30, 17
}
{
	nop
}
{
	load32	GR6, GR30, 16
}
{
	gt	 GR6, GR3
	store32	GR5, GR30, 13
	store32	GR4, GR30, 12
}
{
	store32	GR2, GR30, 11
	store32	GR3, GR30, 10
}
{
	store32	GR6, GR30, 9
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_7
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %while.cond.preheader
{
	load32	GR2, GR30, 9
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 10
}                                       # 4-byte Folded Reload
{
	gt	 GR2, GR3
	movigl	GR5,-2
}
{
	movigh	GR5,-1
	store32	GR2, GR30, 8
	store32	GR3, GR30, 7
}
{
	store32	GR5, GR30, 11
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_7
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
{
	load32	GR2, GR30, 8
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 7
}                                       # 4-byte Folded Reload
{
	nop
}
{
	store32	GR2, GR30, 6
	store32	GR3, GR30, 5
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
$BB0_3:                                 # %while.cond
                                        #   in Loop: Header=BB0_4 Depth=2
{
	load32	GR2, GR30, 6
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 4
}                                       # 4-byte Folded Reload
{
	gt	 GR2, GR3
	movigl	GR5,-2
}
{
	movigh	GR5,-1
	store32	GR3, GR30, 5
}
{
	store32	GR5, GR30, 11
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_7
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %while.body
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR2, GR30, 5
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 6
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	add	GR4, GR2, GR3
	movigl	GR5,31
}
{
	movigh	GR5,0
}
{
	srl	GR5, GR4, GR5
}
{
	add	GR4, GR4, GR5
	movigl	GR5,1
}
{
	movigh	GR5,0
}
{
	sra	GR4, GR4, GR5
	movigl	GR5,2
}
{
	movigh	GR5,0
}
{
	sl	GR5, GR4, GR5
	load32	GR6, GR30, 12
}
{
	nop
}
{
	nop
}
{
	add	GR5, GR6, GR5
}
{
	load32	GR5, GR5, 0
}
{
	nop
}
{
	load32	GR7, GR30, 13
}                                       # 4-byte Folded Reload
{
	eq	 GR5, GR7
	movg2g	GR9,GR4
}
{
	store32	GR2, GR30, 3
	store32	GR4, GR30, 2
}
{
	store32	GR5, GR30, 1
	store32	GR9, GR30, 11
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
$BB0_5:                                 # %if.else
                                        #   in Loop: Header=BB0_4 Depth=2
{
	load32	GR2, GR30, 1
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 13
}                                       # 4-byte Folded Reload
{
	ge	 GR2, GR3
	load32	GR5, GR30, 2
}
{
	nop
}
{
	nop
}
{
	addi	GR6, GR5, -1
}
{
	store32	GR6, GR30, 4
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_3
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %if.then6
                                        #   in Loop: Header=BB0_2 Depth=1
{
	movigl	GR2,-2
}
{
	movigh	GR2,-1
	load32	GR3, GR30, 2
}
{
	nop
}
{
	load32	GR4, GR30, 3
}                                       # 4-byte Folded Reload
{
	lt	 GR3, GR4
	addi	GR6, GR3, 1
}
{
	store32	GR6, GR30, 8
	store32	GR4, GR30, 7
}
{
	store32	GR2, GR30, 11
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_2
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %return
{
	addi	GR30, GR30, 56
	load32	GR2, GR30, 11
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
	.size	binarysearch, ($tmp0)-binarysearch


