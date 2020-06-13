	.text
	.file	"./testcase_8slots/argument_fir.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -448
}
{
	store32	GR31, GR30, 111
}                                       # 4-byte Folded Spill
{
	movg2g	GR2,GR30
	movigl	GR3,204
}
{
	movigh	GR3,0
}
{
	movigh	GR2,%hi($main.x)
	store32	GR3, GR2, 2
}
{
	addi	GR4, GR30, 240
	movigl	GR2,%lo($main.x)
}
{
	store32	GR4, GR30, 8
}                                       # 4-byte Folded Spill
{
	movg2g	GR5,GR2
}
{
	store32	GR3, GR30, 7
}                                       # 4-byte Folded Spill
{
	call	memcpy
}
{
	nop
}
{
	nop
}
{
	movg2g	GR2,GR30
}
{
	load32	GR3, GR30, 7
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	addi	GR2, GR30, 36
	movigl	GR4,0
	store32	GR3, GR2, 2
}
{
	movigh	GR4,0
}
{
	store32	GR4, GR30, 6
}                                       # 4-byte Folded Spill
{
	movg2g	GR4,GR2
}
{
	load32	GR5, GR30, 6
}                                       # 4-byte Folded Reload
{
	nop
}
{
	store32	GR2, GR30, 5
}                                       # 4-byte Folded Spill
{
	call	memset
}
{
	nop
}
{
	nop
}
{
	movg2g	GR2,GR30
}
{
	load32	GR3, GR30, 5
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	movigh	GR2,%hi(main.h)
	store32	GR3, GR2, 2
}
{
	movigl	GR2,%lo(main.h)
}
{
	movg2g	GR4,GR2
}
{
	load32	GR5, GR30, 8
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	call	fir
}
{
	nop
}
{
	nop
}
{
	addi	GR30, GR30, 448
	load32	GR2, GR30, 6
	load32	GR31, GR30, 111
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

	.globl	fir
	.align	2
	.type	fir,@function
fir:                                    # @fir
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
}
{
	movigh	GR3,%hi(nSamples)
	load32	GR2, GR30, 10
}
{
	movigl	GR3,%lo(nSamples)
}
{
	load32	GR3, GR3, 0
}
{
	lti	 GR3, 1
}
{
	store32	GR5, GR30, 7
	store32	GR4, GR30, 6
}
{
	store32	GR2, GR30, 5
	store32	GR3, GR30, 4
}
{
	jnc	 $BB1_2
}
{
	nop
}
{
	nop
}
{
	jmp	$BB1_4
}
{
	nop
}
{
	nop
}
$BB1_1:                                 # %while.cond.loopexit
                                        #   in Loop: Header=BB1_2 Depth=1
{
	movigl	GR2,1
}
{
	movigh	GR2,0
	load32	GR3, GR30, 3
}
{
	nop
}
{
	lt	 GR3, GR2
	store32	GR3, GR30, 4
}
{
	jc	 $BB1_4
}
{
	nop
}
{
	nop
}
$BB1_2:                                 # %while.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
{
	load32	GR2, GR30, 4
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, -1
	movigl	GR3,2
}
{
	movigh	GR3,0
}
{
	sl	GR3, GR2, GR3
	load32	GR4, GR30, 5
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
	movigl	GR5,0
}
{
	movigh	GR5,0
	store32	GR2, GR30, 3
	store32	GR3, GR30, 2
}
{
	store32	GR5, GR30, 1
}                                       # 4-byte Folded Spill
$BB1_3:                                 # %while.body3
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR2, GR30, 1
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
	load32	GR6, GR30, 7
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR6, GR4
	sl	GR5, GR2, GR5
	load32	GR7, GR30, 6
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
	load32	GR5, GR5, 0
}
{
	nop
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
	mul32	GR4, GR4, GR5
	load32	GR5, GR30, 2
}
{
	nop
}
{
	nop
}
{
	load32	GR8, GR5, 0
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR8, GR4
}
{
	addi	GR2, GR2, 1
	store32	GR4, GR5, 0
}
{
	eqi	 GR2, 16
}
{
	store32	GR2, GR30, 1
}                                       # 4-byte Folded Spill
{
	jc	 $BB1_1
}
{
	nop
}
{
	nop
}
{
	jmp	$BB1_3
}
{
	nop
}
{
	nop
}
$BB1_4:                                 # %while.end7
{
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
$tmp1:
	.size	fir, ($tmp1)-fir

	.type	nSamples,@object        # @nSamples
	.data
	.globl	nSamples
	.align	2
nSamples:
	.4byte	40                      # 0x28
	.size	nSamples, 4

	.type	nTaps,@object           # @nTaps
	.section	.rodata,"a",@progbits
	.globl	nTaps
	.align	2
nTaps:
	.4byte	16                      # 0x10
	.size	nTaps, 4

	.type	main.h,@object          # @main.h
	.align	2
main.h:
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
	.size	main.h, 204

	.type	$main.x,@object         # @main.x
	.align	2
$main.x:
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
	.size	$main.x, 204


