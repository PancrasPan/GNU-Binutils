	.text
	.file	"./testcase_8slots/fir2dim.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -128
}
{
	store32	GR31, GR30, 31
}                                       # 4-byte Folded Spill
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	load32	GR3, GR30, 35
}
{
	nop
}
{
	nop
}
{
	movg2g	GR6,GR3
	load32	GR7, GR30, 34
}
{
	movg2g	GR8,GR4
}
{
	store32	GR5, GR30, 30
	store32	GR4, GR30, 29
}
{
	store32	GR7, GR30, 28
	store32	GR3, GR30, 27
}
{
	store32	GR6, GR30, 26
	store32	GR2, GR30, 25
}
{
	store32	GR8, GR30, 24
}                                       # 4-byte Folded Spill
$BB0_1:                                 # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
{
	movigl	GR4,0
	load32	GR2, GR30, 24
	load32	GR3, GR30, 25
}
{
	movigh	GR4,0
	movg2g	GR5,GR2
}
{
	store32	GR2, GR30, 23
	store32	GR3, GR30, 22
}
{
	store32	GR4, GR30, 21
	store32	GR5, GR30, 20
}
$BB0_2:                                 # %for.body3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	movigl	GR4,1
	load32	GR2, GR30, 20
	load32	GR3, GR30, 21
}
{
	movigh	GR4,0
}
{
	addi	GR2, GR2, 4
	addi	GR3, GR3, 1
	store32	GR4, GR2, 0
}
{
	neqi	 GR3, 4
}
{
	store32	GR3, GR30, 21
	store32	GR2, GR30, 20
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
$BB0_3:                                 # %for.inc4
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 23
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 16
	load32	GR4, GR30, 22
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
	neqi	 GR5, 4
}
{
	store32	GR5, GR30, 25
	store32	GR3, GR30, 24
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
$BB0_4:                                 # %for.end6
{
	movigl	GR3,0
	load32	GR2, GR30, 30
}
{
	movigh	GR3,0
	load32	GR4, GR30, 28
	store32	GR2, GR30, 19
}
{
	store32	GR3, GR30, 18
	store32	GR4, GR30, 17
}
$BB0_5:                                 # %for.body9
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR4,1
	load32	GR2, GR30, 17
	load32	GR3, GR30, 18
}
{
	movigh	GR4,0
}
{
	addi	GR2, GR2, 4
	addi	GR3, GR3, 1
	store32	GR4, GR2, 0
}
{
	neqi	 GR3, 9
}
{
	store32	GR3, GR30, 18
	store32	GR2, GR30, 17
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
$BB0_6:                                 # %for.cond21.preheader
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	load32	GR3, GR30, 19
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR3, 5
}
{
	store32	GR2, GR3, 4
}
{
	store32	GR2, GR3, 3
}
{
	store32	GR2, GR3, 2
}
{
	store32	GR2, GR3, 1
}
{
	load32	GR4, GR30, 30
	store32	GR2, GR3, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR4, 24
	load32	GR6, GR30, 29
	store32	GR2, GR30, 16
}
{
	store32	GR5, GR30, 15
	store32	GR6, GR30, 14
}
$BB0_7:                                 # %for.body23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
{
	load32	GR2, GR30, 14
	load32	GR3, GR30, 15
}
{
	movigl	GR5,0
	load32	GR4, GR30, 16
}
{
	movigh	GR5,0
}
{
	addi	GR6, GR3, 4
	store32	GR5, GR3, 0
}
{
	movg2g	GR7,GR2
}
{
	store32	GR2, GR30, 13
	store32	GR3, GR30, 12
}
{
	store32	GR4, GR30, 11
	store32	GR6, GR30, 10
}
{
	store32	GR5, GR30, 9
	store32	GR7, GR30, 8
}
$BB0_8:                                 # %for.body27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR2, GR30, 8
	load32	GR3, GR30, 9
}
{
	load32	GR4, GR30, 10
	load32	GR5, GR30, 12
}
{
	load32	GR6, GR2, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR5, 8
	addi	GR2, GR2, 4
	store32	GR6, GR4, 0
	addi	GR3, GR3, 1
}
{
	neqi	 GR3, 4
}
{
	movg2g	GR7,GR4
}
{
	movg2g	GR8,GR5
}
{
	store32	GR5, GR30, 7
	store32	GR3, GR30, 9
}
{
	store32	GR4, GR30, 6
	store32	GR8, GR30, 10
}
{
	store32	GR2, GR30, 8
	store32	GR7, GR30, 12
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
$BB0_9:                                 # %for.end32
                                        #   in Loop: Header=BB0_7 Depth=1
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	load32	GR3, GR30, 7
}
{
	nop
}
{
	nop
}
{
	load32	GR2, GR30, 6
	store32	GR2, GR3, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR2, 8
	load32	GR5, GR30, 13
}
{
	nop
}
{
	nop
}
{
	addi	GR6, GR5, 16
	load32	GR7, GR30, 11
}
{
	nop
}
{
	nop
}
{
	addi	GR8, GR7, 1
}
{
	neqi	 GR8, 4
}
{
	movg2g	GR10,GR4
}
{
	store32	GR4, GR30, 5
	store32	GR10, GR30, 15
}
{
	store32	GR6, GR30, 14
	store32	GR8, GR30, 16
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
$BB0_10:                                # %for.end50
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	load32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR3, 5
}
{
	store32	GR2, GR3, 4
}
{
	store32	GR2, GR3, 3
}
{
	store32	GR2, GR3, 2
}
{
	store32	GR2, GR3, 1
}
{
	store32	GR2, GR3, 0
}
{
	movg2g	GR4,GR30
	movigl	GR5,64
}
{
	movigh	GR5,0
}
{
	load32	GR4, GR30, 27
	store32	GR5, GR4, 2
}
{
	nop
}
{
	movg2g	GR5,GR2
}
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
	addi	GR30, GR30, 128
	load32	GR31, GR30, 31
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
	addi	GR30, GR30, -120
}
{
	store32	GR31, GR30, 29
}                                       # 4-byte Folded Spill
{
	movigh	GR2,%hi(main.coefficients)
}
{
	movigl	GR2,%lo(main.coefficients)
	movg2g	GR3,GR30
}
{
	movigh	GR2,%hi(main.output)
	store32	GR2, GR3, 2
}
{
	movigl	GR2,%lo(main.output)
}
{
	movigh	GR3,%hi(main.image)
	store32	GR2, GR3, 3
}
{
	movigl	GR3,%lo(main.image)
	movigh	GR4,%hi(main.array)
}
{
	movigl	GR4,%lo(main.array)
}
{
	store32	GR4, GR30, 28
}                                       # 4-byte Folded Spill
{
	movg2g	GR4,GR3
}
{
	load32	GR5, GR30, 28
}                                       # 4-byte Folded Reload
{
	nop
}
{
	store32	GR2, GR30, 27
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
	movigl	GR2,0
}
{
	movigh	GR2,0
	load32	GR3, GR30, 27
}
{
	nop
}
{
	store32	GR2, GR30, 26
	store32	GR3, GR30, 25
}
$BB1_1:                                 # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #       Child Loop BB1_4 Depth 3
                                        #       Child Loop BB1_6 Depth 3
                                        #       Child Loop BB1_7 Depth 3
{
	movigl	GR4,6
	load32	GR2, GR30, 25
	load32	GR3, GR30, 26
}
{
	movigh	GR4,0
}
{
	mul32	GR4, GR3, GR4
	movigl	GR5,0
}
{
	movigh	GR5,0
	movg2g	GR6,GR2
}
{
	store32	GR2, GR30, 24
	store32	GR3, GR30, 23
}
{
	store32	GR4, GR30, 22
	store32	GR5, GR30, 21
}
{
	store32	GR6, GR30, 20
}                                       # 4-byte Folded Spill
$BB1_2:                                 # %for.body3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_4 Depth 3
                                        #       Child Loop BB1_6 Depth 3
                                        #       Child Loop BB1_7 Depth 3
{
	load32	GR2, GR30, 20
	load32	GR3, GR30, 21
}
{
	nop
}
{
	load32	GR4, GR30, 22
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	add	GR5, GR3, GR4
	movigl	GR6,0
}
{
	movigh	GR6,0
}
{
	movigl	GR7,2
	store32	GR6, GR2, 0
}
{
	movigh	GR7,0
}
{
	sl	GR7, GR5, GR7
	movigh	GR8,%hi(main.array)
}
{
	movigl	GR8,%lo(main.array)
}
{
	add	GR7, GR8, GR7
	movigh	GR8,%hi(main.coefficients)
}
{
	addi	GR9, GR5, 12
	addi	GR5, GR5, 6
	movigl	GR8,%lo(main.coefficients)
	store32	GR2, GR30, 19
	store32	GR3, GR30, 18
}
{
	store32	GR9, GR30, 17
	store32	GR5, GR30, 16
}
{
	store32	GR8, GR30, 15
	store32	GR6, GR30, 14
}
{
	store32	GR7, GR30, 13
}                                       # 4-byte Folded Spill
{
	jmp	$BB1_4
}
{
	nop
}
{
	nop
}
$BB1_3:                                 # %for.cond12.preheader
                                        #   in Loop: Header=BB1_2 Depth=2
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 16
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	movigh	GR4,%hi(main.array)
}
{
	movigl	GR4,%lo(main.array)
}
{
	add	GR2, GR4, GR2
	movigl	GR4,0
}
{
	movigh	GR4,0
	movigh	GR5,%hi(main.coefficients)
}
{
	movigl	GR5,%lo(main.coefficients)
}
{
	addi	GR6, GR5, 12
	addi	GR5, GR5, 8
}
{
	store32	GR6, GR30, 12
	store32	GR4, GR30, 11
}
{
	store32	GR5, GR30, 10
	store32	GR2, GR30, 9
}
{
	jmp	$BB1_6
}
{
	nop
}
{
	nop
}
$BB1_4:                                 # %for.body8
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR2, GR30, 13
	load32	GR3, GR30, 15
}
{
	nop
}
{
	load32	GR4, GR30, 14
	load32	GR5, GR3, 0
}
{
	nop
}
{
	load32	GR6, GR2, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR5, GR6, GR5
	load32	GR6, GR30, 19
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
	addi	GR2, GR2, 4
	addi	GR3, GR3, 4
	store32	GR5, GR6, 0
	addi	GR4, GR4, 1
}
{
	eqi	 GR4, 3
}
{
	store32	GR3, GR30, 15
	store32	GR4, GR30, 14
}
{
	store32	GR2, GR30, 13
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
{
	jmp	$BB1_4
}
{
	nop
}
{
	nop
}
$BB1_5:                                 # %for.cond22.preheader
                                        #   in Loop: Header=BB1_2 Depth=2
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 17
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	movigh	GR4,%hi(main.array)
}
{
	movigl	GR4,%lo(main.array)
}
{
	add	GR2, GR4, GR2
	movigl	GR4,0
}
{
	movigh	GR4,0
	load32	GR5, GR30, 8
}
{
	nop
}
{
	nop
}
{
	store32	GR5, GR30, 7
	store32	GR4, GR30, 6
}
{
	store32	GR2, GR30, 5
}                                       # 4-byte Folded Spill
{
	jmp	$BB1_7
}
{
	nop
}
{
	nop
}
$BB1_6:                                 # %for.body14
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR2, GR30, 9
	load32	GR3, GR30, 12
}
{
	load32	GR4, GR30, 10
	load32	GR5, GR30, 11
}
{
	load32	GR6, GR3, 0
}
{
	nop
}
{
	load32	GR7, GR2, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR6, GR7, GR6
	load32	GR7, GR30, 19
}
{
	nop
}
{
	nop
}
{
	load32	GR8, GR7, 0
}
{
	nop
}
{
	nop
}
{
	add	GR6, GR8, GR6
}
{
	addi	GR2, GR2, 4
	addi	GR4, GR4, 8
	store32	GR6, GR7, 0
	addi	GR5, GR5, 1
}
{
	eqi	 GR5, 3
}
{
	movg2g	GR8,GR4
}
{
	store32	GR5, GR30, 11
	store32	GR8, GR30, 12
}
{
	store32	GR4, GR30, 8
	store32	GR2, GR30, 9
}
{
	store32	GR3, GR30, 10
}                                       # 4-byte Folded Spill
{
	jc	 $BB1_5
}
{
	nop
}
{
	nop
}
{
	jmp	$BB1_6
}
{
	nop
}
{
	nop
}
$BB1_7:                                 # %for.body24
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR2, GR30, 5
	load32	GR3, GR30, 7
}
{
	nop
}
{
	load32	GR4, GR30, 6
	load32	GR5, GR3, 0
}
{
	nop
}
{
	load32	GR6, GR2, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR5, GR6, GR5
	load32	GR6, GR30, 19
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
	addi	GR2, GR2, 4
	addi	GR3, GR3, 4
	store32	GR5, GR6, 0
	addi	GR4, GR4, 1
}
{
	neqi	 GR4, 3
}
{
	store32	GR3, GR30, 7
	store32	GR4, GR30, 6
}
{
	store32	GR2, GR30, 5
}                                       # 4-byte Folded Spill
{
	jc	 $BB1_7
}
{
	nop
}
{
	nop
}
$BB1_8:                                 # %for.end31
                                        #   in Loop: Header=BB1_2 Depth=2
{
	load32	GR2, GR30, 19
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 4
	load32	GR4, GR30, 18
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
	neqi	 GR5, 4
}
{
	store32	GR5, GR30, 21
	store32	GR3, GR30, 20
}
{
	jc	 $BB1_2
}
{
	nop
}
{
	nop
}
$BB1_9:                                 # %for.inc36
                                        #   in Loop: Header=BB1_1 Depth=1
{
	load32	GR2, GR30, 24
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 16
	load32	GR4, GR30, 23
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
	neqi	 GR5, 4
}
{
	store32	GR5, GR30, 26
	store32	GR3, GR30, 25
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
$BB1_10:                                # %for.end38
{
	movigh	GR2,%hi(main.output)
}
{
	movigl	GR2,%lo(main.output)
	movg2g	GR3,GR30
}
{
	movigh	GR2,%hi(main.coefficients)
	store32	GR2, GR3, 3
}
{
	movigl	GR2,%lo(main.coefficients)
}
{
	movigh	GR2,%hi(main.image)
	store32	GR2, GR3, 2
}
{
	movigl	GR2,%lo(main.image)
	movigh	GR3,%hi(main.array)
}
{
	movigl	GR3,%lo(main.array)
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
	movigl	GR2,0
}
{
	addi	GR30, GR30, 120
	movigh	GR2,0
	load32	GR31, GR30, 29
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

	.type	main.coefficients,@object # @main.coefficients
	.local	main.coefficients
	.comm	main.coefficients,36,4
	.type	main.image,@object      # @main.image
	.local	main.image
	.comm	main.image,64,4
	.type	main.array,@object      # @main.array
	.local	main.array
	.comm	main.array,144,4
	.type	main.output,@object     # @main.output
	.local	main.output
	.comm	main.output,64,4

