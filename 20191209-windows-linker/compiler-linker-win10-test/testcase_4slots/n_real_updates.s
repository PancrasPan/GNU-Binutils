	.text
	.file	"./testcase_4slots/n_real_updates.ll"
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
$BB0_2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
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
	movigl	GR4,10
}
{
	movigh	GR4,0
}
{
	store32	GR4, GR3, 0
}
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
	addi	GR5, GR3, 4
}
{
	store32	GR5, GR30, 4
	movigl	GR5,2
}
{
	movigh	GR5,0
}
{
	store32	GR5, GR3, 0
}
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
	addi	GR5, GR3, 4
}
{
	store32	GR5, GR30, 3
}
{
	store32	GR4, GR3, 0
}
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
$BB0_1:                                 # %for.cond
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
$tmp0:                                  # EmittedInsts:50
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
	store32	GR4, GR30, 8
	store32	GR4, GR30, 13
	movigh	GR5,%hi(main.B)
}
{
	movigl	GR5,%lo(main.B)
}
{
	store32	GR5, GR30, 7
	store32	GR5, GR30, 12
	movigh	GR2,%hi(main.C)
}
{
	movigl	GR2,%lo(main.C)
}
{
	store32	GR2, GR30, 6
	store32	GR2, GR30, 11
	movigh	GR3,%hi(main.D)
}
{
	movigl	GR3,%lo(main.D)
}
{
	store32	GR3, GR30, 5
	store32	GR3, GR30, 10
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
	load32	GR2, GR30, 4
}                                       # 4-byte Folded Reload
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
	addi	GR3, GR2, 4
}
{
	store32	GR3, GR30, 11
}
{
	load32	GR2, GR2, 0
	load32	GR3, GR30, 13
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
	store32	GR4, GR30, 13
}
{
	load32	GR3, GR3, 0
	load32	GR4, GR30, 12
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
	store32	GR5, GR30, 12
}
{
	load32	GR4, GR4, 0
	load32	GR5, GR30, 10
}
{
	nop
}
{
	nop
}
{
	addi	GR6, GR5, 4
}
{
	store32	GR6, GR30, 10
	mul32	GR3, GR3, GR4
}
{
	add	GR2, GR2, GR3
}
{
	store32	GR2, GR5, 0
}
{
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
$BB1_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR2, GR30, 9
}
{
	load32	GR2, GR30, 9
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
	load32	GR2, GR30, 5
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 3
	load32	GR2, GR30, 6
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 2
	load32	GR4, GR30, 8
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
$tmp1:                                  # EmittedInsts:124
	.size	main, ($tmp1)-main

	.type	main.A,@object          # @main.A
	.local	main.A
	.comm	main.A,64,4
	.type	main.B,@object          # @main.B
	.local	main.B
	.comm	main.B,64,4
	.type	main.C,@object          # @main.C
	.local	main.C
	.comm	main.C,64,4
	.type	main.D,@object          # @main.D
	.local	main.D
	.comm	main.D,64,4

