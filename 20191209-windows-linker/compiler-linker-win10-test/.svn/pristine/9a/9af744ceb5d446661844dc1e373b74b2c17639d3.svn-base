	.text
	.file	"./testcase_8slots/pointer_local_var_args.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -40
}
{
	store32	GR31, GR30, 9
}                                       # 4-byte Folded Spill
{
	movigl	GR2,3
}
{
	movigh	GR2,0
}
{
	movigl	GR2,2
	store32	GR2, GR30, 8
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 7
}
{
	addi	GR3, GR30, 28
	movg2g	GR2,GR30
}
{
	movigl	GR2,1
	store32	GR3, GR2, 2
}
{
	addi	GR4, GR30, 32
	movigh	GR2,0
}
{
	store32	GR4, GR30, 6
}                                       # 4-byte Folded Spill
{
	movg2g	GR4,GR2
}
{
	load32	GR5, GR30, 6
	store32	GR3, GR30, 5
	store32	GR2, GR30, 4
}
{
	call	inFunct
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 8
}
{
	movg2g	GR2,GR30
}
{
	load32	GR3, GR30, 5
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	load32	GR4, GR30, 4
	store32	GR3, GR2, 2
}
{
	nop
}
{
	load32	GR5, GR30, 6
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	call	outFunct
}
{
	nop
}
{
	nop
}
{
	addi	GR30, GR30, 40
	load32	GR31, GR30, 9
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

	.globl	inFunct
	.align	2
	.type	inFunct,@function
inFunct:                                # @inFunct
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	movg2g	GR3,GR5
	load32	GR2, GR30, 6
}
{
	load32	GR5, GR5, 0
}
{
	nop
}
{
	lt	 GR5, GR4
	movg2g	GR6,GR4
}
{
	store32	GR3, GR30, 3
	store32	GR6, GR30, 2
}
{
	store32	GR2, GR30, 1
	store32	GR5, GR30, 0
}
{
	jc	 $BB1_2
}
{
	nop
}
{
	nop
}
$BB1_1:                                 # %cond.false
{
	load32	GR2, GR30, 1
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	load32	GR3, GR2, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 0
}                                       # 4-byte Folded Spill
$BB1_2:                                 # %cond.end
{
	addi	GR30, GR30, 16
	load32	GR2, GR30, 0
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
	.size	inFunct, ($tmp1)-inFunct


