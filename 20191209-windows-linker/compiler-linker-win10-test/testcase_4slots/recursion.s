	.text
	.file	"./testcase_4slots/recursion.ll"
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
	movigl	GR4,5
}
{
	movigh	GR4,0
}
{
	store32	GR4, GR30, 3
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
$tmp0:                                  # EmittedInsts:13
	.size	main, ($tmp0)-main

	.globl	sum
	.align	2
	.type	sum,@function
sum:                                    # @sum
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	store32	GR31, GR30, 5
	store32	GR4, GR30, 3
}
{
	lti	 GR4, 2
}
{
	jnc	 $BB1_2
}
{
	nop
}
{
	nop
}
# BB#1:                                 # %if.then
{
	load32	GR2, GR30, 3
}
{
	nop
}
{
	jmp	$BB1_3
}
{
	nop
}
{
	nop
}
$BB1_2:                                 # %if.else
{
	load32	GR2, GR30, 3
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 2
	addi	GR4, GR2, -1
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
	load32	GR3, GR30, 2
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
}
$BB1_3:                                 # %return
{
	store32	GR2, GR30, 4
}
{
	load32	GR2, GR30, 4
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
$tmp1:                                  # EmittedInsts:40
	.size	sum, ($tmp1)-sum


