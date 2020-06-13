	.text
	.file	"./testcase_8slots/matrix1.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -48
}
{
	store32	GR31, GR30, 11
}                                       # 4-byte Folded Spill
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	load32	GR3, GR30, 14
	store32	GR5, GR30, 10
	store32	GR4, GR30, 9
}
{
	store32	GR3, GR30, 8
	store32	GR2, GR30, 7
}
{
	jmp	$BB0_2
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %for.cond1.preheader
{
	movigl	GR3,0
	load32	GR2, GR30, 8
}
{
	movigh	GR3,0
	store32	GR2, GR30, 6
}
{
	store32	GR3, GR30, 5
}                                       # 4-byte Folded Spill
{
	jmp	$BB0_3
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR3,2
	load32	GR2, GR30, 7
}
{
	movigh	GR3,0
}
{
	sl	GR3, GR2, GR3
	load32	GR4, GR30, 9
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
	movigl	GR5,1
}
{
	movigh	GR5,0
}
{
	addi	GR2, GR2, 1
	store32	GR5, GR3, 0
}
{
	eqi	 GR2, 100
}
{
	store32	GR2, GR30, 7
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
{
	jmp	$BB0_2
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %for.body3
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR3,2
	load32	GR2, GR30, 5
}
{
	movigh	GR3,0
}
{
	sl	GR3, GR2, GR3
	load32	GR4, GR30, 10
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
	movigl	GR5,1
}
{
	movigh	GR5,0
}
{
	addi	GR2, GR2, 1
	store32	GR5, GR3, 0
}
{
	neqi	 GR2, 100
}
{
	store32	GR2, GR30, 5
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
$BB0_4:                                 # %for.end14
{
	movg2g	GR2,GR30
	movigl	GR3,400
}
{
	movigh	GR3,0
}
{
	movigl	GR2,0
	store32	GR3, GR2, 2
}
{
	movigh	GR2,0
	load32	GR4, GR30, 6
}
{
	movg2g	GR5,GR2
}
{
	store32	GR2, GR30, 4
}                                       # 4-byte Folded Spill
{
	call	memset
}
{
	nop
}
{
	nop
}
{
	addi	GR30, GR30, 48
	load32	GR2, GR30, 4
	load32	GR31, GR30, 11
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
	.size	pin_down, ($tmp0)-pin_down

	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -96
}
{
	store32	GR31, GR30, 23
}                                       # 4-byte Folded Spill
{
	movigh	GR2,%hi(main.C)
}
{
	movigl	GR2,%lo(main.C)
	movg2g	GR3,GR30
}
{
	movigh	GR3,%hi(main.A)
	store32	GR2, GR3, 2
}
{
	movigl	GR3,%lo(main.A)
	movigh	GR4,%hi(main.B)
}
{
	movigl	GR4,%lo(main.B)
}
{
	store32	GR4, GR30, 22
}                                       # 4-byte Folded Spill
{
	movg2g	GR4,GR3
}
{
	load32	GR5, GR30, 22
}                                       # 4-byte Folded Reload
{
	nop
}
{
	store32	GR2, GR30, 21
}                                       # 4-byte Folded Spill
{
	call	pin_down
}
{
	nop
}
{
	nop
}
{
	movigl	GR3,0
}
{
	movigh	GR3,0
	load32	GR4, GR30, 21
	store32	GR2, GR30, 20
}
{
	store32	GR3, GR30, 19
	store32	GR4, GR30, 18
}
$BB1_1:                                 # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #       Child Loop BB1_3 Depth 3
{
	movigl	GR4,10
	load32	GR2, GR30, 18
	load32	GR3, GR30, 19
}
{
	movigh	GR4,0
}
{
	mul32	GR4, GR3, GR4
	movigl	GR5,2
}
{
	movigh	GR5,0
}
{
	sl	GR4, GR4, GR5
	movigh	GR5,%hi(main.B)
}
{
	movigl	GR5,%lo(main.B)
}
{
	add	GR4, GR5, GR4
	movigl	GR5,0
}
{
	movigh	GR5,0
	movigh	GR6,%hi(main.A)
}
{
	movigl	GR6,%lo(main.A)
	movg2g	GR7,GR2
}
{
	store32	GR2, GR30, 17
	store32	GR3, GR30, 16
}
{
	store32	GR4, GR30, 15
	store32	GR7, GR30, 14
}
{
	store32	GR5, GR30, 13
	store32	GR6, GR30, 12
}
$BB1_2:                                 # %for.body3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_3 Depth 3
{
	load32	GR2, GR30, 12
	load32	GR3, GR30, 14
}
{
	movigl	GR5,0
	load32	GR4, GR30, 13
}
{
	movigh	GR5,0
}
{
	load32	GR6, GR30, 15
	store32	GR5, GR3, 0
}
{
	movg2g	GR7,GR2
}
{
	store32	GR2, GR30, 11
	store32	GR3, GR30, 10
}
{
	store32	GR4, GR30, 9
	store32	GR5, GR30, 8
}
{
	store32	GR6, GR30, 7
	store32	GR7, GR30, 6
}
$BB1_3:                                 # %for.body6
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR2, GR30, 6
	load32	GR3, GR30, 7
}
{
	load32	GR4, GR30, 8
	load32	GR5, GR2, 0
}
{
	nop
}
{
	load32	GR6, GR3, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR5, GR6, GR5
	load32	GR6, GR30, 10
}
{
	nop
}
{
	nop
}
{
	load32	GR7, GR6, 0
}
{
	nop
}
{
	nop
}
{
	add	GR5, GR7, GR5
}
{
	addi	GR3, GR3, 4
	addi	GR2, GR2, 4
	store32	GR5, GR6, 0
	addi	GR4, GR4, 1
}
{
	neqi	 GR4, 10
}
{
	store32	GR4, GR30, 8
	store32	GR3, GR30, 7
}
{
	store32	GR2, GR30, 6
}                                       # 4-byte Folded Spill
{
	jc	 $BB1_3
}
{
	nop
}
{
	nop
}
$BB1_4:                                 # %for.end
                                        #   in Loop: Header=BB1_2 Depth=2
{
	load32	GR2, GR30, 10
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 4
	load32	GR4, GR30, 11
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR4, 40
	load32	GR6, GR30, 9
}
{
	nop
}
{
	nop
}
{
	addi	GR7, GR6, 1
}
{
	neqi	 GR7, 10
}
{
	store32	GR7, GR30, 13
	store32	GR3, GR30, 14
}
{
	store32	GR5, GR30, 12
}                                       # 4-byte Folded Spill
{
	jc	 $BB1_2
}
{
	nop
}
{
	nop
}
$BB1_5:                                 # %for.inc13
                                        #   in Loop: Header=BB1_1 Depth=1
{
	load32	GR2, GR30, 17
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 40
	load32	GR4, GR30, 16
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR4, 1
}
{
	neqi	 GR5, 10
}
{
	store32	GR5, GR30, 19
	store32	GR3, GR30, 18
}
{
	jc	 $BB1_1
}
{
	nop
}
{
	nop
}
$BB1_6:                                 # %for.end15
{
	movigh	GR2,%hi(main.C)
}
{
	movigl	GR2,%lo(main.C)
	movg2g	GR3,GR30
}
{
	movigh	GR2,%hi(main.A)
	store32	GR2, GR3, 2
}
{
	movigl	GR2,%lo(main.A)
	movigh	GR3,%hi(main.B)
}
{
	movigl	GR3,%lo(main.B)
	movg2g	GR4,GR2
}
{
	movg2g	GR5,GR3
}
{
	call	pin_down
}
{
	nop
}
{
	nop
}
{
	movigl	GR3,0
}
{
	movigh	GR3,0
	store32	GR2, GR30, 5
}
{
	movg2g	GR2,GR3
}
{
	addi	GR30, GR30, 96
	load32	GR31, GR30, 23
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

	.type	main.A,@object          # @main.A
	.local	main.A
	.comm	main.A,400,4
	.type	main.B,@object          # @main.B
	.local	main.B
	.comm	main.B,400,4
	.type	main.C,@object          # @main.C
	.local	main.C
	.comm	main.C,400,4

