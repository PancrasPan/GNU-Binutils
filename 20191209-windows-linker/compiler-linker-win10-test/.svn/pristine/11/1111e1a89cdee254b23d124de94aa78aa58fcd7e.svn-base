	.text
	.file	"./testcase_8slots/global_fir.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -72
}
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	movigh	GR3,%hi(nSamples)
}
{
	movigl	GR3,%lo(nSamples)
}
{
	movigl	GR4,1
	load32	GR3, GR3, 0
}
{
	movigh	GR4,0
}
{
	lt	 GR3, GR4
	store32	GR2, GR30, 17
	store32	GR3, GR30, 16
}
{
	jc	 $BB0_7
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %while.cond1.preheader.lr.ph
{
	movigh	GR2,%hi(nTaps)
}
{
	movigl	GR2,%lo(nTaps)
}
{
	movigl	GR3,0
	load32	GR2, GR2, 0
}
{
	movigh	GR3,0
}
{
	gt	 GR2, GR3
	load32	GR5, GR30, 16
}
{
	nop
}
{
	store32	GR2, GR30, 15
	store32	GR5, GR30, 14
}
{
	store32	GR4, GR30, 13
	store32	GR3, GR30, 12
}
$BB0_2:                                 # %while.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
{
	load32	GR2, GR30, 12
	load32	GR3, GR30, 14
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, -1
	load32	GR4, GR30, 13
}
{
	eqi	 GR4, 0
}
{
	store32	GR2, GR30, 11
	store32	GR3, GR30, 10
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
$BB0_3:                                 # %while.body3.lr.ph
                                        #   in Loop: Header=BB0_2 Depth=1
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 10
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	movigh	GR4,%hi(y)
}
{
	movigl	GR4,%lo(y)
}
{
	add	GR2, GR4, GR2
	movigl	GR4,0
}
{
	movigh	GR4,0
	load32	GR5, GR2, 0
}
{
	nop
}
{
	store32	GR2, GR30, 9
	store32	GR5, GR30, 8
}
{
	store32	GR4, GR30, 7
}                                       # 4-byte Folded Spill
$BB0_4:                                 # %while.body3
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR2, GR30, 7
	load32	GR3, GR30, 8
}
{
	load32	GR4, GR30, 10
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	sub	GR5, GR4, GR2
	movigl	GR6,2
}
{
	movigh	GR6,0
}
{
	sl	GR5, GR5, GR6
	movigh	GR7,%hi(x)
}
{
	movigl	GR7,%lo(x)
}
{
	add	GR5, GR7, GR5
	sl	GR6, GR2, GR6
	movigh	GR7,%hi(h)
}
{
	movigl	GR7,%lo(h)
}
{
	add	GR6, GR7, GR6
}
{
	load32	GR6, GR6, 0
}
{
	nop
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
	mul32	GR5, GR5, GR6
}
{
	add	GR3, GR3, GR5
	addi	GR2, GR2, 1
	load32	GR5, GR30, 15
}
{
	neq	 GR2, GR5
	movg2g	GR7,GR3
}
{
	store32	GR3, GR30, 6
	store32	GR7, GR30, 8
}
{
	store32	GR2, GR30, 7
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_4
}
{
	nop
}
{
	nop
}
$BB0_5:                                 # %while.cond1.while.end_crit_edge
                                        #   in Loop: Header=BB0_2 Depth=1
{
	load32	GR2, GR30, 6
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 9
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR2, GR3, 0
}
$BB0_6:                                 # %while.end
                                        #   in Loop: Header=BB0_2 Depth=1
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 10
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	movigh	GR4,%hi(y)
}
{
	movigl	GR4,%lo(y)
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
	load32	GR4, GR30, 11
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR4
	lti	 GR3, 1
}
{
	movg2g	GR6,GR2
}
{
	store32	GR3, GR30, 14
	store32	GR6, GR30, 12
}
{
	store32	GR2, GR30, 17
}                                       # 4-byte Folded Spill
{
	jnc	 $BB0_2
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %while.end9
{
	movigh	GR3,%hi(nTaps)
	load32	GR2, GR30, 17
}
{
	movigl	GR3,%lo(nTaps)
}
{
	movigl	GR4,1
	load32	GR3, GR3, 0
}
{
	movigh	GR4,0
}
{
	lt	 GR3, GR4
	movigh	GR4,%hi(nSamples)
}
{
	movigl	GR4,%lo(nSamples)
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
	addi	GR4, GR4, -1
	store32	GR2, GR30, 5
}
{
	store32	GR4, GR30, 4
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_10
}
{
	nop
}
{
	nop
}
$BB0_8:                                 # %for.body.lr.ph
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 4
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	movigh	GR4,%hi(x)
}
{
	movigl	GR4,%lo(x)
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
	load32	GR4, GR30, 5
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	sub	GR2, GR2, GR4
	movigl	GR5,1
}
{
	movigh	GR5,0
}
{
	sl	GR2, GR2, GR5
	movigl	GR5,0
}
{
	movigh	GR5,0
	movigh	GR6,%hi(nTaps)
}
{
	movigl	GR6,%lo(nTaps)
}
{
	load32	GR6, GR6, 0
}
{
	nop
}
{
	store32	GR2, GR30, 3
	store32	GR6, GR30, 2
}
{
	store32	GR5, GR30, 1
}                                       # 4-byte Folded Spill
$BB0_9:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
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
	sub	GR4, GR3, GR2
	movigl	GR5,2
}
{
	movigh	GR5,0
}
{
	sl	GR4, GR4, GR5
	movigh	GR6,%hi(x)
}
{
	movigl	GR6,%lo(x)
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
	load32	GR6, GR30, 3
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	mul32	GR4, GR6, GR4
	sl	GR5, GR2, GR5
	movigh	GR7,%hi(w)
}
{
	movigl	GR7,%lo(w)
}
{
	add	GR5, GR7, GR5
}
{
	load32	GR7, GR5, 0
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR4, GR7
}
{
	addi	GR2, GR2, 1
	load32	GR4, GR30, 2
	store32	GR4, GR5, 0
}
{
	lt	 GR2, GR4
	store32	GR2, GR30, 1
}
{
	jc	 $BB0_9
}
{
	nop
}
{
	nop
}
$BB0_10:                                # %for.end
{
	movigl	GR2,0
}
{
	addi	GR30, GR30, 72
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

	.type	nSamples,@object        # @nSamples
	.data
	.globl	nSamples
	.align	2
nSamples:
	.4byte	16                      # 0x10
	.size	nSamples, 4

	.type	nTaps,@object           # @nTaps
	.globl	nTaps
	.align	2
nTaps:
	.4byte	16                      # 0x10
	.size	nTaps, 4

	.type	h,@object               # @h
	.section	.rodata,"a",@progbits
	.globl	h
	.align	2
h:
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.size	h, 64

	.type	x,@object               # @x
	.data
	.globl	x
	.align	2
x:
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.size	x, 64

	.type	y,@object               # @y
	.comm	y,64,4
	.type	w,@object               # @w
	.comm	w,64,4

