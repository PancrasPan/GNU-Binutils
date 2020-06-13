	.text
	.file	".\\n_real_updates123.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	load32	GR2, GR30, 3
	load32	GR3, GR30, 2
}
{
	nop
}
{
	movigl	GR6,10
}
{
	movigh	GR6,0
}
{
	store32	GR6, GR4, 0
	movigl	GR7,2
}
{
	movigh	GR7,0
}
{
	store32	GR7, GR5, 0
}
{
	store32	GR6, GR3, 0
	movigl	GR8,0
}
{
	movigh	GR8,0
}
{
	store32	GR8, GR2, 0
}
{
	store32	GR6, GR4, 1
}
{
	store32	GR7, GR5, 1
}
{
	store32	GR6, GR3, 1
}
{
	store32	GR8, GR2, 1
}
{
	store32	GR6, GR4, 2
}
{
	store32	GR7, GR5, 2
}
{
	store32	GR6, GR3, 2
}
{
	store32	GR8, GR2, 2
}
{
	store32	GR6, GR4, 3
}
{
	store32	GR7, GR5, 3
}
{
	store32	GR6, GR3, 3
}
{
	store32	GR8, GR2, 3
}
{
	store32	GR6, GR4, 4
}
{
	store32	GR7, GR5, 4
}
{
	store32	GR6, GR3, 4
}
{
	store32	GR8, GR2, 4
}
{
	store32	GR6, GR4, 5
}
{
	store32	GR7, GR5, 5
}
{
	store32	GR6, GR3, 5
}
{
	store32	GR8, GR2, 5
}
{
	store32	GR6, GR4, 6
}
{
	store32	GR7, GR5, 6
}
{
	store32	GR6, GR3, 6
}
{
	store32	GR8, GR2, 6
}
{
	store32	GR6, GR4, 7
}
{
	store32	GR7, GR5, 7
}
{
	store32	GR6, GR3, 7
}
{
	store32	GR8, GR2, 7
}
{
	store32	GR6, GR4, 8
}
{
	store32	GR7, GR5, 8
}
{
	store32	GR6, GR3, 8
}
{
	store32	GR8, GR2, 8
}
{
	store32	GR6, GR4, 9
}
{
	store32	GR7, GR5, 9
}
{
	store32	GR6, GR3, 9
}
{
	store32	GR8, GR2, 9
}
{
	store32	GR6, GR4, 10
}
{
	store32	GR7, GR5, 10
}
{
	store32	GR6, GR3, 10
}
{
	store32	GR8, GR2, 10
}
{
	store32	GR6, GR4, 11
}
{
	store32	GR7, GR5, 11
}
{
	store32	GR6, GR3, 11
}
{
	store32	GR8, GR2, 11
}
{
	store32	GR6, GR4, 12
}
{
	store32	GR7, GR5, 12
}
{
	store32	GR6, GR3, 12
}
{
	store32	GR8, GR2, 12
}
{
	store32	GR6, GR4, 13
}
{
	store32	GR7, GR5, 13
}
{
	store32	GR6, GR3, 13
}
{
	store32	GR8, GR2, 13
}
{
	store32	GR6, GR4, 14
}
{
	store32	GR7, GR5, 14
}
{
	store32	GR6, GR3, 14
}
{
	store32	GR8, GR2, 14
}
{
	store32	GR6, GR4, 15
}
{
	store32	GR7, GR5, 15
}
{
	store32	GR6, GR3, 15
}
{
	store32	GR8, GR2, 15
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

	.section	.rodata,"awM",@progbits,16
	.align	4
__DSPVector@0000000a0000000a0000000a0000000a:
	.4byte	10                      # 0xa
	.4byte	10                      # 0xa
	.4byte	10                      # 0xa
	.4byte	10                      # 0xa
	.section	.rodata,"awM",@progbits,16
	.align	4
__DSPVector@00000002000000020000000200000002:
	.4byte	2                       # 0x2
	.4byte	2                       # 0x2
	.4byte	2                       # 0x2
	.4byte	2                       # 0x2
	.section	.rodata,"awM",@progbits,16
	.align	4
__DSPVector@00000000000000000000000000000000:
	.space	16
	.text
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	movigh	GR2,%hi(main.A)
}
{
	movigl	GR2,%lo(main.A)
	movigh	GR3,%hi(__DSPVector@0000000a0000000a0000000a0000000a)
}
{
	movigl	GR3,%lo(__DSPVector@0000000a0000000a0000000a0000000a)
}
{
	vload32	VR0, GR3, 0
}
{
	nop
}
{
	nop
}
{
	vstore40	VR0, GR2, 0
	movigh	GR3,%hi(main.B)
}
{
	movigl	GR3,%lo(main.B)
	movigh	GR4,%hi(__DSPVector@00000002000000020000000200000002)
}
{
	movigl	GR4,%lo(__DSPVector@00000002000000020000000200000002)
}
{
	vload32	VR1, GR4, 0
}
{
	nop
}
{
	nop
}
{
	vstore40	VR1, GR3, 0
	movigh	GR4,%hi(main.C)
}
{
	movigl	GR4,%lo(main.C)
}
{
	vstore40	VR0, GR4, 0
	movigh	GR5,%hi(main.D)
}
{
	movigl	GR5,%lo(main.D)
	movigh	GR6,%hi(__DSPVector@00000000000000000000000000000000)
}
{
	movigl	GR6,%lo(__DSPVector@00000000000000000000000000000000)
}
{
	vload32	VR2, GR6, 0
}
{
	nop
}
{
	nop
}
{
	vstore40	VR2, GR5, 0
	vstore40	VR0, GR2, 4
}
{
	vstore40	VR1, GR3, 4
	vstore40	VR0, GR4, 4
}
{
	vstore40	VR2, GR5, 4
	vstore40	VR0, GR2, 8
}
{
	vstore40	VR1, GR3, 8
	vstore40	VR0, GR4, 8
}
{
	vstore40	VR2, GR5, 8
	vstore40	VR0, GR2, 12
}
{
	vstore40	VR1, GR3, 12
	vstore40	VR0, GR4, 12
}
{
	vstore40	VR2, GR5, 12
	movigl	GR2,0
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

	.type	main.A,@object          # @main.A
	.local	main.A
	.comm	main.A,64,16
	.type	main.B,@object          # @main.B
	.local	main.B
	.comm	main.B,64,16
	.type	main.C,@object          # @main.C
	.local	main.C
	.comm	main.C,64,16
	.type	main.D,@object          # @main.D
	.local	main.D
	.comm	main.D,64,16

