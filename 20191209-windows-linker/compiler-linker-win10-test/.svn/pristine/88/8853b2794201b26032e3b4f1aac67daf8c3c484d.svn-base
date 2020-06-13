	.text
	.file	"./testcase_4slots/local_array.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 7
	movigh	GR3,%hi($main.g_Array)
}
{
	movigl	GR3,%lo($main.g_Array)
}
{
	load32	GR4, GR3, 4
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 6
	load32	GR4, GR3, 3
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 5
	load32	GR4, GR3, 2
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 4
	load32	GR4, GR3, 1
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 3
	load32	GR3, GR3, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 2
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
$BB0_2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 1
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	addi	GR3, GR30, 8
}
{
	add	GR2, GR3, GR2
}
{
	load32	GR3, GR2, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, 1
}
{
	store32	GR3, GR2, 0
	load32	GR2, GR30, 1
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
$BB0_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR2, GR30, 1
}
{
	load32	GR2, GR30, 1
}
{
	nop
}
{
	lti	 GR2, 5
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
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	addi	GR30, GR30, 32
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
$tmp0:                                  # EmittedInsts:49
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


