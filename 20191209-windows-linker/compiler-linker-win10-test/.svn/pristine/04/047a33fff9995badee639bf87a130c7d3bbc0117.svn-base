	.text
	.file	"./testcase_4slots/select.ll"
	.globl	sum
	.align	2
	.type	sum,@function
sum:                                    # @sum
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
	add	GR2, GR2, GR5
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
$tmp0:                                  # EmittedInsts:9
	.size	sum, ($tmp0)-sum

	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -48
}
{
	store32	GR31, GR30, 11
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR30, 3
	store32	GR3, GR30, 10
	movigl	GR2,5
}
{
	movigh	GR2,0
}
{
	store16	GR2, GR30, 9
	movigl	GR2,7
}
{
	movigh	GR2,0
}
{
	store16	GR2, GR30, 8
	load16	GR2, GR30, 9
}
{
	sub	GR4, GR3, GR2
	load16	GR2, GR30, 8
}
{
	sub	GR5, GR3, GR2
}
{
	call	sum
}
{
	nop
}
{
	nop
}
{
	movigl	GR2,9
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 7
	movigl	GR2,2
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 6
	load32	GR2, GR30, 7
}
{
	nop
}
{
	load16	GR3, GR30, 8
}
{
	add	GR2, GR3, GR2
}
{
	store16	GR2, GR30, 9
}
{
	load16	GR2, GR30, 9
	load16	GR3, GR30, 8
}
{
	sub	GR2, GR3, GR2
}
{
	store32	GR2, GR30, 7
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 3
	sub	GR4, GR3, GR2
	load32	GR2, GR30, 6
}
{
	nop
}
{
	nop
}
{
	sub	GR5, GR3, GR2
}
{
	call	sum
}
{
	nop
}
{
	nop
}
{
	movigl	GR2,8
}
{
	movigh	GR2,0
}
{
	store8	GR2, GR30, 5
	movigl	GR2,6
}
{
	movigh	GR2,0
}
{
	store8	GR2, GR30, 4
	load8	GR2, GR30, 5
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
	store32	GR3, GR30, 3
	sub	GR4, GR3, GR2
	load8	GR2, GR30, 4
}
{
	sub	GR5, GR3, GR2
}
{
	call	sum
}
{
	nop
}
{
	nop
}
{
	load32	GR2, GR30, 3
	load32	GR31, GR30, 11
	addi	GR30, GR30, 48
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
$tmp1:                                  # EmittedInsts:60
	.size	main, ($tmp1)-main


