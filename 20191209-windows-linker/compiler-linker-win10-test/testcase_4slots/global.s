	.text
	.file	"./testcase_4slots/global.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 1
	movigh	GR3,%hi(main.local_b)
}
{
	movigl	GR3,%lo(main.local_b)
	movigh	GR4,%hi(b)
}
{
	movigl	GR4,%lo(b)
}
{
	load32	GR5, GR4, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR5, GR3, 0
	load32	GR5, GR4, 1
}
{
	nop
}
{
	nop
}
{
	store32	GR5, GR3, 1
	load32	GR4, GR4, 2
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR3, 2
}
{
	load32	GR5, GR3, 1
}
{
	nop
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR3, GR5
}
{
	add	GR3, GR3, GR4
	movigh	GR4,%hi(main.local_sum2)
}
{
	movigl	GR4,%lo(main.local_sum2)
}
{
	store32	GR3, GR4, 0
	movigh	GR4,%hi(sum2)
}
{
	movigl	GR4,%lo(sum2)
}
{
	store32	GR3, GR4, 0
	movigh	GR3,%hi(a)
}
{
	movigl	GR3,%lo(a)
}
{
	load32	GR4, GR3, 1
}
{
	nop
}
{
	load32	GR5, GR3, 0
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR5, GR4
	load32	GR5, GR3, 2
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR4, GR5
	movigh	GR5,%hi(sum1)
}
{
	movigl	GR5,%lo(sum1)
}
{
	store32	GR4, GR5, 0
	movigh	GR4,%hi(c)
}
{
	movigl	GR4,%lo(c)
}
{
	load32	GR5, GR4, 0
}
{
	nop
}
{
	load32	GR6, GR3, 0
}
{
	nop
}
{
	nop
}
{
	add	GR5, GR6, GR5
}
{
	store32	GR5, GR3, 0
	load32	GR5, GR4, 1
}
{
	nop
}
{
	load32	GR6, GR3, 1
}
{
	nop
}
{
	nop
}
{
	add	GR5, GR6, GR5
}
{
	store32	GR5, GR3, 1
	load32	GR4, GR4, 2
}
{
	nop
}
{
	load32	GR5, GR3, 2
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
	store32	GR4, GR3, 2
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
$tmp0:                                  # EmittedInsts:61
	.size	main, ($tmp0)-main

	.type	main.local_b,@object    # @main.local_b
	.local	main.local_b
	.comm	main.local_b,12,4
	.type	main.local_sum2,@object # @main.local_sum2
	.local	main.local_sum2
	.comm	main.local_sum2,4,4
	.type	b,@object               # @b
	.local	b
	.comm	b,12,4
	.type	sum2,@object            # @sum2
	.local	sum2
	.comm	sum2,4,4
	.type	a,@object               # @a
	.comm	a,12,4
	.type	sum1,@object            # @sum1
	.comm	sum1,4,4

