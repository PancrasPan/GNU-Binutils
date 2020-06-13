	.text
	.file	"./testcase_8slots/division.ll"
	.globl	integer_div
	.align	2
	.type	integer_div,@function
integer_div:                            # @integer_div
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -64
}
{
	leu	 GR4, GR5
	movg2g	GR2,GR5
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	movg2g	GR6,GR3
}
{
	store32	GR2, GR30, 15
	store32	GR3, GR30, 14
}
{
	store32	GR6, GR30, 13
	store32	GR4, GR30, 12
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
$BB0_1:                                 # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
{
	load32	GR2, GR30, 12
	load32	GR3, GR30, 13
}
{
	load32	GR4, GR30, 15
}                                       # 4-byte Folded Reload
{
	ltu	 GR2, GR4
	movigl	GR6,0
}
{
	movigh	GR6,0
}
{
	movg2g	GR7,GR6
}
{
	load32	GR8, GR30, 15
}                                       # 4-byte Folded Reload
{
	movg2g	GR9,GR3
}
{
	store32	GR2, GR30, 11
	store32	GR3, GR30, 10
}
{
	store32	GR4, GR30, 9
	store32	GR9, GR30, 8
}
{
	store32	GR8, GR30, 7
	store32	GR7, GR30, 6
}
{
	store32	GR6, GR30, 5
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_5
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %for.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR2, GR30, 6
	load32	GR3, GR30, 9
}
{
	nop
}
{
	load32	GR4, GR30, 11
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	sub	GR5, GR4, GR3
	load32	GR6, GR30, 15
}
{
	geu	 GR5, GR6
	store32	GR2, GR30, 4
	store32	GR3, GR30, 3
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
$BB0_3:                                 # %if.then4
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,1
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
	sl	GR2, GR2, GR3
	load32	GR4, GR30, 10
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR4
	load32	GR5, GR30, 3
}
{
	nop
}
{
	store32	GR3, GR30, 5
	store32	GR5, GR30, 7
}
{
	store32	GR2, GR30, 8
}                                       # 4-byte Folded Spill
{
	jmp	$BB0_5
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=2
{
	movigl	GR2,1
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
	load32	GR4, GR30, 4
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR4, 1
	load32	GR6, GR30, 11
}
{
	geu	 GR6, GR2
	movg2g	GR8,GR2
}
{
	movg2g	GR9,GR5
}
{
	load32	GR10, GR30, 10
	store32	GR9, GR30, 6
	store32	GR2, GR30, 7
}
{
	store32	GR10, GR30, 8
	store32	GR8, GR30, 9
}
{
	store32	GR5, GR30, 5
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
$BB0_5:                                 # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 8
	load32	GR3, GR30, 5
}
{
	load32	GR4, GR30, 7
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR5, GR30, 11
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	sub	GR6, GR5, GR4
	load32	GR7, GR30, 15
}
{
	ltu	 GR6, GR7
	movg2g	GR8,GR2
}
{
	store32	GR2, GR30, 2
	store32	GR3, GR30, 1
}
{
	store32	GR4, GR30, 0
	store32	GR8, GR30, 14
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
$BB0_6:                                 # %if.end10
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 1
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, -1
	movigl	GR4,1
}
{
	movigh	GR4,0
}
{
	sl	GR3, GR4, GR3
	load32	GR5, GR30, 2
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR5, GR3
	load32	GR6, GR30, 0
}
{
	nop
}
{
	nop
}
{
	srl	GR4, GR6, GR4
	load32	GR7, GR30, 11
}
{
	nop
}
{
	nop
}
{
	sub	GR4, GR7, GR4
	load32	GR8, GR30, 15
}
{
	gtu	 GR4, GR8
	movg2g	GR10,GR3
}
{
	store32	GR4, GR30, 12
	store32	GR10, GR30, 13
}
{
	store32	GR3, GR30, 14
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_1
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %return
{
	addi	GR30, GR30, 64
	load32	GR2, GR30, 14
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
	.size	integer_div, ($tmp0)-integer_div

	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	movigl	GR2,0
}
{
	movigh	GR2,0
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
$tmp1:
	.size	main, ($tmp1)-main


