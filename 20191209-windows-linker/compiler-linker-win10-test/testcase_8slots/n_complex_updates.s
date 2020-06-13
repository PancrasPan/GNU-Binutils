	.text
	.file	"./testcase_8slots/n_complex_updates.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	load32	GR3, GR30, 9
	load32	GR6, GR30, 8
}
{
	nop
}
{
	nop
}
{
	store32	GR6, GR30, 5
	store32	GR5, GR30, 4
}
{
	store32	GR3, GR30, 3
	store32	GR2, GR30, 2
}
{
	store32	GR4, GR30, 1
}                                       # 4-byte Folded Spill
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 1
	load32	GR3, GR30, 4
}
{
	load32	GR4, GR30, 5
	load32	GR5, GR30, 3
}
{
	movigl	GR7,2
	load32	GR6, GR30, 2
}
{
	movigh	GR7,0
}
{
	movigl	GR8,1
	store32	GR7, GR2, 0
}
{
	movigh	GR8,0
}
{
	store32	GR8, GR2, 1
}
{
	movigl	GR7,5
	store32	GR7, GR3, 0
}
{
	movigh	GR7,0
}
{
	movigl	GR7,3
	store32	GR7, GR3, 1
}
{
	movigh	GR7,0
}
{
	movigl	GR7,4
	store32	GR7, GR4, 0
}
{
	movigh	GR7,0
}
{
	movigl	GR7,0
	store32	GR7, GR4, 1
}
{
	movigh	GR7,0
}
{
	store32	GR7, GR5, 0
}
{
	addi	GR5, GR5, 8
	addi	GR4, GR4, 8
	store32	GR7, GR5, 1
	addi	GR3, GR3, 8
}
{
	addi	GR2, GR2, 8
	addi	GR6, GR6, 1
}
{
	neqi	 GR6, 16
}
{
	store32	GR4, GR30, 5
	store32	GR5, GR30, 3
}
{
	store32	GR6, GR30, 2
	store32	GR3, GR30, 4
}
{
	store32	GR2, GR30, 1
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
$BB0_2:                                 # %for.end
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
$tmp0:
	.size	pin_down, ($tmp0)-pin_down

	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -56
}
{
	store32	GR31, GR30, 13
}                                       # 4-byte Folded Spill
{
	movigh	GR2,%hi(main.D)
}
{
	movigl	GR2,%lo(main.D)
	movg2g	GR3,GR30
}
{
	movigh	GR4,%hi(main.C)
	store32	GR2, GR3, 3
}
{
	movigl	GR4,%lo(main.C)
}
{
	movigh	GR3,%hi(main.A)
	store32	GR4, GR3, 2
}
{
	movigl	GR3,%lo(main.A)
	movigh	GR5,%hi(main.B)
}
{
	movigl	GR5,%lo(main.B)
	store32	GR4, GR30, 12
}
{
	movg2g	GR4,GR3
}
{
	store32	GR5, GR30, 11
	store32	GR2, GR30, 10
}
{
	store32	GR3, GR30, 9
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
	load32	GR3, GR30, 10
	load32	GR4, GR30, 12
}
{
	load32	GR5, GR30, 11
	load32	GR6, GR30, 9
	store32	GR2, GR30, 8
	store32	GR3, GR30, 7
}
{
	store32	GR4, GR30, 6
	store32	GR5, GR30, 5
}
{
	store32	GR6, GR30, 4
}                                       # 4-byte Folded Spill
$BB1_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 4
	load32	GR3, GR30, 5
}
{
	load32	GR4, GR30, 6
	load32	GR5, GR30, 7
}
{
	load32	GR6, GR30, 8
	load32	GR7, GR2, 1
}
{
	nop
}
{
	load32	GR8, GR3, 1
}
{
	nop
}
{
	nop
}
{
	mul32	GR7, GR8, GR7
	load32	GR8, GR2, 0
}
{
	nop
}
{
	load32	GR9, GR3, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR8, GR9, GR8
	load32	GR9, GR4, 0
}
{
	nop
}
{
	nop
}
{
	add	GR8, GR8, GR9
}
{
	sub	GR7, GR8, GR7
}
{
	load32	GR7, GR2, 0
	store32	GR7, GR5, 0
}
{
	nop
}
{
	load32	GR8, GR3, 1
}
{
	nop
}
{
	nop
}
{
	mul32	GR7, GR8, GR7
	load32	GR8, GR2, 1
}
{
	nop
}
{
	load32	GR9, GR3, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR8, GR9, GR8
	load32	GR9, GR4, 1
}
{
	nop
}
{
	nop
}
{
	add	GR8, GR8, GR9
}
{
	add	GR7, GR7, GR8
}
{
	addi	GR2, GR2, 8
	addi	GR5, GR5, 8
	store32	GR7, GR5, 1
	addi	GR3, GR3, 8
}
{
	addi	GR4, GR4, 8
	addi	GR6, GR6, 1
}
{
	neqi	 GR6, 16
}
{
	store32	GR5, GR30, 7
	store32	GR6, GR30, 8
}
{
	store32	GR4, GR30, 6
	store32	GR3, GR30, 5
}
{
	store32	GR2, GR30, 4
}                                       # 4-byte Folded Spill
{
	jc	 $BB1_1
}
{
	nop
}
{
	nop
}
$BB1_2:                                 # %for.end
{
	movigh	GR2,%hi(main.D)
}
{
	movigl	GR2,%lo(main.D)
	movg2g	GR3,GR30
}
{
	movigh	GR2,%hi(main.C)
	store32	GR2, GR3, 3
}
{
	movigl	GR2,%lo(main.C)
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
	movigl	GR2,0
}
{
	addi	GR30, GR30, 56
	movigh	GR2,0
	load32	GR31, GR30, 13
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
	.comm	main.A,128,4
	.type	main.B,@object          # @main.B
	.local	main.B
	.comm	main.B,128,4
	.type	main.C,@object          # @main.C
	.local	main.C
	.comm	main.C,128,4
	.type	main.D,@object          # @main.D
	.local	main.D
	.comm	main.D,128,4

