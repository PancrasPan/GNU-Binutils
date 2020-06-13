	.text
	.file	".\\fir1.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 0
}
{
	store32	GR2, GR5, 0
	movigl	GR2,2
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 1
}
{
	store32	GR2, GR5, 1
	movigl	GR2,3
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 2
}
{
	store32	GR2, GR5, 2
	movigl	GR2,4
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 3
}
{
	store32	GR2, GR5, 3
	movigl	GR2,5
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 4
}
{
	store32	GR2, GR5, 4
	movigl	GR2,6
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 5
}
{
	store32	GR2, GR5, 5
	movigl	GR2,7
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 6
}
{
	store32	GR2, GR5, 6
	movigl	GR2,8
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 7
}
{
	store32	GR2, GR5, 7
	movigl	GR2,9
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 8
}
{
	store32	GR2, GR5, 8
	movigl	GR2,10
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 9
}
{
	store32	GR2, GR5, 9
	movigl	GR2,11
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 10
}
{
	store32	GR2, GR5, 10
	movigl	GR2,12
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 11
}
{
	store32	GR2, GR5, 11
	movigl	GR2,13
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 12
}
{
	store32	GR2, GR5, 12
	movigl	GR2,14
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 13
}
{
	store32	GR2, GR5, 13
	movigl	GR2,15
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 14
}
{
	store32	GR2, GR5, 14
	movigl	GR2,16
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 15
}
{
	store32	GR2, GR5, 15
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
	movigh	GR2,%hi(main.x)
}
{
	movigl	GR2,%lo(main.x)
	movigl	GR3,1
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 0
	movigh	GR4,%hi(main.h)
}
{
	movigl	GR4,%lo(main.h)
}
{
	store32	GR3, GR4, 0
	movigl	GR3,2
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 1
	store32	GR3, GR4, 1
	movigl	GR3,3
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 2
	store32	GR3, GR4, 2
	movigl	GR3,4
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 3
	store32	GR3, GR4, 3
	movigl	GR3,5
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 4
	store32	GR3, GR4, 4
	movigl	GR3,6
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 5
	store32	GR3, GR4, 5
	movigl	GR3,7
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 6
	store32	GR3, GR4, 6
	movigl	GR3,8
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 7
	store32	GR3, GR4, 7
	movigl	GR3,9
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 8
	store32	GR3, GR4, 8
	movigl	GR3,10
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 9
	store32	GR3, GR4, 9
	movigl	GR3,11
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 10
	store32	GR3, GR4, 10
	movigl	GR3,12
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 11
	store32	GR3, GR4, 11
	movigl	GR3,13
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 12
	store32	GR3, GR4, 12
	movigl	GR3,14
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 13
	store32	GR3, GR4, 13
	movigl	GR3,15
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 14
	store32	GR3, GR4, 14
	movigl	GR3,16
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 15
	store32	GR3, GR4, 15
	movigl	GR2,1496
}
{
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
$tmp1:
	.size	main, ($tmp1)-main

	.type	main.x,@object          # @main.x
	.local	main.x
	.comm	main.x,64,4
	.type	main.h,@object          # @main.h
	.local	main.h
	.comm	main.h,64,4

