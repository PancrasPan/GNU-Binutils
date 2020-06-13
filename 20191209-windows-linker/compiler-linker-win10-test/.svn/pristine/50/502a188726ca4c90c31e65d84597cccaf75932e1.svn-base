	.text
	.file	"./testcase_8slots/biquad_N_sections.ll"
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
	load32	GR3, GR30, 6
}
{
	nop
}
{
	store32	GR5, GR30, 3
	store32	GR3, GR30, 2
}
{
	store32	GR2, GR30, 1
}                                       # 4-byte Folded Spill
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR3,2
	load32	GR2, GR30, 1
}
{
	movigh	GR3,0
}
{
	sl	GR3, GR2, GR3
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
	movigl	GR5,7
}
{
	movigh	GR5,0
}
{
	addi	GR2, GR2, 1
	store32	GR5, GR3, 0
}
{
	neqi	 GR2, 20
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
$BB0_2:                                 # %for.end7
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
	store32	GR2, GR3, 7
}
{
	store32	GR2, GR3, 6
}
{
	store32	GR2, GR3, 5
}
{
	store32	GR2, GR3, 4
}
{
	store32	GR2, GR3, 3
}
{
	store32	GR2, GR3, 2
}
{
	store32	GR2, GR3, 1
}
{
	movigl	GR2,1
	store32	GR2, GR3, 0
}
{
	addi	GR30, GR30, 16
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
	addi	GR30, GR30, -96
}
{
	store32	GR31, GR30, 23
}                                       # 4-byte Folded Spill
{
	addi	GR3, GR30, 60
	movg2g	GR2,GR30
}
{
	movigh	GR2,%hi(main.coefficients)
	store32	GR3, GR2, 2
}
{
	movigl	GR2,%lo(main.coefficients)
}
                                        # implicit-def: A0
{
	movg2g	GR5,GR2
}
{
	store32	GR3, GR30, 14
	store32	GR2, GR30, 13
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
	movigl	GR3,1
}
{
	movigh	GR3,0
	movigl	GR4,0
}
{
	movigh	GR4,0
	load32	GR5, GR30, 14
}
{
	nop
}
{
	nop
}
{
	addi	GR6, GR5, 4
	load32	GR7, GR30, 13
	store32	GR2, GR30, 12
	store32	GR4, GR30, 11
}
{
	store32	GR7, GR30, 10
	store32	GR5, GR30, 9
}
{
	store32	GR6, GR30, 8
	store32	GR3, GR30, 7
}
$BB1_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 7
	load32	GR3, GR30, 11
}
{
	load32	GR4, GR30, 10
	load32	GR5, GR30, 9
}
{
	load32	GR6, GR30, 8
	load32	GR7, GR4, 0
}
{
	nop
}
{
	load32	GR8, GR5, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR7, GR8, GR7
}
{
	sub	GR2, GR2, GR7
	load32	GR7, GR4, 1
}
{
	nop
}
{
	load32	GR9, GR6, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR7, GR9, GR7
}
{
	sub	GR2, GR2, GR7
	load32	GR7, GR4, 4
	load32	GR10, GR4, 2
}
{
	load32	GR11, GR4, 3
}
{
	nop
}
{
	mul32	GR8, GR11, GR8
	mul32	GR10, GR2, GR10
	store32	GR8, GR6, 0
}
{
	add	GR8, GR10, GR8
	mul32	GR7, GR7, GR9
	store32	GR2, GR5, 0
}
{
	add	GR2, GR8, GR7
	addi	GR5, GR5, 8
	addi	GR6, GR6, 8
	addi	GR4, GR4, 20
}
{
	addi	GR3, GR3, 1
}
{
	neqi	 GR3, 4
}
{
	movg2g	GR8,GR2
}
{
	store32	GR6, GR30, 8
	store32	GR5, GR30, 9
}
{
	store32	GR8, GR30, 7
	store32	GR2, GR30, 6
}
{
	store32	GR4, GR30, 10
	store32	GR3, GR30, 11
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
	movg2g	GR2,GR30
}
{
	load32	GR3, GR30, 14
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	movigh	GR2,%hi(main.coefficients)
	store32	GR3, GR2, 2
}
{
	movigl	GR2,%lo(main.coefficients)
}
                                        # implicit-def: A0
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
	load32	GR3, GR30, 6
}                                       # 4-byte Folded Reload
{
	nop
}
{
	store32	GR2, GR30, 5
}                                       # 4-byte Folded Spill
{
	movg2g	GR2,GR3
}
{
	addi	GR30, GR30, 96
	load32	GR31, GR30, 23
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

	.type	main.coefficients,@object # @main.coefficients
	.local	main.coefficients
	.comm	main.coefficients,80,4

