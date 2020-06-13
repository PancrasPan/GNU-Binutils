	.text
	.file	"./testcase_8slots/SIMD_Intrinsic_Testcase.ll"
	.globl	SIMD_Intrinsic_Testcase0
	.align	2
	.type	SIMD_Intrinsic_Testcase0,@function
SIMD_Intrinsic_Testcase0:               # @SIMD_Intrinsic_Testcase0
# BB#0:                                 # %entry
{
	movigh	GR1,-1
}
{
	movigl	GR1,64256
}
{
	add	GR30, GR30, GR1
}
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	abs	GR3, GR2
}
{
	loadu8	GR4, GR2, 1
}
{
	loadu16	GR5, GR2, 1
}
{
	movigl	GR7,2
	loadu32	GR6, GR2, 1
}
{
	movigh	GR7,0
}
{
	loado16	GR8, GR2, GR7
}
{
	loado32	GR9, GR2, GR7
}
{
	storeo16	GR10, GR2, GR7
}
{
	storeo32	GR11, GR2, GR7
}
{
	storeu10	VR4, GR2, 1
}
{
	storeu20	VR5, GR2, 1
}
{
	storeu40	VR6, GR2, 1
}
{
	movigh	GR1,0
	storeu8	GR2, GR7, 1
}
{
	movigl	GR1,1024
}
{
	add	GR1, GR30, GR1
}
{
	store32	VR6, GR1, 0
	store32	GR3, GR30, 255
}
{
	store32	GR4, GR30, 254
	store32	GR5, GR30, 253
}
{
	store32	GR6, GR30, 252
	store32	VR5, GR30, 128
}
{
	store32	GR8, GR30, 127
	store32	GR9, GR30, 126
}
{
	store32	GR10, GR30, 125
	store32	GR11, GR30, 124
}
{
	store32	VR4, GR30, 0
}                                       # 256-byte Folded Spill
$tmp0:
	.size	SIMD_Intrinsic_Testcase0, ($tmp0)-SIMD_Intrinsic_Testcase0

	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	store32	GR31, GR30, 3
}                                       # 4-byte Folded Spill
{
	call	SIMD_Intrinsic_Testcase0
}
{
	nop
}
{
	nop
}
$tmp1:
	.size	main, ($tmp1)-main


