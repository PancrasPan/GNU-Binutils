	.text
	.file	".\\testcase_8slots\\SIMD_Intrinsic\\local_vector_return.ll"
	.globl	vmax_c
	.align	2
	.type	vmax_c,@function
vmax_c:                                 # @vmax_c
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -512
}
{
	vstore10	VR2, GR30, 256
	vstore10	VR3, GR30, 0
}
{
	vload8	VR0, GR30, 256
}
{
	nop
}
{
	nop
}
{
	vmax10	VR0, VR0, VR3
	addi	GR30, GR30, 512
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
	.size	vmax_c, ($tmp0)-vmax_c

	.globl	dspvi32_2add
	.align	2
	.type	dspvi32_2add,@function
dspvi32_2add:                           # @dspvi32_2add
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -512
}
{
	vstore40	VR2, GR30, 256
	vstore40	VR3, GR30, 0
}
{
	vload32	VR0, GR30, 256
}
{
	nop
}
{
	nop
}
{
	vadd40	VR0, VR0, VR3
	addi	GR30, GR30, 512
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
	.size	dspvi32_2add, ($tmp1)-dspvi32_2add

	.globl	dspvi32_3add
	.align	2
	.type	dspvi32_3add,@function
dspvi32_3add:                           # @dspvi32_3add
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -768
}
{
	vload32	VR0, GR30, 1024
}
{
	nop
}
{
	nop
}
{
	vstore40	VR2, GR30, 512
	vstore40	VR3, GR30, 256
}
{
	vstore40	VR0, GR30, 0
	vload32	VR1, GR30, 256
}
{
	nop
}
{
	nop
}
{
	vload32	VR2, GR30, 512
}
{
	nop
}
{
	nop
}
{
	vadd40	VR1, VR2, VR1
}
{
	vadd40	VR0, VR1, VR0
	addi	GR30, GR30, 768
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
$tmp2:
	.size	dspvi32_3add, ($tmp2)-dspvi32_3add

	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -1280
}
{
	store32	GR31, GR30, 319
	store32	GR18, GR30, 318
}
{
	store32	GR17, GR30, 317
	store32	GR16, GR30, 316
	movigl	GR16,0
}
{
	movigh	GR16,0
}
{
	store32	GR16, GR30, 315
	store32	GR4, GR30, 314
}
{
	store32	GR5, GR30, 313
	movigh	GR17,%hi(vla)
}
{
	movigl	GR17,%lo(vla)
	movigh	GR18,%hi(vlb)
}
{
	movigl	GR18,%lo(vlb)
}
{
	vload32	VR0, GR18, 0
}
{
	nop
}
{
	nop
}
{
	vload32	VR1, GR17, 0
}
{
	nop
}
{
	nop
}
{
	vadd40	VR2, VR1, VR0
}
{
	vstore40	VR2, GR17, 0
	vload32	VR3, GR18, 0
}
{
	nop
}
{
	nop
}
{
	call	dspvi32_2add
}
{
	nop
}
{
	nop
}
{
	vstore40	VR0, GR30, 768
	vload32	VR3, GR18, 0
}
{
	nop
}
{
	nop
}
{
	vload32	VR2, GR17, 0
}
{
	nop
}
{
	nop
}
{
	vstore40	VR0, GR30, 256
}
{
	call	dspvi32_3add
}
{
	nop
}
{
	nop
}
{
	vstore40	VR0, GR30, 512
	vload32	VR1, GR30, 768
}
{
	nop
}
{
	nop
}
{
	vadd40	VR0, VR1, VR0
}
{
	vstore40	VR0, GR30, 768
	vload32	VR0, GR17, 0
}
{
	nop
}
{
	nop
}
{
	vload32	VR1, GR30, 512
}
{
	nop
}
{
	nop
}
{
	vadd40	VR0, VR0, VR1
}
{
	vstore40	VR0, GR17, 0
}
{
	movg2g	GR2,GR16
}
{
	load32	GR16, GR30, 316
	load32	GR17, GR30, 317
}
{
	load32	GR18, GR30, 318
	load32	GR31, GR30, 319
	addi	GR30, GR30, 1280
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
$tmp3:
	.size	main, ($tmp3)-main

	.type	vla,@object             # @vla
	.data
	.globl	vla
	.align	8
vla:
	.4byte	3                       # 0x3
	.4byte	3                       # 0x3
	.4byte	3                       # 0x3
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.size	vla, 256

	.type	vlb,@object             # @vlb
	.globl	vlb
	.align	8
vlb:
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.size	vlb, 256


