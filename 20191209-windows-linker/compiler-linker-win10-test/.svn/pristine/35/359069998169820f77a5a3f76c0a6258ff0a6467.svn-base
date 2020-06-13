	.text
	.file	"./testcase_4slots/Intrinsic/local_vector_return.ll"
	.globl	v4si_2add
	.align	2
	.type	v4si_2add,@function
v4si_2add:                              # @v4si_2add
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -128
}
{
	vstore40	VR2, GR30, 16
	vstore40	VR3, GR30, 0
}
{
	vload32	VR0, GR30, 16
}
{
	nop
}
{
	nop
}
{
	vadd40	VR0, VR0, VR3
	addi	GR30, GR30, 128
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
	.size	v4si_2add, ($tmp0)-v4si_2add

	.globl	v4si_3add
	.align	2
	.type	v4si_3add,@function
v4si_3add:                              # @v4si_3add
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -192
}
{
	vload32	VR0, GR30, 64
}
{
	nop
}
{
	nop
}
{
	vstore40	VR2, GR30, 32
	vstore40	VR3, GR30, 16
}
{
	vstore40	VR0, GR30, 0
	vload32	VR1, GR30, 16
}
{
	nop
}
{
	nop
}
{
	vload32	VR2, GR30, 32
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
	addi	GR30, GR30, 192
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
$tmp1:                                  # EmittedInsts:25
	.size	v4si_3add, ($tmp1)-v4si_3add

	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -384
}
{
	store32	GR31, GR30, 95
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 46
	store32	GR2, GR30, 94
}
{
	store32	GR4, GR30, 93
	store32	GR5, GR30, 92
	movigh	GR2,%hi(vla)
}
{
	movigl	GR2,%lo(vla)
}
{
	store32	GR2, GR30, 47
	movigh	GR3,%hi(vlb)
}
{
	movigl	GR3,%lo(vlb)
}
{
	store32	GR3, GR30, 45
	vload32	VR0, GR3, 0
}
{
	nop
}
{
	nop
}
{
	vload32	VR1, GR2, 0
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
	vstore40	VR2, GR2, 0
	vload32	VR3, GR3, 0
}
{
	nop
}
{
	nop
}
{
	call	v4si_2add
}
{
	nop
}
{
	nop
}
{
	vstore40	VR0, GR30, 64
	load32	GR2, GR30, 45
}
{
	nop
}
{
	nop
}
{
	vload32	VR3, GR2, 0
}
{
	nop
}
{
	nop
}
{
	load32	GR2, GR30, 47
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	vload32	VR2, GR2, 0
}
{
	nop
}
{
	nop
}
{
	vstore40	VR0, GR30, 16
}
{
	call	v4si_3add
}
{
	nop
}
{
	nop
}
{
	vstore40	VR0, GR30, 48
	vload32	VR1, GR30, 64
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
	vstore40	VR0, GR30, 64
	load32	GR2, GR30, 47
}
{
	nop
}
{
	nop
}
{
	vload32	VR0, GR2, 0
}
{
	nop
}
{
	nop
}
{
	vload32	VR1, GR30, 48
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
	vstore40	VR0, GR2, 0
	load32	GR2, GR30, 46
}
{
	load32	GR31, GR30, 95
	addi	GR30, GR30, 384
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
$tmp2:                                  # EmittedInsts:81
	.size	main, ($tmp2)-main

	.type	vla,@object             # @vla
	.data
	.globl	vla
	.align	6
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
	.size	vla, 64

	.type	vlb,@object             # @vlb
	.globl	vlb
	.align	6
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
	.size	vlb, 64


