	.text
	.file	"./testcase_8slots/convolution.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 3
	store32	GR5, GR30, 2
}
{
	store32	GR4, GR30, 1
}                                       # 4-byte Folded Spill
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 1
	load32	GR3, GR30, 2
}
{
	load32	GR4, GR30, 3
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR4, GR2, 0
}
{
	addi	GR3, GR3, 4
	addi	GR2, GR2, 4
	store32	GR4, GR3, 0
	addi	GR4, GR4, 1
}
{
	neqi	 GR4, 16
}
{
	store32	GR4, GR30, 3
	store32	GR3, GR30, 2
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
	addi	GR30, GR30, -40
}
{
	store32	GR31, GR30, 9
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
	store32	GR2, GR30, 8
	store32	GR3, GR30, 7
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
	load32	GR3, GR30, 7
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, 60
	load32	GR5, GR30, 8
}
{
	movg2g	GR6,GR2
}
{
	store32	GR6, GR30, 6
	store32	GR4, GR30, 5
}
{
	store32	GR5, GR30, 4
	store32	GR2, GR30, 3
}
$BB1_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 3
	load32	GR3, GR30, 6
}
{
	load32	GR4, GR30, 4
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR5, GR30, 5
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR6, GR4, 0
}
{
	nop
}
{
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
}
{
	add	GR2, GR6, GR2
	addi	GR5, GR5, -4
	addi	GR4, GR4, 4
	addi	GR3, GR3, 1
}
{
	neqi	 GR3, 16
}
{
	movg2g	GR7,GR2
}
{
	store32	GR2, GR30, 2
	store32	GR5, GR30, 5
}
{
	store32	GR7, GR30, 3
	store32	GR4, GR30, 4
}
{
	store32	GR3, GR30, 6
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
	addi	GR30, GR30, 40
	load32	GR2, GR30, 2
	load32	GR31, GR30, 9
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

