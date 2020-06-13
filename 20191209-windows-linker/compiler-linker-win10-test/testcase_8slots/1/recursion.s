	.text
	.file	"./testcase_8slots/1/recursion.ll"
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
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	movigl	GR2,5
	store32	GR2, GR30, 4
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 3
}
{
	movg2g	GR4,GR2
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
	addi	GR30, GR30, 24
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
$tmp0:
	.size	main, ($tmp0)-main

	.globl	sum
	.align	2
	.type	sum,@function
sum:                                    # @sum
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
}
{
	store32	GR31, GR30, 7
}                                       # 4-byte Folded Spill
{
	store32	GR4, GR30, 5
}
{
	movg2g	GR2,GR4
}
{
	lti	 GR4, 2
}
{
	store32	GR2, GR30, 4
}                                       # 4-byte Folded Spill
{
	jnc	 $BB1_2
}
{
	nop
}
{
	nop
}
$BB1_1:                                 # %if.then
{
	load32	GR2, GR30, 5
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 6
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
	load32	GR2, GR30, 5
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR2, -1
	store32	GR2, GR30, 3
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
	load32	GR4, GR30, 3
}                                       # 4-byte Folded Reload
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
	store32	GR2, GR30, 6
}
$BB1_3:                                 # %return
{
	addi	GR30, GR30, 32
	load32	GR2, GR30, 6
	load32	GR31, GR30, 7
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
	.size	sum, ($tmp1)-sum


