	.text
	.file	"./testcase_4slots/fir2dim.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	load32	GR2, GR30, 9
	load32	GR3, GR30, 8
}
{
	store32	GR4, GR30, 5
	store32	GR5, GR30, 4
}
{
	store32	GR3, GR30, 3
	store32	GR2, GR30, 2
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
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
$BB0_5:                                 # %for.inc4
                                        #   in Loop: Header=BB0_1 Depth=1
{
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
}
$BB0_1:                                 # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
{
	load32	GR3, GR30, 1
}
{
	nop
}
{
	lti	 GR3, 4
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
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	store32	GR2, GR30, 0
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
$BB0_4:                                 # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=2
{
	load32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, 4
}
{
	store32	GR4, GR30, 5
	movigl	GR4,1
}
{
	movigh	GR4,0
}
{
	store32	GR4, GR3, 0
}
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
	addi	GR3, GR3, 1
}
{
	store32	GR3, GR30, 0
}
$BB0_3:                                 # %for.cond1
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR3, GR30, 0
}
{
	nop
}
{
	lti	 GR3, 4
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
{
	jmp	$BB0_5
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %for.end6
{
	load32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, -64
}
{
	store32	GR3, GR30, 5
	store32	GR2, GR30, 1
}
{
	jmp	$BB0_7
}
{
	nop
}
{
	nop
}
$BB0_8:                                 # %for.inc11
                                        #   in Loop: Header=BB0_7 Depth=1
{
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, 4
}
{
	store32	GR4, GR30, 3
	movigl	GR4,1
}
{
	movigh	GR4,0
}
{
	store32	GR4, GR3, 0
}
{
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
}
$BB0_7:                                 # %for.cond7
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR3, GR30, 1
}
{
	nop
}
{
	lti	 GR3, 9
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
# BB#9:                                 # %for.end13
{
	store32	GR2, GR30, 1
}
{
	jmp	$BB0_10
}
{
	nop
}
{
	nop
}
$BB0_11:                                # %for.inc18
                                        #   in Loop: Header=BB0_10 Depth=1
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
	addi	GR4, GR3, 4
}
{
	store32	GR4, GR30, 4
}
{
	store32	GR2, GR3, 0
}
{
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
}
$BB0_10:                                # %for.cond14
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR3, GR30, 1
}
{
	nop
}
{
	lti	 GR3, 6
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
# BB#12:                                # %for.end20
{
	store32	GR2, GR30, 0
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
$BB0_17:                                # %for.inc34
                                        #   in Loop: Header=BB0_13 Depth=1
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
	addi	GR4, GR3, 4
}
{
	store32	GR4, GR30, 4
}
{
	store32	GR2, GR3, 0
}
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
	addi	GR3, GR3, 1
}
{
	store32	GR3, GR30, 0
}
$BB0_13:                                # %for.cond21
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
{
	load32	GR3, GR30, 0
}
{
	nop
}
{
	lti	 GR3, 4
}
{
	jnc	 $BB0_18
}
{
	nop
}
{
	nop
}
# BB#14:                                # %for.body23
                                        #   in Loop: Header=BB0_13 Depth=1
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
	addi	GR4, GR3, 4
}
{
	store32	GR4, GR30, 4
}
{
	store32	GR2, GR3, 0
}
{
	store32	GR2, GR30, 1
}
{
	jmp	$BB0_15
}
{
	nop
}
{
	nop
}
$BB0_16:                                # %for.inc30
                                        #   in Loop: Header=BB0_15 Depth=2
{
	load32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, 4
}
{
	store32	GR4, GR30, 5
}
{
	load32	GR3, GR3, 0
	load32	GR4, GR30, 4
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR4, 4
}
{
	store32	GR5, GR30, 4
}
{
	store32	GR3, GR4, 0
}
{
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
}
$BB0_15:                                # %for.cond25
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR3, GR30, 1
}
{
	nop
}
{
	lti	 GR3, 4
}
{
	jc	 $BB0_16
}
{
	nop
}
{
	nop
}
{
	jmp	$BB0_17
}
{
	nop
}
{
	nop
}
$BB0_18:                                # %for.end36
{
	store32	GR2, GR30, 1
}
{
	jmp	$BB0_19
}
{
	nop
}
{
	nop
}
$BB0_20:                                # %for.inc41
                                        #   in Loop: Header=BB0_19 Depth=1
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
	addi	GR4, GR3, 4
}
{
	store32	GR4, GR30, 4
}
{
	store32	GR2, GR3, 0
}
{
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
}
$BB0_19:                                # %for.cond37
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR3, GR30, 1
}
{
	nop
}
{
	lti	 GR3, 6
}
{
	jc	 $BB0_20
}
{
	nop
}
{
	nop
}
# BB#21:                                # %for.end43
{
	store32	GR2, GR30, 1
}
{
	jmp	$BB0_22
}
{
	nop
}
{
	nop
}
$BB0_23:                                # %for.inc48
                                        #   in Loop: Header=BB0_22 Depth=1
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
	addi	GR4, GR3, 4
}
{
	store32	GR4, GR30, 2
}
{
	store32	GR2, GR3, 0
}
{
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
}
$BB0_22:                                # %for.cond44
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR3, GR30, 1
}
{
	nop
}
{
	lti	 GR3, 16
}
{
	jc	 $BB0_23
}
{
	nop
}
{
	nop
}
# BB#24:                                # %for.end50
{
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
$tmp0:                                  # EmittedInsts:194
	.size	pin_down, ($tmp0)-pin_down

	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -72
}
{
	store32	GR31, GR30, 17
	movigh	GR2,%hi(main.image)
}
{
	movigl	GR2,%lo(main.image)
}
{
	store32	GR2, GR30, 6
	store32	GR2, GR30, 16
}
{
	movg2g	GR4,GR2
	movigh	GR2,%hi(main.array)
}
{
	movigl	GR2,%lo(main.array)
}
{
	store32	GR2, GR30, 4
	store32	GR2, GR30, 15
}
{
	movg2g	GR5,GR2
	movigh	GR2,%hi(main.coefficients)
}
{
	movigl	GR2,%lo(main.coefficients)
}
{
	store32	GR2, GR30, 5
	store32	GR2, GR30, 12
	movigh	GR3,%hi(main.output)
}
{
	movigl	GR3,%lo(main.output)
}
{
	store32	GR3, GR30, 7
	store32	GR3, GR30, 11
}
{
	store32	GR3, GR30, 3
}
{
	store32	GR2, GR30, 2
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
	load32	GR9, GR30, 7
	load32	GR8, GR30, 5
}
{
	load32	GR5, GR30, 4
	load32	GR6, GR30, 6
}
{
	nop
}
{
	nop
}
{
	store32	GR6, GR30, 16
	store32	GR5, GR30, 15
}
{
	store32	GR8, GR30, 12
	store32	GR9, GR30, 11
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 10
}
{
	jmp	$BB1_1
}
{
	nop
}
{
	nop
}
$BB1_14:                                # %for.inc36
                                        #   in Loop: Header=BB1_1 Depth=1
{
	load32	GR3, GR30, 10
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
	store32	GR3, GR30, 10
}
$BB1_1:                                 # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #       Child Loop BB1_5 Depth 3
                                        #       Child Loop BB1_8 Depth 3
                                        #       Child Loop BB1_11 Depth 3
{
	load32	GR3, GR30, 10
}
{
	nop
}
{
	lti	 GR3, 4
}
{
	jnc	 $BB1_15
}
{
	nop
}
{
	nop
}
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
{
	store32	GR2, GR30, 9
}
{
	jmp	$BB1_3
}
{
	nop
}
{
	nop
}
$BB1_13:                                # %for.inc33
                                        #   in Loop: Header=BB1_3 Depth=2
{
	load32	GR3, GR30, 11
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, 4
}
{
	store32	GR3, GR30, 11
	load32	GR3, GR30, 9
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
	store32	GR3, GR30, 9
}
$BB1_3:                                 # %for.cond1
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_5 Depth 3
                                        #       Child Loop BB1_8 Depth 3
                                        #       Child Loop BB1_11 Depth 3
{
	load32	GR3, GR30, 9
}
{
	nop
}
{
	lti	 GR3, 4
}
{
	jnc	 $BB1_14
}
{
	nop
}
{
	nop
}
# BB#4:                                 # %for.body3
                                        #   in Loop: Header=BB1_3 Depth=2
{
	store32	GR8, GR30, 12
	movigl	GR3,6
}
{
	movigh	GR3,0
	load32	GR4, GR30, 10
}
{
	nop
}
{
	nop
}
{
	mul32	GR3, GR4, GR3
	load32	GR4, GR30, 9
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR3, GR4
	movigl	GR4,2
}
{
	movigh	GR4,0
}
{
	sl	GR3, GR3, GR4
}
{
	add	GR3, GR5, GR3
}
{
	store32	GR3, GR30, 15
	addi	GR3, GR3, 24
}
{
	store32	GR3, GR30, 14
	load32	GR3, GR30, 15
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, 48
}
{
	store32	GR3, GR30, 13
	load32	GR3, GR30, 11
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR3, 0
}
{
	store32	GR2, GR30, 8
}
{
	jmp	$BB1_5
}
{
	nop
}
{
	nop
}
$BB1_6:                                 # %for.inc
                                        #   in Loop: Header=BB1_5 Depth=3
{
	load32	GR3, GR30, 12
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, 4
}
{
	store32	GR4, GR30, 12
}
{
	load32	GR3, GR3, 0
	load32	GR4, GR30, 15
}
{
	nop
}
{
	nop
}
{
	addi	GR7, GR4, 4
}
{
	store32	GR7, GR30, 15
}
{
	load32	GR4, GR4, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR3, GR3, GR4
	load32	GR4, GR30, 11
}
{
	nop
}
{
	nop
}
{
	load32	GR7, GR4, 0
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR7, GR3
}
{
	store32	GR3, GR4, 0
}
{
	load32	GR3, GR30, 8
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
	store32	GR3, GR30, 8
}
$BB1_5:                                 # %for.cond6
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR3, GR30, 8
}
{
	nop
}
{
	lti	 GR3, 3
}
{
	jc	 $BB1_6
}
{
	nop
}
{
	nop
}
# BB#7:                                 # %for.end
                                        #   in Loop: Header=BB1_3 Depth=2
{
	store32	GR2, GR30, 8
}
{
	jmp	$BB1_8
}
{
	nop
}
{
	nop
}
$BB1_9:                                 # %for.inc19
                                        #   in Loop: Header=BB1_8 Depth=3
{
	load32	GR3, GR30, 12
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, 4
}
{
	store32	GR4, GR30, 12
}
{
	load32	GR3, GR3, 0
	load32	GR4, GR30, 14
}
{
	nop
}
{
	nop
}
{
	addi	GR7, GR4, 4
}
{
	store32	GR7, GR30, 14
}
{
	load32	GR4, GR4, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR3, GR3, GR4
	load32	GR4, GR30, 11
}
{
	nop
}
{
	nop
}
{
	load32	GR7, GR4, 0
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR7, GR3
}
{
	store32	GR3, GR4, 0
}
{
	load32	GR3, GR30, 8
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
	store32	GR3, GR30, 8
}
$BB1_8:                                 # %for.cond12
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR3, GR30, 8
}
{
	nop
}
{
	lti	 GR3, 3
}
{
	jc	 $BB1_9
}
{
	nop
}
{
	nop
}
# BB#10:                                # %for.end21
                                        #   in Loop: Header=BB1_3 Depth=2
{
	store32	GR2, GR30, 8
}
{
	jmp	$BB1_11
}
{
	nop
}
{
	nop
}
$BB1_12:                                # %for.inc29
                                        #   in Loop: Header=BB1_11 Depth=3
{
	load32	GR3, GR30, 12
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, 4
}
{
	store32	GR4, GR30, 12
}
{
	load32	GR3, GR3, 0
	load32	GR4, GR30, 13
}
{
	nop
}
{
	nop
}
{
	addi	GR7, GR4, 4
}
{
	store32	GR7, GR30, 13
}
{
	load32	GR4, GR4, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR3, GR3, GR4
	load32	GR4, GR30, 11
}
{
	nop
}
{
	nop
}
{
	load32	GR7, GR4, 0
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR7, GR3
}
{
	store32	GR3, GR4, 0
}
{
	load32	GR3, GR30, 8
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
	store32	GR3, GR30, 8
}
$BB1_11:                                # %for.cond22
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR3, GR30, 8
}
{
	nop
}
{
	lti	 GR3, 3
}
{
	jc	 $BB1_12
}
{
	nop
}
{
	nop
}
{
	jmp	$BB1_13
}
{
	nop
}
{
	nop
}
$BB1_15:                                # %for.end38
{
	store32	GR9, GR30, 3
}
{
	store32	GR8, GR30, 2
}
{
	movg2g	GR4,GR6
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
	load32	GR31, GR30, 17
	addi	GR30, GR30, 72
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
$tmp1:                                  # EmittedInsts:393
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

