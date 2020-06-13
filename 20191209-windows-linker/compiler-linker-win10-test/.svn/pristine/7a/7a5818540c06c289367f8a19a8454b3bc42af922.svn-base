	.text
	.file	"./testcase_4slots/mat1x3.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 5
	movigh	GR3,%hi(main.x)
}
{
	movigl	GR3,%lo(main.x)
}
{
	store32	GR3, GR30, 4
	movigh	GR4,%hi(main.h)
}
{
	movigl	GR4,%lo(main.h)
}
{
	store32	GR4, GR30, 3
	movigh	GR4,%hi(main.y)
}
{
	movigl	GR4,%lo(main.y)
}
{
	store32	GR4, GR30, 2
	store32	GR2, GR30, 0
}
{
	jmp	$BB0_1
}
{
	nop
}
{
	nop
}
$BB0_5:                                 # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR4, GR30, 2
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR4, 4
}
{
	store32	GR4, GR30, 2
	load32	GR4, GR30, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR4, 1
}
{
	store32	GR4, GR30, 0
}
$BB0_1:                                 # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
{
	load32	GR4, GR30, 0
}
{
	nop
}
{
	lti	 GR4, 3
}
{
	jnc	 $BB0_6
}
{
	nop
}
{
	nop
}
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	store32	GR3, GR30, 4
	store32	GR2, GR30, 1
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
$BB0_4:                                 # %for.body3
                                        #   in Loop: Header=BB0_3 Depth=2
{
	load32	GR4, GR30, 3
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR4, 4
}
{
	store32	GR5, GR30, 3
}
{
	load32	GR4, GR4, 0
	load32	GR5, GR30, 4
}
{
	nop
}
{
	nop
}
{
	addi	GR6, GR5, 4
}
{
	store32	GR6, GR30, 4
}
{
	load32	GR5, GR5, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR4, GR4, GR5
	load32	GR5, GR30, 2
}
{
	nop
}
{
	nop
}
{
	load32	GR6, GR5, 0
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR6, GR4
}
{
	store32	GR4, GR5, 0
}
{
	load32	GR4, GR30, 1
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR4, 1
}
{
	store32	GR4, GR30, 1
}
$BB0_3:                                 # %for.cond1
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR4, GR30, 1
}
{
	nop
}
{
	lti	 GR4, 3
}
{
	jc	 $BB0_4
}
{
	nop
}
{
	nop
}
{
	jmp	$BB0_5
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %for.end8
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	addi	GR30, GR30, 24
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
$tmp0:                                  # EmittedInsts:71
	.size	main, ($tmp0)-main

	.type	main.h,@object          # @main.h
	.data
	.align	2
main.h:
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	3                       # 0x3
	.4byte	2                       # 0x2
	.4byte	1                       # 0x1
	.size	main.h, 36

	.type	main.x,@object          # @main.x
	.align	2
main.x:
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.size	main.x, 12

	.type	main.y,@object          # @main.y
	.local	main.y
	.comm	main.y,12,4

