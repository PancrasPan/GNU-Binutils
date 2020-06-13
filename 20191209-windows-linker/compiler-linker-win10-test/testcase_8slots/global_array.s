	.text
	.file	"./testcase_8slots/global_array.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
}
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 1
}                                       # 4-byte Folded Spill
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR3,2
	load32	GR2, GR30, 1
}
{
	movigh	GR3,0
}
{
	sl	GR3, GR2, GR3
	movigh	GR4,%hi(g_Array)
}
{
	movigl	GR4,%lo(g_Array)
}
{
	add	GR3, GR4, GR3
	movigl	GR4,5
}
{
	movigh	GR4,0
}
{
	sub	GR4, GR4, GR2
}
{
	movigl	GR3,0
	store32	GR4, GR3, 0
}
{
	addi	GR2, GR2, 1
	movigh	GR3,0
}
{
	neqi	 GR2, 5
}
{
	store32	GR2, GR30, 1
	store32	GR3, GR30, 0
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
$BB0_2:                                 # %for.body4
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR3,2
	load32	GR2, GR30, 0
}
{
	movigh	GR3,0
}
{
	sl	GR3, GR2, GR3
	movigh	GR4,%hi(g_Array)
}
{
	movigl	GR4,%lo(g_Array)
}
{
	add	GR3, GR4, GR3
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
	addi	GR4, GR4, 1
}
{
	addi	GR2, GR2, 1
	store32	GR4, GR3, 0
}
{
	neqi	 GR2, 5
}
{
	store32	GR2, GR30, 0
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
$BB0_3:                                 # %for.end9
{
	movigl	GR2,0
}
{
	addi	GR30, GR30, 8
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

	.type	g_Array,@object         # @g_Array
	.data
	.globl	g_Array
	.align	2
g_Array:
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.size	g_Array, 20


