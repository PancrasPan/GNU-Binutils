	.text
	.file	"./testcase_4slots/biquad_N_sections.ll"
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
	movigl	GR4,7
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
	lti	 GR3, 20
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
$BB0_4:                                 # %for.cond1
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR3, GR30, 0
}
{
	nop
}
{
	lti	 GR3, 8
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
	movigl	GR2,1
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
$tmp0:                                  # EmittedInsts:58
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
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 6
	store32	GR2, GR30, 22
	movigh	GR5,%hi(main.coefficients)
}
{
	movigl	GR5,%lo(main.coefficients)
}
{
	store32	GR5, GR30, 8
	store32	GR5, GR30, 19
	addi	GR3, GR30, 36
}
{
	store32	GR3, GR30, 7
	store32	GR3, GR30, 18
	addi	GR2, GR3, 4
}
{
	store32	GR2, GR30, 17
	movigh	GR2,%hi(main.x)
}
{
	movigl	GR2,%lo(main.x)
}
{
	store32	GR2, GR30, 5
	load32	GR4, GR2, 0
}
{
	nop
}
{
	store32	GR3, GR30, 2
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
	load32	GR3, GR30, 5
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR2, GR3, 0
	movigh	GR5,%hi(main.y)
}
{
	movigl	GR5,%lo(main.y)
}
{
	store32	GR2, GR5, 0
	load32	GR2, GR30, 6
}
{
	nop
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
$BB1_2:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
{
	load32	GR2, GR5, 0
	load32	GR3, GR30, 19
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
	store32	GR4, GR30, 19
}
{
	load32	GR3, GR3, 0
	load32	GR4, GR30, 18
}
{
	nop
}
{
	nop
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
}
{
	sub	GR2, GR2, GR3
}
{
	store32	GR2, GR30, 21
	load32	GR2, GR30, 19
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
	store32	GR3, GR30, 19
}
{
	load32	GR2, GR2, 0
	load32	GR3, GR30, 17
}
{
	nop
}
{
	nop
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
	load32	GR3, GR30, 21
}
{
	nop
}
{
	nop
}
{
	sub	GR2, GR3, GR2
}
{
	store32	GR2, GR30, 21
	load32	GR2, GR30, 19
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
	store32	GR3, GR30, 19
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	load32	GR3, GR30, 21
}
{
	nop
}
{
	nop
}
{
	mul32	GR2, GR2, GR3
}
{
	store32	GR2, GR5, 0
	load32	GR2, GR30, 19
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
	store32	GR3, GR30, 19
}
{
	load32	GR2, GR2, 0
	load32	GR3, GR30, 18
}
{
	nop
}
{
	nop
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
	load32	GR3, GR5, 0
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
	store32	GR2, GR5, 0
	load32	GR2, GR30, 19
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
	store32	GR3, GR30, 19
}
{
	load32	GR2, GR2, 0
	load32	GR3, GR30, 17
}
{
	nop
}
{
	nop
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
	load32	GR3, GR5, 0
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
	store32	GR2, GR5, 0
	load32	GR2, GR30, 18
}
{
	nop
}
{
	nop
}
{
	load32	GR2, GR2, 0
	load32	GR3, GR30, 17
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
	store32	GR4, GR30, 17
}
{
	store32	GR2, GR3, 0
}
{
	load32	GR2, GR30, 18
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 4
	load32	GR4, GR30, 21
}
{
	nop
}
{
	store32	GR3, GR30, 18
}
{
	store32	GR4, GR2, 0
}
{
	load32	GR2, GR30, 17
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
	store32	GR2, GR30, 17
	load32	GR2, GR30, 18
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
	store32	GR2, GR30, 18
	load32	GR2, GR30, 20
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
$BB1_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR2, GR30, 20
}
{
	load32	GR2, GR30, 20
}
{
	nop
}
{
	lti	 GR2, 4
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
# BB#3:                                 # %for.end
{
	load32	GR4, GR5, 0
	load32	GR2, GR30, 7
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 2
	store32	GR5, GR30, 7
}
{
	load32	GR5, GR30, 8
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
	load32	GR2, GR30, 7
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	load32	GR2, GR2, 0
	load32	GR31, GR30, 23
	addi	GR30, GR30, 96
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
$tmp1:                                  # EmittedInsts:204
	.size	main, ($tmp1)-main

	.type	main.coefficients,@object # @main.coefficients
	.local	main.coefficients
	.comm	main.coefficients,80,4
	.type	main.x,@object          # @main.x
	.local	main.x
	.comm	main.x,4,4
	.type	main.y,@object          # @main.y
	.local	main.y
	.comm	main.y,4,4
