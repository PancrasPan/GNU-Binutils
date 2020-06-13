	.text
	.file	"./testcase_8slots/binary_insert.ll"
	.globl	binary_insert
	.align	2
	.type	binary_insert,@function
binary_insert:                          # @binary_insert
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -72
}
{
	movigl	GR2,-1
}
{
	movigh	GR2,-1
	movg2g	GR3,GR5
	load32	GR6, GR30, 20
}
{
	nop
}
{
	gt	 GR5, GR6
	store32	GR6, GR30, 17
	store32	GR4, GR30, 16
}
{
	store32	GR2, GR30, 15
	store32	GR3, GR30, 14
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
$BB0_1:                                 # %for.cond.preheader
{
	load32	GR2, GR30, 14
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 17
}                                       # 4-byte Folded Reload
{
	ge	 GR2, GR3
	movigl	GR5,0
}
{
	movigh	GR5,0
	store32	GR2, GR30, 13
}
{
	store32	GR5, GR30, 15
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_10
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_6 Depth 3
                                        #     Child Loop BB0_8 Depth 2
{
	load32	GR2, GR30, 13
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 14
}                                       # 4-byte Folded Reload
{
	lt	 GR2, GR3
	addi	GR5, GR2, 1
	movigl	GR6,2
}
{
	movigh	GR6,0
}
{
	sl	GR6, GR5, GR6
	load32	GR7, GR30, 16
}
{
	nop
}
{
	nop
}
{
	add	GR6, GR7, GR6
}
{
	load32	GR6, GR6, 0
}
{
	movg2g	GR8,GR2
}
{
	load32	GR9, GR30, 14
	store32	GR2, GR30, 12
	store32	GR3, GR30, 11
}
{
	store32	GR9, GR30, 10
	store32	GR5, GR30, 9
}
{
	store32	GR6, GR30, 8
	store32	GR8, GR30, 7
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
$BB0_3:                                 # %while.body.lr.ph
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
{
	load32	GR2, GR30, 11
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
	jmp	$BB0_6
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %while.cond
                                        #   in Loop: Header=BB0_6 Depth=3
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
	le	 GR2, GR3
	store32	GR2, GR30, 10
	store32	GR3, GR30, 5
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
$BB0_5:                                 # %for.cond11.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
{
	load32	GR2, GR30, 10
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 12
}                                       # 4-byte Folded Reload
{
	lt	 GR3, GR2
	store32	GR2, GR30, 3
	store32	GR3, GR30, 2
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
$BB0_6:                                 # %while.body
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
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
	load32	GR6, GR30, 16
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
	load32	GR7, GR30, 8
}                                       # 4-byte Folded Reload
{
	gt	 GR5, GR7
	addi	GR8, GR4, -1
	store32	GR2, GR30, 1
	store32	GR4, GR30, 0
}
{
	store32	GR8, GR30, 4
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_4
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %if.then6
                                        #   in Loop: Header=BB0_3 Depth=2
{
	load32	GR2, GR30, 0
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 1
}                                       # 4-byte Folded Reload
{
	lt	 GR2, GR3
	addi	GR5, GR2, 1
}
{
	movg2g	GR6,GR5
}
{
	store32	GR3, GR30, 7
	store32	GR5, GR30, 10
}
{
	store32	GR6, GR30, 11
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
{
	jmp	$BB0_5
}
{
	nop
}
{
	nop
}
$BB0_8:                                 # %for.body13
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	movigl	GR3,2
	load32	GR2, GR30, 2
}
{
	movigh	GR3,0
}
{
	sl	GR3, GR2, GR3
	load32	GR4, GR30, 16
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
	load32	GR5, GR3, 0
}
{
	nop
}
{
	nop
}
{
	load32	GR3, GR30, 3
	store32	GR5, GR3, 1
}
{
	gt	 GR2, GR3
	addi	GR2, GR2, -1
}
{
	store32	GR2, GR30, 2
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_8
}
{
	nop
}
{
	nop
}
$BB0_9:                                 # %for.end
                                        #   in Loop: Header=BB0_2 Depth=1
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
	sl	GR2, GR3, GR2
	load32	GR4, GR30, 16
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR4, GR2
	load32	GR5, GR30, 8
}
{
	nop
}
{
	nop
}
{
	load32	GR2, GR30, 9
	store32	GR5, GR2, 0
}
{
	nop
}
{
	load32	GR6, GR30, 17
}                                       # 4-byte Folded Reload
{
	neq	 GR2, GR6
	movigl	GR8,0
}
{
	movigh	GR8,0
	store32	GR2, GR30, 13
}
{
	store32	GR8, GR30, 15
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
$BB0_10:                                # %return
{
	addi	GR30, GR30, 72
	load32	GR2, GR30, 15
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
	.size	binary_insert, ($tmp0)-binary_insert


