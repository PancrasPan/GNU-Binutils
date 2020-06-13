	.text
	.file	"./testcase_8slots/emptyblockinO3.ll"
	.globl	fir
	.align	2
	.type	fir,@function
fir:                                    # @fir
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -80
}
{
	movigh	GR2,%hi(nSamples)
}
{
	movigl	GR2,%lo(nSamples)
}
{
	movigl	GR3,1
	load32	GR2, GR2, 0
}
{
	movigh	GR3,0
}
{
	lt	 GR2, GR3
	store32	GR2, GR30, 19
	store32	GR4, GR30, 18
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
	load32	GR4, GR30, 19
	store32	GR2, GR30, 17
}
{
	store32	GR3, GR30, 16
	store32	GR4, GR30, 15
}
{
	store32	GR5, GR30, 14
}                                       # 4-byte Folded Spill
{
	jmp	$BB0_4
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %while.cond1.while.cond.loopexit_crit_edge
                                        #   in Loop: Header=BB0_4 Depth=1
{
	load32	GR2, GR30, 13
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 12
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	load32	GR4, GR30, 11
	store32	GR2, GR3, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 10
}                                       # 4-byte Folded Spill
$BB0_3:                                 # %while.cond.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
{
	movigl	GR3,1
	load32	GR2, GR30, 10
}
{
	movigh	GR3,0
	load32	GR4, GR30, 9
}
{
	lt	 GR4, GR3
	movg2g	GR5,GR2
}
{
	store32	GR5, GR30, 14
	store32	GR4, GR30, 15
}
{
	store32	GR2, GR30, 18
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_7
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %while.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
{
	load32	GR2, GR30, 14
	load32	GR3, GR30, 15
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, -1
	load32	GR4, GR30, 16
}
{
	eqi	 GR4, 0
}
{
	movg2g	GR6,GR2
}
{
	store32	GR2, GR30, 8
	store32	GR3, GR30, 9
}
{
	store32	GR6, GR30, 10
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_3
}
{
	nop
}
{
	nop
}
$BB0_5:                                 # %while.body3.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=1
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 9
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
	load32	GR6, GR30, 8
}
{
	nop
}
{
	store32	GR2, GR30, 12
	store32	GR6, GR30, 7
}
{
	store32	GR5, GR30, 6
	store32	GR4, GR30, 5
}
$BB0_6:                                 # %while.body3
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR2, GR30, 5
	load32	GR3, GR30, 7
}
{
	load32	GR4, GR30, 6
	load32	GR5, GR30, 9
}
{
	nop
}
{
	nop
}
{
	sub	GR6, GR5, GR2
	movigl	GR7,2
}
{
	movigh	GR7,0
}
{
	sl	GR6, GR6, GR7
	movigh	GR8,%hi(x)
}
{
	movigl	GR8,%lo(x)
}
{
	add	GR6, GR8, GR6
	sl	GR7, GR2, GR7
	movigh	GR8,%hi(h)
}
{
	movigl	GR8,%lo(h)
}
{
	add	GR7, GR8, GR7
}
{
	load32	GR7, GR7, 0
}
{
	nop
}
{
	load32	GR6, GR6, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR6, GR6, GR7
}
{
	add	GR4, GR4, GR6
	addi	GR2, GR2, 1
	load32	GR6, GR30, 17
}
{
	eq	 GR2, GR6
	add	GR3, GR4, GR3
	movg2g	GR8,GR4
}
{
	movg2g	GR9,GR3
}
{
	store32	GR4, GR30, 13
	store32	GR2, GR30, 5
}
{
	store32	GR9, GR30, 7
	store32	GR3, GR30, 11
}
{
	store32	GR8, GR30, 6
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
{
	jmp	$BB0_6
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
	load32	GR2, GR30, 18
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
	store32	GR2, GR30, 4
}
{
	store32	GR4, GR30, 3
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
	load32	GR3, GR30, 3
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
	load32	GR4, GR30, 4
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
	store32	GR2, GR30, 2
	store32	GR6, GR30, 1
}
{
	store32	GR5, GR30, 0
}                                       # 4-byte Folded Spill
$BB0_9:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 0
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 3
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
	load32	GR6, GR30, 2
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
	load32	GR4, GR30, 1
	store32	GR4, GR5, 0
}
{
	lt	 GR2, GR4
	store32	GR2, GR30, 0
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
	addi	GR30, GR30, 80
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
	.size	fir, ($tmp0)-fir

	.type	nSamples,@object        # @nSamples
	.data
	.globl	nSamples
	.align	2
nSamples:
	.4byte	40                      # 0x28
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
	.4byte	4294967261              # 0xffffffdd
	.4byte	4294967077              # 0xffffff25
	.4byte	4294966793              # 0xfffffe09
	.4byte	4294966802              # 0xfffffe12
	.4byte	4294967288              # 0xfffffff8
	.4byte	347                     # 0x15b
	.4byte	19                      # 0x13
	.4byte	4294966948              # 0xfffffea4
	.4byte	26                      # 0x1a
	.4byte	404                     # 0x194
	.4byte	4294967193              # 0xffffff99
	.4byte	4294966811              # 0xfffffe1b
	.4byte	220                     # 0xdc
	.4byte	579                     # 0x243
	.4byte	4294966898              # 0xfffffe72
	.4byte	4294966618              # 0xfffffd5a
	.4byte	663                     # 0x297
	.4byte	774                     # 0x306
	.4byte	4294966223              # 0xfffffbcf
	.4byte	4294966437              # 0xfffffca5
	.4byte	1769                    # 0x6e9
	.4byte	925                     # 0x39d
	.4byte	4294964017              # 0xfffff331
	.4byte	4294966328              # 0xfffffc38
	.4byte	10363                   # 0x287b
	.4byte	17367                   # 0x43d7
	.4byte	10363                   # 0x287b
	.4byte	4294966328              # 0xfffffc38
	.4byte	4294964017              # 0xfffff331
	.4byte	925                     # 0x39d
	.4byte	1769                    # 0x6e9
	.4byte	4294966437              # 0xfffffca5
	.4byte	4294966223              # 0xfffffbcf
	.4byte	774                     # 0x306
	.4byte	663                     # 0x297
	.4byte	4294966618              # 0xfffffd5a
	.4byte	4294966898              # 0xfffffe72
	.4byte	579                     # 0x243
	.4byte	220                     # 0xdc
	.4byte	4294966811              # 0xfffffe1b
	.4byte	4294967193              # 0xffffff99
	.4byte	404                     # 0x194
	.4byte	26                      # 0x1a
	.4byte	4294966948              # 0xfffffea4
	.4byte	19                      # 0x13
	.4byte	347                     # 0x15b
	.4byte	4294967288              # 0xfffffff8
	.4byte	4294966802              # 0xfffffe12
	.4byte	4294966793              # 0xfffffe09
	.4byte	4294967077              # 0xffffff25
	.4byte	4294967261              # 0xffffffdd
	.size	h, 204

	.type	x,@object               # @x
	.data
	.globl	x
	.align	2
x:
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.4byte	6                       # 0x6
	.4byte	7                       # 0x7
	.4byte	8                       # 0x8
	.4byte	9                       # 0x9
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.4byte	6                       # 0x6
	.4byte	7                       # 0x7
	.4byte	8                       # 0x8
	.4byte	9                       # 0x9
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.4byte	6                       # 0x6
	.4byte	7                       # 0x7
	.4byte	8                       # 0x8
	.4byte	9                       # 0x9
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.4byte	6                       # 0x6
	.4byte	7                       # 0x7
	.4byte	8                       # 0x8
	.4byte	9                       # 0x9
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.4byte	6                       # 0x6
	.4byte	7                       # 0x7
	.4byte	8                       # 0x8
	.4byte	9                       # 0x9
	.4byte	0                       # 0x0
	.size	x, 204

	.type	y,@object               # @y
	.comm	y,204,4
	.type	w,@object               # @w
	.comm	w,204,4

