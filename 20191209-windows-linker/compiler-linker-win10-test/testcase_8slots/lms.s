	.text
	.file	"./testcase_8slots/lms.ll"
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
	movigl	GR7,7
	load32	GR6, GR30, 8
}
{
	movigh	GR7,0
}
{
	movigl	GR7,8
	store32	GR7, GR4, 0
}
{
	movigh	GR7,0
}
{
	movigl	GR7,1
	store32	GR7, GR5, 0
}
{
	movigh	GR7,0
}
{
	movigl	GR6,0
	store32	GR7, GR6, 0
}
{
	movigh	GR6,0
	store32	GR2, GR30, 5
	store32	GR5, GR30, 4
}
{
	store32	GR6, GR30, 3
	store32	GR4, GR30, 2
}
{
	store32	GR3, GR30, 1
}                                       # 4-byte Folded Spill
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 1
	load32	GR3, GR30, 5
}
{
	movigl	GR5,1
	load32	GR4, GR30, 3
}
{
	movigh	GR5,0
}
{
	store32	GR5, GR2, 0
}
{
	addi	GR3, GR3, 4
	addi	GR2, GR2, 4
	store32	GR5, GR3, 0
	addi	GR4, GR4, 1
}
{
	neqi	 GR4, 16
}
{
	store32	GR4, GR30, 3
	store32	GR3, GR30, 5
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
	addi	GR30, GR30, -88
}
{
	store32	GR31, GR30, 21
}                                       # 4-byte Folded Spill
{
	addi	GR3, GR30, 80
	movg2g	GR2,GR30
}
{
	movigh	GR3,%hi(main.X)
	store32	GR3, GR2, 2
}
{
	movigl	GR3,%lo(main.X)
}
{
	movigh	GR4,%hi(main.H)
	store32	GR3, GR2, 4
}
{
	movigl	GR4,%lo(main.H)
}
{
	addi	GR2, GR30, 76
	addi	GR5, GR30, 72
	store32	GR4, GR2, 3
	store32	GR4, GR30, 16
}
{
	movg2g	GR4,GR2
}
{
	store32	GR3, GR30, 15
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
}
{
	movigl	GR2,1
	store32	GR2, GR30, 17
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
	addi	GR4, GR3, 60
	load32	GR5, GR30, 15
}
{
	nop
}
{
	nop
}
{
	addi	GR6, GR5, 60
	addi	GR7, GR5, 56
	store32	GR4, GR30, 14
}
{
	store32	GR6, GR30, 13
	store32	GR7, GR30, 12
}
{
	store32	GR2, GR30, 11
}                                       # 4-byte Folded Spill
$BB1_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 11
	load32	GR3, GR30, 14
}
{
	load32	GR4, GR30, 13
	load32	GR5, GR30, 12
}
{
	nop
}
{
	load32	GR6, GR3, 0
	load32	GR7, GR5, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR6, GR7, GR6
	load32	GR7, GR30, 17
	store32	GR7, GR4, 0
}
{
	nop
}
{
	nop
}
{
	add	GR6, GR7, GR6
}
{
	addi	GR4, GR4, -4
	addi	GR5, GR5, -4
	store32	GR6, GR30, 17
	addi	GR3, GR3, -4
}
{
	addi	GR2, GR2, 1
}
{
	neqi	 GR2, 16
}
{
	store32	GR4, GR30, 13
	store32	GR2, GR30, 11
}
{
	store32	GR5, GR30, 12
	store32	GR3, GR30, 14
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
$BB1_2:                                 # %for.end
{
	movigh	GR2,%hi(main.X)
}
{
	movigl	GR2,%lo(main.X)
	movigh	GR3,%hi(main.H)
}
{
	movigl	GR3,%lo(main.H)
}
{
	load32	GR4, GR3, 0
	load32	GR5, GR30, 18
}
{
	nop
}
{
	nop
}
{
	mul32	GR4, GR5, GR4
	load32	GR5, GR30, 17
	store32	GR5, GR2, 0
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR5, GR4
}
{
	load32	GR5, GR30, 19
	store32	GR4, GR30, 17
}
{
	nop
}
{
	nop
}
{
	sub	GR4, GR5, GR4
	load32	GR5, GR30, 20
}
{
	nop
}
{
	nop
}
{
	mul32	GR4, GR4, GR5
	movigl	GR5,0
}
{
	movigh	GR5,0
	store32	GR3, GR30, 10
	store32	GR2, GR30, 9
}
{
	store32	GR4, GR30, 8
	store32	GR5, GR30, 7
}
$BB1_3:                                 # %for.body8
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 7
	load32	GR3, GR30, 10
}
{
	load32	GR4, GR30, 9
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	load32	GR5, GR4, 0
}
{
	nop
}
{
	load32	GR6, GR30, 8
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	mul32	GR5, GR6, GR5
	load32	GR7, GR3, 0
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
	addi	GR4, GR4, 4
	store32	GR5, GR3, 0
	addi	GR2, GR2, 1
}
{
	neqi	 GR2, 16
}
{
	store32	GR2, GR30, 7
	store32	GR4, GR30, 9
}
{
	store32	GR3, GR30, 10
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
$BB1_4:                                 # %for.end15
{
	addi	GR3, GR30, 68
	movg2g	GR2,GR30
}
{
	movigh	GR3,%hi(main.X)
	store32	GR3, GR2, 2
}
{
	movigl	GR3,%lo(main.X)
}
{
	movigh	GR3,%hi(main.H)
	store32	GR3, GR2, 4
}
{
	movigl	GR3,%lo(main.H)
}
{
	addi	GR4, GR30, 76
	addi	GR5, GR30, 72
	store32	GR3, GR2, 3
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
	addi	GR30, GR30, 88
	movigh	GR2,0
	load32	GR31, GR30, 21
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

	.type	main.H,@object          # @main.H
	.local	main.H
	.comm	main.H,64,4
	.type	main.X,@object          # @main.X
	.local	main.X
	.comm	main.X,64,4

