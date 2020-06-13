	.text
	.file	"./testcase_8slots/sumarray.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	movg2g	GR3,GR2
}
{
	store32	GR3, GR30, 3
	store32	GR2, GR30, 2
}
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR4,2
	load32	GR2, GR30, 2
	load32	GR3, GR30, 3
}
{
	movigh	GR4,0
}
{
	sl	GR4, GR3, GR4
	movigh	GR5,%hi(g_Array)
}
{
	movigl	GR5,%lo(g_Array)
}
{
	add	GR4, GR5, GR4
}
{
	load32	GR4, GR4, 0
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR4, GR2
	addi	GR3, GR3, 1
}
{
	neqi	 GR3, 5
}
{
	movg2g	GR5,GR2
}
{
	store32	GR2, GR30, 1
	store32	GR5, GR30, 2
}
{
	store32	GR3, GR30, 3
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
$BB0_2:                                 # %for.end
{
	addi	GR30, GR30, 16
	load32	GR2, GR30, 1
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


