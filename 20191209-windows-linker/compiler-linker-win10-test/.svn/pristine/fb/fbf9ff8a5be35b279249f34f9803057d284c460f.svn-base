	.text
	.file	"./testcase_4slots/static_func.ll"
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
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 4
	movigl	GR4,1
}
{
	movigh	GR4,0
	movigl	GR5,2
}
{
	movigh	GR5,0
}
{
	call	mul_sum
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 3
	movigl	GR4,-3
}
{
	movigh	GR4,-1
	movigl	GR5,-4
}
{
	movigh	GR5,-1
}
{
	call	mul_sum
}
{
	nop
}
{
	nop
}
{
	load32	GR3, GR30, 3
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
	load32	GR31, GR30, 5
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
$tmp0:                                  # EmittedInsts:22
	.size	main, ($tmp0)-main

	.align	2
	.type	mul_sum,@function
mul_sum:                                # @mul_sum
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
}
{
	store32	GR4, GR30, 1
	store32	GR5, GR30, 0
}
{
	load32	GR2, GR30, 1
}
{
	nop
}
{
	nop
}
{
	mul32	GR2, GR2, GR5
	movigh	GR3,%hi(mul_sum.sum)
}
{
	movigl	GR3,%lo(mul_sum.sum)
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
	addi	GR30, GR30, 8
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
$tmp1:                                  # EmittedInsts:37
	.size	mul_sum, ($tmp1)-mul_sum

	.type	mul_sum.sum,@object     # @mul_sum.sum
	.local	mul_sum.sum
	.comm	mul_sum.sum,4,4

