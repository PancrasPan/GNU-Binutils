	.text
	.file	".\\benchmark\\dspstone\\fir2dim_Cmp.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	movigl	GR6,0
}
{
	movigh	GR6,0
	load32	GR2, GR30, 3
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	movg2g	GR8,GR6
}
{
	movg2g	GR9,GR4
	movigl	GR7,1
}
{
	movigh	GR7,0
}
$BB0_1:                                 # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
{
	movg2g	GR10,GR6
}
$BB0_2:                                 # %for.body3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	add	GR11, GR9, GR10
}
{
	store32	GR7, GR11, 0
	addi	GR10, GR10, 4
}
{
	neqi	 GR10, 16
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
# BB#3:                                 # %for.inc4
                                        #   in Loop: Header=BB0_1 Depth=1
{
	addi	GR9, GR9, 16
	addi	GR8, GR8, 1
}
{
	neqi	 GR8, 4
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
# BB#4:
{
	movigl	GR6,0
}
{
	movigh	GR6,0
}
{
	movg2g	GR8,GR6
}
$BB0_5:                                 # %for.body9
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR9, GR3, GR8
}
{
	store32	GR7, GR9, 0
	addi	GR8, GR8, 4
}
{
	eqi	 GR8, 36
}
{
	jnc	 $BB0_5
}
{
	nop
}
{
	nop
}
# BB#6:
{
	movg2g	GR3,GR6
}
$BB0_7:                                 # %for.body16
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR7, GR5, GR3
}
{
	store32	GR6, GR7, 0
	addi	GR3, GR3, 4
}
{
	eqi	 GR3, 24
}
{
	jnc	 $BB0_7
}
{
	nop
}
{
	nop
}
# BB#8:                                 # %for.cond21.preheader
{
	movigl	GR3,0
}
{
	movigh	GR3,0
	addi	GR7, GR5, 24
}
{
	movg2g	GR5,GR3
}
$BB0_9:                                 # %for.body23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
{
	store32	GR3, GR7, 0
	addi	GR9, GR7, 4
}
{
	movg2g	GR8,GR3
}
$BB0_10:                                # %for.body27
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	movg2g	GR6,GR9
	add	GR9, GR4, GR8
}
{
	load32	GR9, GR9, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR9, GR6, 0
	addi	GR9, GR7, 8
	addi	GR8, GR8, 4
}
{
	neqi	 GR8, 16
}
{
	movg2g	GR7,GR6
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
# BB#11:                                # %for.end32
                                        #   in Loop: Header=BB0_9 Depth=1
{
	movigl	GR8,0
}
{
	movigh	GR8,0
}
{
	store32	GR8, GR9, 0
	addi	GR7, GR6, 8
	addi	GR4, GR4, 16
}
{
	addi	GR5, GR5, 1
}
{
	neqi	 GR5, 4
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
# BB#12:
{
	movigl	GR3,8
}
{
	movigh	GR3,0
}
$BB0_13:                                # %for.body39
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR4, GR6, GR3
}
{
	store32	GR8, GR4, 0
	addi	GR3, GR3, 4
}
{
	neqi	 GR3, 32
}
{
	jc	 $BB0_13
}
{
	nop
}
{
	nop
}
# BB#14:
{
	movg2g	GR3,GR8
}
$BB0_15:                                # %for.body46
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR4, GR2, GR3
}
{
	store32	GR8, GR4, 0
	addi	GR3, GR3, 4
}
{
	neqi	 GR3, 64
}
{
	jc	 $BB0_15
}
{
	nop
}
{
	nop
}
# BB#16:                                # %for.end50
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
	movigl	GR4,0
}
{
	movigh	GR4,0
	movigh	GR2,%hi(main.image)
}
{
	movg2g	GR5,GR2
}
{
	movigl	GR5,%lo(main.image)
	movg2g	GR6,GR4
	movigl	GR3,1
}
{
	movigh	GR3,0
}
$BB1_1:                                 # %for.cond1.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
{
	movg2g	GR7,GR4
}
$BB1_2:                                 # %for.body3.i
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	add	GR8, GR5, GR7
}
{
	store32	GR3, GR8, 0
	addi	GR7, GR7, 4
}
{
	neqi	 GR7, 16
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
# BB#3:                                 # %for.inc4.i
                                        #   in Loop: Header=BB1_1 Depth=1
{
	addi	GR5, GR5, 16
	addi	GR6, GR6, 1
}
{
	neqi	 GR6, 4
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
# BB#4:
{
	movigl	GR6,0
}
{
	movigh	GR6,0
}
{
	movg2g	GR4,GR6
}
$BB1_5:                                 # %for.body9.i
                                        # =>This Inner Loop Header: Depth=1
{
	movigh	GR5,%hi(main.coefficients)
}
{
	movigl	GR5,%lo(main.coefficients)
}
{
	add	GR7, GR5, GR4
}
{
	store32	GR3, GR7, 0
	addi	GR4, GR4, 4
}
{
	neqi	 GR4, 36
}
{
	jc	 $BB1_5
}
{
	nop
}
{
	nop
}
# BB#6:
{
	movg2g	GR7,GR6
}
$BB1_7:                                 # %for.body16.i
                                        # =>This Inner Loop Header: Depth=1
{
	movigh	GR4,%hi(main.array)
}
{
	movigl	GR4,%lo(main.array)
}
{
	add	GR8, GR4, GR7
}
{
	store32	GR6, GR8, 0
	addi	GR7, GR7, 4
}
{
	neqi	 GR7, 24
}
{
	jc	 $BB1_7
}
{
	nop
}
{
	nop
}
# BB#8:
{
	movg2g	GR8,GR2
}
{
	movigl	GR8,%lo(main.image)
	addi	GR11, GR4, 24
	movg2g	GR9,GR6
}
$BB1_9:                                 # %for.body23.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
{
	store32	GR6, GR11, 0
	addi	GR12, GR11, 4
}
{
	movg2g	GR7,GR6
}
$BB1_10:                                # %for.body27.i
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	movg2g	GR10,GR12
	add	GR12, GR8, GR7
}
{
	load32	GR12, GR12, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR12, GR10, 0
	addi	GR12, GR11, 8
	addi	GR7, GR7, 4
}
{
	neqi	 GR7, 16
}
{
	movg2g	GR11,GR10
}
{
	jc	 $BB1_10
}
{
	nop
}
{
	nop
}
# BB#11:                                # %for.end32.i
                                        #   in Loop: Header=BB1_9 Depth=1
{
	movigl	GR7,0
}
{
	movigh	GR7,0
}
{
	store32	GR7, GR12, 0
	addi	GR11, GR10, 8
	addi	GR8, GR8, 16
}
{
	addi	GR9, GR9, 1
}
{
	neqi	 GR9, 4
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
# BB#12:
{
	movigl	GR6,8
}
{
	movigh	GR6,0
}
$BB1_13:                                # %for.body39.i
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR8, GR10, GR6
}
{
	store32	GR7, GR8, 0
	addi	GR6, GR6, 4
}
{
	neqi	 GR6, 32
}
{
	jc	 $BB1_13
}
{
	nop
}
{
	nop
}
# BB#14:
{
	movg2g	GR9,GR7
	movigh	GR6,%hi(main.output)
}
$BB1_15:                                # %for.body46.i
                                        # =>This Inner Loop Header: Depth=1
{
	movg2g	GR8,GR6
}
{
	movigl	GR8,%lo(main.output)
}
{
	add	GR10, GR8, GR9
}
{
	store32	GR7, GR10, 0
	addi	GR9, GR9, 4
}
{
	neqi	 GR9, 64
}
{
	jc	 $BB1_15
}
{
	nop
}
{
	nop
}
# BB#16:
{
	movg2g	GR9,GR7
}
$BB1_17:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_18 Depth 2
                                        #       Child Loop BB1_19 Depth 3
                                        #       Child Loop BB1_21 Depth 3
                                        #       Child Loop BB1_23 Depth 3
{
	movigl	GR10,6
}
{
	movigh	GR10,0
}
{
	mul32	GR10, GR9, GR10
}
{
	nop
}
{
	movg2g	GR11,GR7
}
{
	movg2g	GR12,GR8
}
$BB1_18:                                # %for.body3
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_19 Depth 3
                                        #       Child Loop BB1_21 Depth 3
                                        #       Child Loop BB1_23 Depth 3
{
	add	GR13, GR11, GR10
	store32	GR7, GR12, 0
	movigl	GR14,2
}
{
	movigh	GR14,0
}
{
	sl	GR15, GR13, GR14
}
{
	add	GR24, GR4, GR15
	addi	GR15, GR13, 12
}
{
	addi	GR25, GR13, 6
	movg2g	GR16,GR7
}
{
	movg2g	GR13,GR7
}
$BB1_19:                                # %for.body8
                                        #   Parent Loop BB1_17 Depth=1
                                        #     Parent Loop BB1_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	add	GR17, GR5, GR16
}
{
	load32	GR17, GR17, 0
	load32	GR18, GR24, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR17, GR18, GR17
}
{
	nop
}
{
	add	GR13, GR13, GR17
}
{
	store32	GR13, GR12, 0
	addi	GR24, GR24, 4
	addi	GR16, GR16, 4
}
{
	eqi	 GR16, 12
}
{
	jnc	 $BB1_19
}
{
	nop
}
{
	nop
}
# BB#20:                                # %for.cond12.preheader
                                        #   in Loop: Header=BB1_18 Depth=2
{
	sl	GR24, GR25, GR14
}
{
	add	GR24, GR4, GR24
	movigl	GR25,3
}
{
	movigh	GR25,0
	addi	GR16, GR5, 12
	addi	GR18, GR5, 8
}
$BB1_21:                                # %for.body14
                                        #   Parent Loop BB1_17 Depth=1
                                        #     Parent Loop BB1_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	movg2g	GR17,GR18
}
{
	load32	GR18, GR16, 0
	load32	GR19, GR24, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR18, GR19, GR18
}
{
	nop
}
{
	add	GR13, GR13, GR18
}
{
	store32	GR13, GR12, 0
	addi	GR24, GR24, 4
	addi	GR19, GR17, 8
}
{
	addi	GR25, GR25, -1
}
{
	eqi	 GR25, 0
}
{
	movg2g	GR18,GR16
}
{
	movg2g	GR16,GR19
}
{
	jnc	 $BB1_21
}
{
	nop
}
{
	nop
}
# BB#22:                                # %for.cond22.preheader
                                        #   in Loop: Header=BB1_18 Depth=2
{
	sl	GR14, GR15, GR14
}
{
	add	GR14, GR4, GR14
	movigl	GR15,0
}
{
	movigh	GR15,0
	addi	GR24, GR17, 8
}
$BB1_23:                                # %for.body24
                                        #   Parent Loop BB1_17 Depth=1
                                        #     Parent Loop BB1_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	add	GR25, GR24, GR15
}
{
	load32	GR25, GR25, 0
	load32	GR16, GR14, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR25, GR16, GR25
}
{
	nop
}
{
	add	GR13, GR13, GR25
}
{
	store32	GR13, GR12, 0
	addi	GR14, GR14, 4
	addi	GR15, GR15, 4
}
{
	neqi	 GR15, 12
}
{
	jc	 $BB1_23
}
{
	nop
}
{
	nop
}
# BB#24:                                # %for.end31
                                        #   in Loop: Header=BB1_18 Depth=2
{
	addi	GR12, GR12, 4
	addi	GR11, GR11, 1
}
{
	neqi	 GR11, 4
}
{
	jc	 $BB1_18
}
{
	nop
}
{
	nop
}
# BB#25:                                # %for.inc36
                                        #   in Loop: Header=BB1_17 Depth=1
{
	addi	GR8, GR8, 16
	addi	GR9, GR9, 1
}
{
	neqi	 GR9, 4
}
{
	jc	 $BB1_17
}
{
	nop
}
{
	nop
}
# BB#26:
{
	movigl	GR7,0
}
{
	movigh	GR7,0
	movg2g	GR8,GR2
}
{
	movigl	GR8,%lo(main.image)
	movg2g	GR9,GR7
}
$BB1_27:                                # %for.cond1.preheader.i58
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_28 Depth 2
{
	movg2g	GR10,GR7
}
$BB1_28:                                # %for.body3.i64
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	add	GR11, GR8, GR10
}
{
	store32	GR3, GR11, 0
	addi	GR10, GR10, 4
}
{
	neqi	 GR10, 16
}
{
	jc	 $BB1_28
}
{
	nop
}
{
	nop
}
# BB#29:                                # %for.inc4.i68
                                        #   in Loop: Header=BB1_27 Depth=1
{
	addi	GR8, GR8, 16
	addi	GR9, GR9, 1
}
{
	neqi	 GR9, 4
}
{
	jc	 $BB1_27
}
{
	nop
}
{
	nop
}
# BB#30:
{
	movigl	GR7,0
}
{
	movigh	GR7,0
}
{
	movg2g	GR8,GR7
}
$BB1_31:                                # %for.body9.i74
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR9, GR5, GR8
}
{
	store32	GR3, GR9, 0
	addi	GR8, GR8, 4
}
{
	neqi	 GR8, 36
}
{
	jc	 $BB1_31
}
{
	nop
}
{
	nop
}
# BB#32:
{
	movg2g	GR3,GR7
}
$BB1_33:                                # %for.body16.i81
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR5, GR4, GR3
}
{
	store32	GR7, GR5, 0
	addi	GR3, GR3, 4
}
{
	neqi	 GR3, 24
}
{
	jc	 $BB1_33
}
{
	nop
}
{
	nop
}
# BB#34:
{
	movigl	GR2,%lo(main.image)
	addi	GR8, GR4, 24
	movg2g	GR3,GR7
}
$BB1_35:                                # %for.body23.i86
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_36 Depth 2
{
	store32	GR7, GR8, 0
	addi	GR9, GR8, 4
}
{
	movg2g	GR5,GR7
}
$BB1_36:                                # %for.body27.i94
                                        #   Parent Loop BB1_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	movg2g	GR4,GR9
	add	GR9, GR2, GR5
}
{
	load32	GR9, GR9, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR9, GR4, 0
	addi	GR9, GR8, 8
	addi	GR5, GR5, 4
}
{
	neqi	 GR5, 16
}
{
	movg2g	GR8,GR4
}
{
	jc	 $BB1_36
}
{
	nop
}
{
	nop
}
# BB#37:                                # %for.end32.i99
                                        #   in Loop: Header=BB1_35 Depth=1
{
	movigl	GR5,0
}
{
	movigh	GR5,0
}
{
	store32	GR5, GR9, 0
	addi	GR8, GR4, 8
	addi	GR2, GR2, 16
}
{
	addi	GR3, GR3, 1
}
{
	neqi	 GR3, 4
}
{
	jc	 $BB1_35
}
{
	nop
}
{
	nop
}
# BB#38:
{
	movigl	GR2,8
}
{
	movigh	GR2,0
}
$BB1_39:                                # %for.body39.i105
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR3, GR4, GR2
}
{
	store32	GR5, GR3, 0
	addi	GR2, GR2, 4
}
{
	neqi	 GR2, 32
}
{
	jc	 $BB1_39
}
{
	nop
}
{
	nop
}
# BB#40:
{
	movg2g	GR2,GR5
}
$BB1_41:                                # %for.body46.i111
                                        # =>This Inner Loop Header: Depth=1
{
	movg2g	GR3,GR6
}
{
	movigl	GR3,%lo(main.output)
}
{
	add	GR3, GR3, GR2
}
{
	store32	GR5, GR3, 0
	addi	GR2, GR2, 4
}
{
	neqi	 GR2, 64
}
{
	jc	 $BB1_41
}
{
	nop
}
{
	nop
}
# BB#42:                                # %pin_down.exit112
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

