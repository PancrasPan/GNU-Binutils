	.text
	.file	"./testcase_4slots/iltj_if.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 3
	store32	GR2, GR30, 2
	movigl	GR2,4
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 1
	movigl	GR2,2
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 0
	load32	GR2, GR30, 1
}
{
	nop
}
{
	load32	GR3, GR30, 2
}
{
	ge	 GR3, GR2
}
{
	jc	 $BB0_2
}
{
	nop
}
{
	nop
}
# BB#1:                                 # %if.then
{
	load32	GR2, GR30, 2
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 1
}
{
	store32	GR2, GR30, 2
}
{
	jmp	$BB0_3
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %if.else
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
	addi	GR2, GR2, 1
}
{
	store32	GR2, GR30, 1
}
$BB0_3:                                 # %if.end
{
	load32	GR2, GR30, 0
}
{
	nop
}
{
	load32	GR3, GR30, 1
}
{
	le	 GR3, GR2
}
{
	jc	 $BB0_5
}
{
	nop
}
{
	nop
}
# BB#4:                                 # %if.then3
{
	load32	GR2, GR30, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 1
}
{
	store32	GR2, GR30, 0
}
{
	jmp	$BB0_6
}
{
	nop
}
{
	nop
}
$BB0_5:                                 # %if.else5
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
	addi	GR2, GR2, 1
}
{
	store32	GR2, GR30, 1
}
$BB0_6:                                 # %if.end7
{
	load32	GR2, GR30, 0
}
{
	nop
}
{
	load32	GR3, GR30, 2
}
{
	gt	 GR3, GR2
}
{
	jc	 $BB0_8
}
{
	nop
}
{
	nop
}
# BB#7:                                 # %if.then9
{
	load32	GR2, GR30, 2
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 1
}
{
	store32	GR2, GR30, 2
}
{
	jmp	$BB0_9
}
{
	nop
}
{
	nop
}
$BB0_8:                                 # %if.else11
{
	load32	GR2, GR30, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 1
}
{
	store32	GR2, GR30, 0
}
$BB0_9:                                 # %if.end13
{
	load32	GR2, GR30, 2
}
{
	nop
}
{
	load32	GR3, GR30, 1
}
{
	nop
}
{
	nop
}
{
	sub	GR2, GR3, GR2
	addi	GR30, GR30, 16
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
$tmp0:                                  # EmittedInsts:75
	.size	main, ($tmp0)-main


