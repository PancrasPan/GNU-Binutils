	.text
	.file	"./testcase_8slots/loopbranch.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -40
}
{
	movigh	GR2,%hi(arraySize)
}
{
	movigl	GR2,%lo(arraySize)
}
{
	movigl	GR3,2
	load32	GR2, GR2, 0
}
{
	movigh	GR3,0
}
{
	lt	 GR2, GR3
	movigl	GR3,0
}
{
	movigh	GR3,0
	movigl	GR4,1
}
{
	movigh	GR4,0
	store32	GR3, GR30, 9
}
{
	store32	GR4, GR30, 8
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_6
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %for.body.lr.ph
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
}
{
	nop
}
{
	store32	GR3, GR30, 7
	store32	GR4, GR30, 6
}
{
	store32	GR2, GR30, 5
}                                       # 4-byte Folded Spill
$BB0_2:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR4,2
	load32	GR2, GR30, 5
	load32	GR3, GR30, 7
}
{
	movigh	GR4,0
}
{
	sl	GR4, GR3, GR4
	movigh	GR5,%hi(Array1)
}
{
	movigl	GR5,%lo(Array1)
}
{
	add	GR5, GR5, GR4
	movigh	GR6,%hi(Array2)
}
{
	movigl	GR6,%lo(Array2)
}
{
	add	GR4, GR6, GR4
}
{
	load32	GR4, GR4, 0
}
{
	nop
}
{
	load32	GR5, GR5, 0
}
{
	ge	 GR5, GR4
	store32	GR2, GR30, 4
	store32	GR3, GR30, 3
}
{
	store32	GR4, GR30, 2
	store32	GR5, GR30, 1
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
$BB0_3:                                 # %if.then
                                        #   in Loop: Header=BB0_2 Depth=1
{
	load32	GR2, GR30, 2
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 4
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	add	GR4, GR2, GR3
}
{
	lti	 GR4, 11
}
{
	movg2g	GR6,GR4
}
{
	load32	GR7, GR30, 3
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR7, GR30, 8
	store32	GR4, GR30, 9
}
{
	store32	GR6, GR30, 0
}                                       # 4-byte Folded Spill
{
	jnc	 $BB0_6
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
$BB0_4:                                 # %if.else
                                        #   in Loop: Header=BB0_2 Depth=1
{
	load32	GR2, GR30, 1
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 4
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	add	GR4, GR2, GR3
}
{
	store32	GR4, GR30, 0
}                                       # 4-byte Folded Spill
$BB0_5:                                 # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
{
	load32	GR2, GR30, 0
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, 2
	load32	GR5, GR30, 6
}
{
	lt	 GR4, GR5
	movg2g	GR7,GR4
}
{
	movg2g	GR8,GR2
}
{
	store32	GR4, GR30, 8
	store32	GR8, GR30, 5
}
{
	store32	GR2, GR30, 9
	store32	GR7, GR30, 7
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
	load32	GR2, GR30, 9
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 8
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR3
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


