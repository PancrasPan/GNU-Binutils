	.text
	.file	"./testcase_4slots/loopbranch.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 3
	store32	GR2, GR30, 2
	movigl	GR2,1
}
{
	movigh	GR2,0
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
$BB0_6:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 1
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 2
}
$BB0_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR2, GR30, 1
	movigh	GR2,%hi(arraySize)
}
{
	movigl	GR2,%lo(arraySize)
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	load32	GR3, GR30, 1
}
{
	ge	 GR3, GR2
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
# BB#2:                                 # %for.body
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
	sl	GR5, GR3, GR2
	movigh	GR3,%hi(Array1)
}
{
	movigl	GR3,%lo(Array1)
}
{
	add	GR6, GR3, GR5
	movigh	GR4,%hi(Array2)
}
{
	movigl	GR4,%lo(Array2)
}
{
	add	GR5, GR4, GR5
}
{
	load32	GR5, GR5, 0
}
{
	nop
}
{
	load32	GR6, GR6, 0
}
{
	ge	 GR6, GR5
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
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
{
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
}
{
	add	GR2, GR4, GR2
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
}
{
	store32	GR2, GR30, 2
}
{
	lti	 GR2, 11
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
{
	jmp	$BB0_4
}
{
	nop
}
{
	nop
}
$BB0_5:                                 # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
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
	sl	GR2, GR4, GR2
}
{
	add	GR2, GR3, GR2
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
}
{
	store32	GR2, GR30, 2
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
$BB0_4:                                 # %for.end
{
	load32	GR2, GR30, 1
}
{
	nop
}
{
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
	addi	GR30, GR30, 16
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
$tmp0:                                  # EmittedInsts:79
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


