	.text
	.file	"./testcase_8slots/fir.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	movigl	GR2,1
}
{
	movigh	GR2,0
	store32	GR4, GR30, 3
}
{
	store32	GR2, GR30, 2
	store32	GR5, GR30, 1
}
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 1
	load32	GR3, GR30, 3
}
{
	nop
}
{
	load32	GR4, GR30, 2
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR4, GR3, 0
}
{
	addi	GR2, GR2, 4
	addi	GR3, GR3, 4
	store32	GR4, GR2, 0
	addi	GR4, GR4, 1
}
{
	neqi	 GR4, 17
}
{
	store32	GR4, GR30, 2
	store32	GR3, GR30, 3
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
$tmp0:
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
}                                       # 4-byte Folded Spill
{
	movigh	GR2,%hi(main.x)
}
{
	movigl	GR2,%lo(main.x)
	movigh	GR3,%hi(main.h)
}
{
	movigl	GR3,%lo(main.h)
	movg2g	GR4,GR2
}
{
	movg2g	GR5,GR3
}
{
	store32	GR2, GR30, 14
	store32	GR3, GR30, 13
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
	load32	GR3, GR30, 14
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, 60
	addi	GR5, GR3, 56
	load32	GR6, GR30, 13
}
{
	nop
}
{
	nop
}
{
	addi	GR7, GR6, 60
	movg2g	GR8,GR2
}
{
	store32	GR4, GR30, 12
	store32	GR5, GR30, 11
}
{
	store32	GR7, GR30, 10
	store32	GR8, GR30, 9
}
{
	store32	GR2, GR30, 8
}                                       # 4-byte Folded Spill
$BB1_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 8
	load32	GR3, GR30, 12
}
{
	load32	GR4, GR30, 11
	load32	GR5, GR30, 10
}
{
	nop
}
{
	load32	GR6, GR30, 9
	load32	GR7, GR5, 0
}
{
	nop
}
{
	load32	GR8, GR3, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR7, GR8, GR7
	load32	GR8, GR4, 0
}
{
	nop
}
{
	nop
}
{
	add	GR6, GR7, GR6
	addi	GR3, GR3, -4
	store32	GR8, GR3, 0
	addi	GR4, GR4, -4
}
{
	addi	GR5, GR5, -4
	addi	GR2, GR2, 1
}
{
	neqi	 GR2, 15
}
{
	movg2g	GR8,GR6
}
{
	store32	GR8, GR30, 9
	store32	GR6, GR30, 7
}
{
	store32	GR4, GR30, 11
	store32	GR5, GR30, 10
}
{
	store32	GR3, GR30, 12
	store32	GR2, GR30, 8
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
	movigh	GR2,%hi(main.h)
}
{
	movigl	GR2,%lo(main.h)
	movigh	GR3,%hi(main.x)
}
{
	movigl	GR3,%lo(main.x)
}
{
	movigl	GR6,100
	load32	GR4, GR3, 0
	load32	GR5, GR2, 0
}
{
	movigh	GR6,0
}
{
	store32	GR6, GR3, 0
	store32	GR4, GR30, 6
}
{
	movg2g	GR4,GR3
}
{
	store32	GR5, GR30, 5
}                                       # 4-byte Folded Spill
{
	movg2g	GR5,GR2
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
	load32	GR2, GR30, 6
}                                       # 4-byte Folded Reload
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
	mul32	GR2, GR2, GR3
	load32	GR3, GR30, 7
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR3
	addi	GR30, GR30, 64
	load32	GR31, GR30, 15
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

	.type	main.x,@object          # @main.x
	.local	main.x
	.comm	main.x,64,4
	.type	main.h,@object          # @main.h
	.local	main.h
	.comm	main.h,64,4

