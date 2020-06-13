	.text
	.file	"./testcase_8slots/local_array.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	movigh	GR2,%hi($main.g_Array)
}
{
	movigl	GR2,%lo($main.g_Array)
}
{
	load32	GR3, GR2, 4
}
{
	nop
}
{
	nop
}
{
	load32	GR3, GR2, 3
	store32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	load32	GR3, GR2, 2
	store32	GR3, GR30, 4
}
{
	nop
}
{
	nop
}
{
	load32	GR3, GR2, 1
	store32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	load32	GR2, GR2, 0
	store32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	movigl	GR2,0
	store32	GR2, GR30, 1
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 0
}                                       # 4-byte Folded Spill
$BB0_1:                                 # %for.body
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
	addi	GR4, GR30, 4
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
	movigl	GR2,0
}
{
	addi	GR30, GR30, 24
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

	.type	$main.g_Array,@object   # @main.g_Array
	.section	.rodata,"a",@progbits
	.align	2
$main.g_Array:
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.size	$main.g_Array, 20


