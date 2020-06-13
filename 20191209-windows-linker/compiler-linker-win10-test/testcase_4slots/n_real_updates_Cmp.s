	.text
	.file	".\\benchmark\\dspstone\\n_real_updates_Cmp.ll"
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
	movigl	GR9,10
}
{
	movigh	GR9,0
	movigl	GR10,2
}
{
	movigh	GR10,0
}
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR8, GR4, GR7
}
{
	store32	GR9, GR8, 0
	add	GR8, GR5, GR7
}
{
	store32	GR10, GR8, 0
	add	GR8, GR6, GR7
}
{
	store32	GR9, GR8, 0
	add	GR8, GR3, GR7
}
{
	store32	GR2, GR8, 0
	addi	GR7, GR7, 4
}
{
	neqi	 GR7, 64
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
	movg2g	GR9,GR2
	movigl	GR4,10
}
{
	movigh	GR4,0
	movigl	GR6,2
}
{
	movigh	GR6,0
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
	add	GR5, GR3, GR9
}
{
	store32	GR4, GR5, 0
	movigh	GR5,%hi(main.B)
}
{
	movigl	GR5,%lo(main.B)
}
{
	add	GR7, GR5, GR9
}
{
	store32	GR6, GR7, 0
	movigh	GR7,%hi(main.C)
}
{
	movigl	GR7,%lo(main.C)
}
{
	add	GR8, GR7, GR9
}
{
	store32	GR4, GR8, 0
	movigh	GR8,%hi(main.D)
}
{
	movigl	GR8,%lo(main.D)
}
{
	add	GR10, GR8, GR9
}
{
	store32	GR2, GR10, 0
	addi	GR9, GR9, 4
}
{
	neqi	 GR9, 64
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
	movg2g	GR9,GR2
}
$BB1_3:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR10, GR3, GR9
}
{
	load32	GR10, GR10, 0
}
{
	nop
}
{
	nop
}
{
	add	GR11, GR5, GR9
}
{
	load32	GR11, GR11, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR10, GR11, GR10
}
{
	nop
}
{
	add	GR11, GR7, GR9
}
{
	load32	GR11, GR11, 0
}
{
	nop
}
{
	nop
}
{
	add	GR10, GR10, GR11
	add	GR11, GR8, GR9
}
{
	store32	GR10, GR11, 0
	addi	GR9, GR9, 4
}
{
	neqi	 GR9, 64
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
	movg2g	GR9,GR2
}
$BB1_5:                                 # %for.body.i16
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR10, GR3, GR9
}
{
	store32	GR4, GR10, 0
	add	GR10, GR5, GR9
}
{
	store32	GR6, GR10, 0
	add	GR10, GR7, GR9
}
{
	store32	GR4, GR10, 0
	add	GR10, GR8, GR9
}
{
	store32	GR2, GR10, 0
	addi	GR9, GR9, 4
}
{
	neqi	 GR9, 64
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
# BB#6:                                 # %pin_down.exit17
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
	.comm	main.A,64,4
	.type	main.B,@object          # @main.B
	.local	main.B
	.comm	main.B,64,4
	.type	main.C,@object          # @main.C
	.local	main.C
	.comm	main.C,64,4
	.type	main.D,@object          # @main.D
	.local	main.D
	.comm	main.D,64,4

