	.text
	.file	"./testcase_8slots/static_func.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
}
{
	store32	GR31, GR30, 1
}                                       # 4-byte Folded Spill
{
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
	movigl	GR4,-3
}
{
	movigh	GR4,-1
	movigl	GR5,-4
}
{
	movigh	GR5,-1
	store32	GR2, GR30, 0
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
	load32	GR4, GR30, 0
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR4
	addi	GR30, GR30, 8
	load32	GR31, GR30, 1
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
	.size	main, ($tmp0)-main

	.align	2
	.type	mul_sum,@function
mul_sum:                                # @mul_sum
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
}
{
	movigh	GR2,%hi(mul_sum.sum)
}
{
	mul32	GR3, GR5, GR4
	movigl	GR2,%lo(mul_sum.sum)
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
	add	GR3, GR6, GR3
}
{
	store32	GR3, GR2, 0
}
{
	movg2g	GR2,GR3
}
{
	addi	GR30, GR30, 8
	store32	GR4, GR30, 1
	store32	GR5, GR30, 0
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
	.size	mul_sum, ($tmp1)-mul_sum

	.type	mul_sum.sum,@object     # @mul_sum.sum
	.local	mul_sum.sum
	.comm	mul_sum.sum,4,4

