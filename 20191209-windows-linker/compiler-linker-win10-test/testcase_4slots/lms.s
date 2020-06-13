	.text
	.file	"./testcase_4slots/lms.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	load32	GR2, GR30, 10
	load32	GR3, GR30, 9
}
{
	load32	GR6, GR30, 8
	store32	GR4, GR30, 5
}
{
	store32	GR5, GR30, 4
	store32	GR6, GR30, 3
}
{
	store32	GR3, GR30, 2
	store32	GR2, GR30, 1
	movigl	GR2,7
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
	store32	GR2, GR3, 0
	movigl	GR2,8
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
	store32	GR2, GR3, 0
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
	store32	GR2, GR3, 0
	movigl	GR3,0
}
{
	movigh	GR3,0
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
	addi	GR4, GR3, 4
}
{
	store32	GR4, GR30, 1
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
$BB0_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR3, GR30, 0
}
{
	load32	GR3, GR30, 0
}
{
	nop
}
{
	lti	 GR3, 16
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
$tmp0:                                  # EmittedInsts:48
	.size	pin_down, ($tmp0)-pin_down

	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -80
}
{
	store32	GR31, GR30, 19
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 8
	store32	GR2, GR30, 18
	addi	GR2, GR30, 68
}
{
	store32	GR2, GR30, 2
	movigh	GR2,%hi(main.X)
}
{
	movigl	GR2,%lo(main.X)
}
{
	store32	GR2, GR30, 7
	store32	GR2, GR30, 4
	movigh	GR2,%hi(main.H)
}
{
	movigl	GR2,%lo(main.H)
}
{
	store32	GR2, GR30, 6
	store32	GR2, GR30, 3
	addi	GR4, GR30, 64
	addi	GR5, GR30, 60
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
	load32	GR8, GR30, 8
	load32	GR7, GR30, 6
}
{
	nop
}
{
	load32	GR6, GR30, 7
	addi	GR2, GR7, 60
}
{
	store32	GR2, GR30, 11
	addi	GR2, GR6, 60
}
{
	store32	GR2, GR30, 10
	addi	GR2, GR6, 56
}
{
	store32	GR2, GR30, 9
	store32	GR8, GR30, 14
	movigl	GR2,1
}
{
	movigh	GR2,0
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
$BB1_2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
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
	addi	GR3, GR2, -4
}
{
	store32	GR3, GR30, 11
}
{
	load32	GR2, GR2, 0
	load32	GR3, GR30, 9
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, -4
}
{
	store32	GR4, GR30, 9
}
{
	load32	GR3, GR3, 0
	load32	GR4, GR30, 10
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR4, -4
}
{
	store32	GR5, GR30, 10
}
{
	store32	GR3, GR4, 0
	mul32	GR2, GR2, GR3
}
{
	load32	GR3, GR30, 14
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
	store32	GR2, GR30, 14
	load32	GR2, GR30, 12
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
	store32	GR2, GR30, 12
}
{
	load32	GR2, GR30, 12
}
{
	nop
}
{
	lti	 GR2, 16
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
	load32	GR2, GR30, 11
}
{
	nop
}
{
	nop
}
{
	load32	GR2, GR2, 0
	load32	GR3, GR30, 10
}
{
	nop
}
{
	load32	GR4, GR30, 15
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR3, 0
	mul32	GR2, GR2, GR4
}
{
	load32	GR3, GR30, 14
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
	store32	GR2, GR30, 14
	load32	GR3, GR30, 16
}
{
	nop
}
{
	nop
}
{
	sub	GR2, GR3, GR2
	load32	GR3, GR30, 17
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
	store32	GR2, GR30, 13
	store32	GR8, GR30, 12
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
$BB1_5:                                 # %for.body8
                                        #   in Loop: Header=BB1_4 Depth=1
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
	addi	GR3, GR2, 4
	load32	GR4, GR30, 13
}
{
	store32	GR3, GR30, 10
}
{
	load32	GR2, GR2, 0
	load32	GR3, GR30, 11
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR3, 4
}
{
	store32	GR5, GR30, 11
	mul32	GR2, GR4, GR2
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
	load32	GR2, GR30, 12
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
	store32	GR2, GR30, 12
}
$BB1_4:                                 # %for.cond6
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 12
}
{
	nop
}
{
	lti	 GR2, 16
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
# BB#6:                                 # %for.end15
{
	addi	GR2, GR30, 56
}
{
	store32	GR2, GR30, 2
}
{
	store32	GR6, GR30, 4
}
{
	store32	GR7, GR30, 3
	addi	GR4, GR30, 64
	addi	GR5, GR30, 60
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
	load32	GR31, GR30, 19
	addi	GR30, GR30, 80
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
$tmp1:                                  # EmittedInsts:163
	.size	main, ($tmp1)-main

	.type	main.H,@object          # @main.H
	.local	main.H
	.comm	main.H,64,4
	.type	main.X,@object          # @main.X
	.local	main.X
	.comm	main.X,64,4

