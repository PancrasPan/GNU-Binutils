	.text
	.file	".\\HWlooptest\\succ\\loopbranch0.ll"
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
	movigl	GR3,1
}
{
	movigh	GR3,0
	movigh	GR4,%hi(arraySize)
}
{
	movigl	GR4,%lo(arraySize)
}
{
	load32	GR4, GR4, 0
	movigl	GR5,2
}
{
	movigh	GR5,0
}
{
	lt	 GR4, GR5
}
{
	jc	 $BB0_6
}
{
	nop
}
{
	nop
}
# BB#1:
{
	movigh	GR5,%hi(Array2)
}
{
	movigl	GR5,%lo(Array2)
}
{
	addi	GR5, GR5, 4
	movigh	GR6,%hi(Array1)
}
{
	movigl	GR6,%lo(Array1)
}
{
	addi	GR6, GR6, 4
}
$BB0_2:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR7, GR5, 0
}
{
	nop
}
{
	load32	GR8, GR6, 0
}
{
	ge	 GR8, GR7
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
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_2 Depth=1
{
	add	GR2, GR7, GR2
}
{
	lti	 GR2, 11
}
{
	jc	 $BB0_5
}
{
	nop
}
{
	nop
}
{
	jmp	$BB0_6
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %if.else
                                        #   in Loop: Header=BB0_2 Depth=1
{
	add	GR2, GR8, GR2
}
$BB0_5:                                 # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
{
	addi	GR6, GR6, 8
	addi	GR5, GR5, 8
}
{
	addi	GR3, GR3, 2
}
{
	lt	 GR3, GR4
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
$BB0_6:                                 # %for.end
{
	add	GR2, GR2, GR3
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

	.type	Array1,@object          # @Array1
	.data
	.globl	Array1
	.align	2
Array1:
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.4byte	6                       # 0x6
	.4byte	7                       # 0x7
	.size	Array1, 28

	.type	Array2,@object          # @Array2
	.globl	Array2
	.align	2
Array2:
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	4                       # 0x4
	.4byte	8                       # 0x8
	.4byte	16                      # 0x10
	.4byte	32                      # 0x20
	.4byte	64                      # 0x40
	.size	Array2, 28

	.type	arraySize,@object       # @arraySize
	.globl	arraySize
	.align	2
arraySize:
	.4byte	7                       # 0x7
	.size	arraySize, 4

	.type	bound,@object           # @bound
	.section	.rodata,"a",@progbits
	.globl	bound
	.align	2
bound:
	.4byte	10                      # 0xa
	.size	bound, 4


