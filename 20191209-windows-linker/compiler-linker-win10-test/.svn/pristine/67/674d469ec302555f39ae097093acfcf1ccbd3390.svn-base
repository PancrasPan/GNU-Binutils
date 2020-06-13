	.text
	.file	".\\benchmark\\dspstone\\matrix1_Cmp.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	movg2g	GR7,GR2
	movigl	GR6,1
}
{
	movigh	GR6,0
}
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR8, GR4, GR7
}
{
	store32	GR6, GR8, 0
	addi	GR7, GR7, 4
}
{
	neqi	 GR7, 400
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
# BB#2:
{
	movg2g	GR4,GR2
}
$BB0_3:                                 # %for.body3
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR7, GR5, GR4
}
{
	store32	GR6, GR7, 0
	addi	GR4, GR4, 4
}
{
	neqi	 GR4, 400
}
{
	jc	 $BB0_3
}
{
	nop
}
{
	nop
}
# BB#4:
{
	movg2g	GR4,GR2
}
$BB0_5:                                 # %for.body10
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR5, GR3, GR4
}
{
	store32	GR2, GR5, 0
	addi	GR4, GR4, 4
}
{
	neqi	 GR4, 400
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
# BB#6:                                 # %for.end14
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
$tmp0:
	.size	pin_down, ($tmp0)-pin_down

	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	movigl	GR6,0
}
{
	movigh	GR6,0
}
{
	movg2g	GR4,GR6
	movigh	GR3,%hi(main.A)
	movigl	GR2,1
}
{
	movigh	GR2,0
}
$BB1_1:                                 # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
{
	movg2g	GR7,GR3
}
{
	movigl	GR7,%lo(main.A)
}
{
	add	GR5, GR7, GR4
}
{
	store32	GR2, GR5, 0
	addi	GR4, GR4, 4
}
{
	neqi	 GR4, 400
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
# BB#2:
{
	movg2g	GR5,GR6
}
$BB1_3:                                 # %for.body3.i
                                        # =>This Inner Loop Header: Depth=1
{
	movigh	GR4,%hi(main.B)
}
{
	movigl	GR4,%lo(main.B)
}
{
	add	GR8, GR4, GR5
}
{
	store32	GR2, GR8, 0
	addi	GR5, GR5, 4
}
{
	neqi	 GR5, 400
}
{
	jc	 $BB1_3
}
{
	nop
}
{
	nop
}
# BB#4:
{
	movg2g	GR9,GR6
	movigh	GR5,%hi(main.C)
}
$BB1_5:                                 # %for.body10.i
                                        # =>This Inner Loop Header: Depth=1
{
	movg2g	GR8,GR5
}
{
	movigl	GR8,%lo(main.C)
}
{
	add	GR10, GR8, GR9
}
{
	store32	GR6, GR10, 0
	addi	GR9, GR9, 4
}
{
	neqi	 GR9, 400
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
	movg2g	GR9,GR6
}
$BB1_7:                                 # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #       Child Loop BB1_9 Depth 3
{
	movigl	GR10,10
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
	movigl	GR11,2
}
{
	movigh	GR11,0
}
{
	sl	GR10, GR10, GR11
}
{
	add	GR10, GR4, GR10
	movg2g	GR11,GR6
}
{
	movg2g	GR12,GR8
}
{
	movg2g	GR13,GR7
}
$BB1_8:                                 # %for.body3
                                        #   Parent Loop BB1_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_9 Depth 3
{
	store32	GR6, GR12, 0
}
{
	movg2g	GR14,GR6
}
{
	movg2g	GR15,GR6
}
{
	movg2g	GR24,GR10
}
$BB1_9:                                 # %for.body6
                                        #   Parent Loop BB1_7 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	add	GR25, GR13, GR14
}
{
	load32	GR25, GR25, 0
	load32	GR16, GR24, 0
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
	add	GR15, GR15, GR25
}
{
	store32	GR15, GR12, 0
	addi	GR24, GR24, 4
	addi	GR14, GR14, 4
}
{
	neqi	 GR14, 40
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
# BB#10:                                # %for.end
                                        #   in Loop: Header=BB1_8 Depth=2
{
	addi	GR12, GR12, 4
	addi	GR13, GR13, 40
}
{
	addi	GR11, GR11, 1
}
{
	neqi	 GR11, 10
}
{
	jc	 $BB1_8
}
{
	nop
}
{
	nop
}
# BB#11:                                # %for.inc13
                                        #   in Loop: Header=BB1_7 Depth=1
{
	addi	GR8, GR8, 40
	addi	GR9, GR9, 1
}
{
	neqi	 GR9, 10
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
# BB#12:
{
	movigl	GR6,0
}
{
	movigh	GR6,0
}
{
	movg2g	GR7,GR6
}
$BB1_13:                                # %for.body.i26
                                        # =>This Inner Loop Header: Depth=1
{
	movg2g	GR8,GR3
}
{
	movigl	GR8,%lo(main.A)
}
{
	add	GR8, GR8, GR7
}
{
	store32	GR2, GR8, 0
	addi	GR7, GR7, 4
}
{
	neqi	 GR7, 400
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
	movg2g	GR3,GR6
}
$BB1_15:                                # %for.body3.i31
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR7, GR4, GR3
}
{
	store32	GR2, GR7, 0
	addi	GR3, GR3, 4
}
{
	neqi	 GR3, 400
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
	movg2g	GR2,GR6
}
$BB1_17:                                # %for.body10.i36
                                        # =>This Inner Loop Header: Depth=1
{
	movg2g	GR3,GR5
}
{
	movigl	GR3,%lo(main.C)
}
{
	add	GR3, GR3, GR2
}
{
	store32	GR6, GR3, 0
	addi	GR2, GR2, 4
}
{
	neqi	 GR2, 400
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
# BB#18:                                # %pin_down.exit37
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

	.type	main.A,@object          # @main.A
	.local	main.A
	.comm	main.A,400,4
	.type	main.B,@object          # @main.B
	.local	main.B
	.comm	main.B,400,4
	.type	main.C,@object          # @main.C
	.local	main.C
	.comm	main.C,400,4

