	.text
	.file	".\\benchmark\\dspstone\\dot_product_Cmp.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 0
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
	movigh	GR3,%hi(main.Z)
}
{
	movigl	GR3,%lo(main.Z)
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR3, 0
}
{
	movg2g	GR4,GR2
}
$BB1_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigh	GR5,%hi(main.A)
}
{
	movigl	GR5,%lo(main.A)
}
{
	add	GR5, GR5, GR2
}
{
	load32	GR5, GR5, 0
}
{
	nop
}
{
	nop
}
{
	movigh	GR6,%hi(main.B)
}
{
	movigl	GR6,%lo(main.B)
}
{
	add	GR6, GR6, GR2
}
{
	load32	GR6, GR6, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR5, GR6, GR5
}
{
	nop
}
{
	add	GR4, GR4, GR5
}
{
	store32	GR4, GR3, 0
	addi	GR2, GR2, 4
}
{
	neqi	 GR2, 8
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
# BB#2:                                 # %for.end
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR3, 0
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

