	.text
	.file	".\\benchmark\\dspstone\\mat1x3_Cmp.ll"
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
	movigh	GR3,%hi(main.h)
}
{
	movigl	GR3,%lo(main.h)
	movigh	GR4,%hi(main.y)
}
{
	movigl	GR4,%lo(main.y)
	movg2g	GR5,GR2
}
$BB0_1:                                 # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
{
	load32	GR6, GR4, 0
}
{
	nop
}
{
	nop
}
{
	movg2g	GR7,GR2
}
$BB0_2:                                 # %for.body3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	add	GR8, GR3, GR7
}
{
	load32	GR8, GR8, 0
}
{
	nop
}
{
	nop
}
{
	movigh	GR9,%hi(main.x)
}
{
	movigl	GR9,%lo(main.x)
}
{
	add	GR9, GR9, GR7
}
{
	load32	GR9, GR9, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR8, GR9, GR8
}
{
	nop
}
{
	add	GR6, GR6, GR8
}
{
	store32	GR6, GR4, 0
	addi	GR7, GR7, 4
}
{
	neqi	 GR7, 12
}
{
	jc	 $BB0_2
}
{
	nop
}
{
	nop
}
# BB#3:                                 # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
{
	addi	GR4, GR4, 4
	addi	GR3, GR3, 12
}
{
	addi	GR5, GR5, 1
}
{
	neqi	 GR5, 3
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
# BB#4:                                 # %for.end8
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
$tmp0:
	.size	main, ($tmp0)-main

	.type	main.h,@object          # @main.h
	.section	.rodata,"a",@progbits
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

