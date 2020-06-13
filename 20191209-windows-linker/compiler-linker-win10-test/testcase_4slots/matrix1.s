	.text
	.file	"./testcase_4slots/matrix1.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	load32	GR2, GR30, 6
	store32	GR4, GR30, 3
}
{
	store32	GR5, GR30, 2
	store32	GR2, GR30, 1
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 0
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
$BB0_2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR3,2
}
{
	movigh	GR3,0
	load32	GR4, GR30, 0
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR4, GR3
	load32	GR4, GR30, 3
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
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
$BB0_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR3, GR30, 0
}
{
	nop
}
{
	lti	 GR3, 100
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
# BB#3:                                 # %for.end
{
	store32	GR2, GR30, 0
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
$BB0_5:                                 # %for.body3
                                        #   in Loop: Header=BB0_4 Depth=1
{
	movigl	GR3,2
}
{
	movigh	GR3,0
	load32	GR4, GR30, 0
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR4, GR3
	load32	GR4, GR30, 2
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
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
$BB0_4:                                 # %for.cond1
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR3, GR30, 0
}
{
	nop
}
{
	lti	 GR3, 100
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
# BB#6:                                 # %for.end7
{
	store32	GR2, GR30, 0
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
$BB0_8:                                 # %for.body10
                                        #   in Loop: Header=BB0_7 Depth=1
{
	movigl	GR3,2
}
{
	movigh	GR3,0
	load32	GR4, GR30, 0
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR4, GR3
	load32	GR4, GR30, 1
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
$BB0_7:                                 # %for.cond8
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR3, GR30, 0
}
{
	nop
}
{
	lti	 GR3, 100
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
# BB#9:                                 # %for.end14
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	addi	GR30, GR30, 16
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
$tmp0:                                  # EmittedInsts:83
	.size	pin_down, ($tmp0)-pin_down

	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -64
}
{
	store32	GR31, GR30, 15
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 4
	store32	GR2, GR30, 14
	movigh	GR4,%hi(main.A)
}
{
	movigl	GR4,%lo(main.A)
}
{
	store32	GR4, GR30, 6
	store32	GR4, GR30, 13
	movigh	GR5,%hi(main.B)
}
{
	movigl	GR5,%lo(main.B)
}
{
	store32	GR5, GR30, 7
}                                       # 4-byte Folded Spill
{
	store32	GR5, GR30, 7
	store32	GR5, GR30, 12
	movigh	GR2,%hi(main.C)
}
{
	movigl	GR2,%lo(main.C)
}
{
	store32	GR2, GR30, 5
	store32	GR2, GR30, 11
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
	load32	GR5, GR30, 4
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR5, GR30, 8
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
$BB1_8:                                 # %for.inc13
                                        #   in Loop: Header=BB1_1 Depth=1
{
	load32	GR2, GR30, 8
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
	store32	GR2, GR30, 8
}
$BB1_1:                                 # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #       Child Loop BB1_5 Depth 3
{
	load32	GR2, GR30, 8
}
{
	nop
}
{
	lti	 GR2, 10
}
{
	jnc	 $BB1_9
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
	load32	GR2, GR30, 6
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 13
	store32	GR5, GR30, 9
}
{
	load32	GR6, GR30, 7
}                                       # 4-byte Folded Reload
{
	nop
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
$BB1_7:                                 # %for.inc10
                                        #   in Loop: Header=BB1_3 Depth=2
{
	load32	GR2, GR30, 11
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 4
}
{
	store32	GR2, GR30, 11
	load32	GR2, GR30, 9
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
	store32	GR2, GR30, 9
}
$BB1_3:                                 # %for.cond1
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_5 Depth 3
{
	load32	GR2, GR30, 9
}
{
	nop
}
{
	lti	 GR2, 10
}
{
	jnc	 $BB1_8
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
	movigl	GR2,10
}
{
	movigh	GR2,0
	load32	GR3, GR30, 8
}
{
	nop
}
{
	nop
}
{
	mul32	GR2, GR3, GR2
	movigl	GR3,2
}
{
	movigh	GR3,0
}
{
	sl	GR2, GR2, GR3
}
{
	add	GR2, GR6, GR2
}
{
	store32	GR2, GR30, 12
	load32	GR2, GR30, 11
}
{
	nop
}
{
	nop
}
{
	store32	GR5, GR2, 0
}
{
	store32	GR5, GR30, 10
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
	load32	GR2, GR30, 13
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 4
}
{
	store32	GR3, GR30, 13
}
{
	load32	GR2, GR2, 0
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
}
{
	nop
}
{
	nop
}
{
	mul32	GR2, GR2, GR3
	load32	GR3, GR30, 11
}
{
	nop
}
{
	nop
}
{
	load32	GR4, GR3, 0
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR4, GR2
}
{
	store32	GR2, GR3, 0
}
{
	load32	GR2, GR30, 10
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
	store32	GR2, GR30, 10
}
$BB1_5:                                 # %for.cond4
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR2, GR30, 10
}
{
	nop
}
{
	lti	 GR2, 10
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
{
	jmp	$BB1_7
}
{
	nop
}
{
	nop
}
$BB1_9:                                 # %for.end15
{
	load32	GR2, GR30, 5
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 2
	load32	GR4, GR30, 6
}
{
	nop
}
{
	load32	GR5, GR30, 7
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
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
	movigh	GR2,0
	load32	GR31, GR30, 15
	addi	GR30, GR30, 64
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
$tmp1:                                  # EmittedInsts:207
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

