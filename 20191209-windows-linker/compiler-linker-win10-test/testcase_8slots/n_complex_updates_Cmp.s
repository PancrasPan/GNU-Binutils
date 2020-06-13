	.text
	.file	".\\benchmark\\dspstone\\n_complex_updates_Cmp.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	load32	GR3, GR30, 3
	load32	GR6, GR30, 2
}
{
	nop
}
{
	nop
}
{
	movg2g	GR7,GR2
	movigl	GR10,1
}
{
	movigh	GR10,0
}
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR8, GR4, GR7
	movigl	GR9,2
}
{
	movigh	GR9,0
}
{
	store32	GR9, GR8, 0
}
{
	store32	GR10, GR8, 1
	add	GR8, GR5, GR7
}
{
	store32	GR9, GR8, 0
	movigl	GR9,5
}
{
	movigh	GR9,0
}
{
	store32	GR9, GR8, 1
	add	GR8, GR6, GR7
	movigl	GR9,3
}
{
	movigh	GR9,0
}
{
	store32	GR9, GR8, 0
	movigl	GR9,4
}
{
	movigh	GR9,0
}
{
	store32	GR9, GR8, 1
	add	GR8, GR3, GR7
}
{
	store32	GR2, GR8, 0
}
{
	store32	GR2, GR8, 1
	addi	GR7, GR7, 8
}
{
	neqi	 GR7, 128
}
{
	jc	 $BB0_1
}
{
	nop
}
{
	nop
}
# BB#2:                                 # %for.end
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
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	movg2g	GR12,GR2
	movigl	GR4,2
}
{
	movigh	GR4,0
	movigl	GR5,1
}
{
	movigh	GR5,0
	movigl	GR7,5
}
{
	movigh	GR7,0
	movigl	GR9,3
}
{
	movigh	GR9,0
	movigl	GR10,4
}
{
	movigh	GR10,0
}
$BB1_1:                                 # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
{
	movigh	GR3,%hi(main.A)
}
{
	movigl	GR3,%lo(main.A)
}
{
	add	GR6, GR3, GR12
}
{
	store32	GR4, GR6, 0
}
{
	store32	GR5, GR6, 1
	movigh	GR6,%hi(main.B)
}
{
	movigl	GR6,%lo(main.B)
}
{
	add	GR8, GR6, GR12
}
{
	store32	GR4, GR8, 0
}
{
	store32	GR7, GR8, 1
	movigh	GR8,%hi(main.C)
}
{
	movigl	GR8,%lo(main.C)
}
{
	add	GR11, GR8, GR12
}
{
	store32	GR9, GR11, 0
}
{
	store32	GR10, GR11, 1
	movigh	GR11,%hi(main.D)
}
{
	movigl	GR11,%lo(main.D)
}
{
	add	GR13, GR11, GR12
}
{
	store32	GR2, GR13, 0
}
{
	store32	GR2, GR13, 1
	addi	GR12, GR12, 8
}
{
	neqi	 GR12, 128
}
{
	jc	 $BB1_1
}
{
	nop
}
{
	nop
}
# BB#2:
{
	movg2g	GR12,GR2
}
$BB1_3:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR13, GR8, GR12
	add	GR14, GR6, GR12
}
{
	add	GR15, GR3, GR12
}
{
	load32	GR24, GR15, 0
	load32	GR25, GR14, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR16, GR25, GR24
}
{
	nop
}
{
	load32	GR17, GR13, 0
}
{
	nop
}
{
	nop
}
{
	add	GR16, GR16, GR17
	load32	GR15, GR15, 1
	load32	GR14, GR14, 1
}
{
	nop
}
{
	nop
}
{
	mul32	GR17, GR14, GR15
}
{
	nop
}
{
	sub	GR16, GR16, GR17
	add	GR17, GR11, GR12
}
{
	store32	GR16, GR17, 0
	mul32	GR14, GR14, GR24
}
{
	nop
}
{
	mul32	GR15, GR25, GR15
}
{
	nop
}
{
	load32	GR13, GR13, 1
}
{
	nop
}
{
	nop
}
{
	add	GR13, GR15, GR13
}
{
	add	GR13, GR14, GR13
}
{
	store32	GR13, GR17, 1
	addi	GR12, GR12, 8
}
{
	neqi	 GR12, 128
}
{
	jc	 $BB1_3
}
{
	nop
}
{
	nop
}
# BB#4:
{
	movg2g	GR12,GR2
}
$BB1_5:                                 # %for.body.i44
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR13, GR3, GR12
}
{
	store32	GR4, GR13, 0
}
{
	store32	GR5, GR13, 1
	add	GR13, GR6, GR12
}
{
	store32	GR4, GR13, 0
}
{
	store32	GR7, GR13, 1
	add	GR13, GR8, GR12
}
{
	store32	GR9, GR13, 0
}
{
	store32	GR10, GR13, 1
	add	GR13, GR11, GR12
}
{
	store32	GR2, GR13, 0
}
{
	store32	GR2, GR13, 1
	addi	GR12, GR12, 8
}
{
	neqi	 GR12, 128
}
{
	jc	 $BB1_5
}
{
	nop
}
{
	nop
}
# BB#6:                                 # %pin_down.exit45
{
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
	.comm	main.A,128,4
	.type	main.B,@object          # @main.B
	.local	main.B
	.comm	main.B,128,4
	.type	main.C,@object          # @main.C
	.local	main.C
	.comm	main.C,128,4
	.type	main.D,@object          # @main.D
	.local	main.D
	.comm	main.D,128,4

