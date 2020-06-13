	.text
	.file	"./testcase_4slots/dot_product.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
}
{
	store32	GR4, GR30, 1
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR4, 0
	addi	GR30, GR30, 8
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
$tmp0:                                  # EmittedInsts:7
	.size	pin_down, ($tmp0)-pin_down

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
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 2
	store32	GR2, GR30, 8
	movigh	GR2,%hi(main.A)
}
{
	movigl	GR2,%lo(main.A)
}
{
	store32	GR2, GR30, 7
	movigh	GR2,%hi(main.B)
}
{
	movigl	GR2,%lo(main.B)
}
{
	store32	GR2, GR30, 6
	movigh	GR4,%hi(main.Z)
}
{
	movigl	GR4,%lo(main.Z)
}
{
	store32	GR4, GR30, 3
	store32	GR4, GR30, 5
}
{
	call	pin_down
}
{
	nop
}
{
	nop
}
{
	load32	GR2, GR30, 2
}                                       # 4-byte Folded Reload
{
	nop
}
{
	jmp	$BB1_1
}
{
	nop
}
{
	nop
}
$BB1_2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
{
	load32	GR2, GR30, 7
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 4
}
{
	store32	GR3, GR30, 7
}
{
	load32	GR2, GR2, 0
	load32	GR3, GR30, 6
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, 4
}
{
	store32	GR4, GR30, 6
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR2, GR2, GR3
	load32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	load32	GR4, GR3, 0
}
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
	store32	GR2, GR3, 0
}
{
	load32	GR2, GR30, 4
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
$BB1_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR2, GR30, 4
}
{
	load32	GR2, GR30, 4
}
{
	nop
}
{
	lti	 GR2, 2
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
# BB#3:                                 # %for.end
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
	call	pin_down
}
{
	nop
}
{
	nop
}
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	load32	GR31, GR30, 9
	addi	GR30, GR30, 40
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
$tmp1:                                  # EmittedInsts:68
	.size	main, ($tmp1)-main

	.type	main.A,@object          # @main.A
	.data
	.align	2
main.A:
	.4byte	2                       # 0x2
	.4byte	1                       # 0x1
	.size	main.A, 8

	.type	main.B,@object          # @main.B
	.align	2
main.B:
	.4byte	2                       # 0x2
	.4byte	5                       # 0x5
	.size	main.B, 8

	.type	main.Z,@object          # @main.Z
	.local	main.Z
	.comm	main.Z,4,4

