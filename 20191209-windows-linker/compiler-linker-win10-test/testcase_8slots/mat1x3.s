	.text
	.file	"./testcase_8slots/mat1x3.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -40
}
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
	store32	GR2, GR30, 9
}
{
	store32	GR4, GR30, 8
	store32	GR3, GR30, 7
}
$BB0_1:                                 # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
{
	load32	GR2, GR30, 7
	load32	GR3, GR30, 8
}
{
	movigl	GR5,0
	load32	GR4, GR30, 9
}
{
	movigh	GR5,0
	movigh	GR6,%hi(main.x)
}
{
	movigl	GR6,%lo(main.x)
	movg2g	GR7,GR2
}
{
	store32	GR2, GR30, 6
	store32	GR3, GR30, 5
}
{
	store32	GR4, GR30, 4
	store32	GR7, GR30, 3
}
{
	store32	GR5, GR30, 2
	store32	GR6, GR30, 1
}
$BB0_2:                                 # %for.body3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR2, GR30, 1
	load32	GR3, GR30, 3
}
{
	nop
}
{
	load32	GR4, GR30, 2
	load32	GR5, GR3, 0
}
{
	nop
}
{
	load32	GR6, GR2, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR5, GR6, GR5
	load32	GR6, GR30, 5
}
{
	nop
}
{
	nop
}
{
	load32	GR7, GR6, 0
}
{
	nop
}
{
	nop
}
{
	add	GR5, GR7, GR5
}
{
	addi	GR2, GR2, 4
	addi	GR3, GR3, 4
	store32	GR5, GR6, 0
	addi	GR4, GR4, 1
}
{
	neqi	 GR4, 3
}
{
	store32	GR3, GR30, 3
	store32	GR4, GR30, 2
}
{
	store32	GR2, GR30, 1
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_2
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 5
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 4
	load32	GR4, GR30, 6
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR4, 12
	load32	GR6, GR30, 4
}
{
	nop
}
{
	nop
}
{
	addi	GR7, GR6, 1
}
{
	neqi	 GR7, 3
}
{
	store32	GR7, GR30, 9
	store32	GR3, GR30, 8
}
{
	store32	GR5, GR30, 7
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_1
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %for.end8
{
	movigl	GR2,0
}
{
	addi	GR30, GR30, 40
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

