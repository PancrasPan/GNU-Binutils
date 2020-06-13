	.text
	.file	".\\benchmark\\dspstone\\lms_Cmp.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	load32	GR2, GR30, 4
	load32	GR3, GR30, 3
}
{
	load32	GR6, GR30, 2
	movigl	GR7,7
}
{
	movigh	GR7,0
}
{
	store32	GR7, GR4, 0
	movigl	GR4,8
}
{
	movigh	GR4,0
}
{
	store32	GR4, GR5, 0
	movigl	GR4,1
}
{
	movigh	GR4,0
}
{
	store32	GR4, GR6, 0
	movigl	GR5,0
}
{
	movigh	GR5,0
}
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR6, GR3, GR5
}
{
	store32	GR4, GR6, 0
	add	GR6, GR2, GR5
}
{
	store32	GR4, GR6, 0
	addi	GR5, GR5, 4
}
{
	neqi	 GR5, 64
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
	movigl	GR5,0
}
{
	movigh	GR5,0
}
{
	movg2g	GR6,GR5
	movigl	GR3,1
}
{
	movigh	GR3,0
}
$BB1_1:                                 # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
{
	movigh	GR2,%hi(main.H)
}
{
	movigl	GR2,%lo(main.H)
}
{
	add	GR4, GR2, GR6
}
{
	store32	GR3, GR4, 0
	movigh	GR4,%hi(main.X)
}
{
	movigl	GR4,%lo(main.X)
}
{
	add	GR7, GR4, GR6
}
{
	store32	GR3, GR7, 0
	addi	GR6, GR6, 4
}
{
	neqi	 GR6, 64
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
	movg2g	GR6,GR5
}
$BB1_3:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR7, GR2, GR5
}
{
	load32	GR7, GR7, 15
	add	GR8, GR4, GR5
}
{
	load32	GR9, GR8, 14
}
{
	nop
}
{
	nop
}
{
	store32	GR9, GR8, 15
	mul32	GR7, GR9, GR7
}
{
	nop
}
{
	add	GR6, GR7, GR6
	addi	GR5, GR5, -4
}
{
	neqi	 GR5, -60
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
# BB#4:                                 # %for.end
{
	load32	GR7, GR2, 0
	movigl	GR8,8
}
{
	movigh	GR8,0
}
{
	store32	GR8, GR4, 0
	movigl	GR5,7
}
{
	movigh	GR5,0
}
{
	sub	GR5, GR5, GR6
	movigl	GR6,3
}
{
	movigh	GR6,0
}
{
	sl	GR6, GR7, GR6
}
{
	sub	GR6, GR5, GR6
	movigl	GR5,0
}
{
	movigh	GR5,0
}
{
	movg2g	GR9,GR5
}
{
	jmp	$BB1_5
}
{
	nop
}
{
	nop
}
$BB1_6:                                 # %for.body8.for.body8_crit_edge
                                        #   in Loop: Header=BB1_5 Depth=1
{
	add	GR8, GR4, GR9
	load32	GR7, GR7, 1
}
{
	load32	GR8, GR8, 1
}
{
	nop
}
{
	movg2g	GR9,GR10
}
$BB1_5:                                 # %for.body8
                                        # =>This Inner Loop Header: Depth=1
{
	mul32	GR8, GR8, GR6
}
{
	nop
}
{
	add	GR8, GR7, GR8
	add	GR7, GR2, GR9
}
{
	store32	GR8, GR7, 0
	addi	GR10, GR9, 4
}
{
	eqi	 GR10, 64
}
{
	jnc	 $BB1_6
}
{
	nop
}
{
	nop
}
$BB1_7:                                 # %for.body.i29
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR6, GR2, GR5
}
{
	store32	GR3, GR6, 0
	add	GR6, GR4, GR5
}
{
	store32	GR3, GR6, 0
	addi	GR5, GR5, 4
}
{
	neqi	 GR5, 64
}
{
	jc	 $BB1_7
}
{
	nop
}
{
	nop
}
# BB#8:                                 # %pin_down.exit30
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

	.type	main.H,@object          # @main.H
	.local	main.H
	.comm	main.H,64,4
	.type	main.X,@object          # @main.X
	.local	main.X
	.comm	main.X,64,4

