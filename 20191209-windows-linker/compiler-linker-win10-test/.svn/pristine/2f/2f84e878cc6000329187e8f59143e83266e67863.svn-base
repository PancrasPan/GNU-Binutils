	.text
	.file	"./testcase_8slots/dot_product.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
}
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	addi	GR30, GR30, 8
	store32	GR2, GR4, 0
	store32	GR4, GR30, 1
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
	addi	GR30, GR30, -24
}
{
	store32	GR31, GR30, 5
}                                       # 4-byte Folded Spill
{
	movigh	GR2,%hi(main.Z)
}
{
	movigl	GR2,%lo(main.Z)
}
{
	movg2g	GR4,GR2
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
	movigh	GR4,%hi(main.B)
}
{
	movigl	GR4,%lo(main.B)
	movigh	GR3,%hi(main.A)
}
{
	movigl	GR3,%lo(main.A)
	store32	GR2, GR30, 4
}
{
	store32	GR3, GR30, 3
	store32	GR4, GR30, 2
}
$BB1_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 2
	load32	GR3, GR30, 3
}
{
	nop
}
{
	load32	GR4, GR30, 4
	load32	GR5, GR3, 0
}
{
	nop
}
{
	load32	GR6, GR2, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR5, GR6, GR5
	movigh	GR6,%hi(main.Z)
}
{
	movigl	GR6,%lo(main.Z)
}
{
	load32	GR7, GR6, 0
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
	addi	GR2, GR2, 4
	addi	GR3, GR3, 4
	store32	GR5, GR6, 0
	addi	GR4, GR4, 1
}
{
	neqi	 GR4, 2
}
{
	store32	GR4, GR30, 4
	store32	GR3, GR30, 3
}
{
	store32	GR2, GR30, 2
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
	movigh	GR2,%hi(main.Z)
}
{
	movigl	GR2,%lo(main.Z)
}
{
	movg2g	GR4,GR2
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
	addi	GR30, GR30, 24
	movigh	GR2,0
	load32	GR31, GR30, 5
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
	.section	.rodata.cst8,"aM",@progbits,8
	.align	2
main.A:
	.4byte	2                       # 0x2
	.4byte	1                       # 0x1
	.size	main.A, 8

	.type	main.B,@object          # @main.B
	.align	2
main.B:
	.4byte	2                       # 0x2
	.4byte	5                       # 0x5
	.size	main.B, 8

	.type	main.Z,@object          # @main.Z
	.local	main.Z
	.comm	main.Z,4,4

