	.text
	.file	"./testcase_8slots/select.ll"
	.globl	memcmp
	.align	2
	.type	memcmp,@function
memcmp:                                 # @memcmp
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -80
}
{
	load32	GR2, GR30, 22
	store32	GR4, GR30, 18
	store32	GR5, GR30, 17
}
{
	store32	GR2, GR30, 16
	load32	GR2, GR30, 18
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 15
	load32	GR2, GR30, 17
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 14
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 13
	movigl	GR2,5
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 12
	load32	GR2, GR30, 13
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 5
}
{
	store32	GR2, GR30, 13
	movigh	GR2,%hi($memcmp.c)
}
{
	movigl	GR2,%lo($memcmp.c)
	movigl	GR3,8
}
{
	movigh	GR3,0
	load8	GR4, GR2, 1
}
{
	sl	GR4, GR4, GR3
	load8	GR5, GR2, 0
}
{
	or	GR4, GR4, GR5
	load8	GR5, GR2, 3
}
{
	sl	GR3, GR5, GR3
	load8	GR2, GR2, 2
}
{
	or	GR2, GR3, GR2
	movigl	GR3,16
}
{
	movigh	GR3,0
}
{
	sl	GR2, GR2, GR3
}
{
	or	GR2, GR2, GR4
}
{
	store32	GR2, GR30, 11
	movigh	GR2,%hi($memcmp.e)
}
{
	movigl	GR2,%lo($memcmp.e)
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
	store32	GR3, GR30, 10
	load32	GR3, GR2, 3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 9
	load32	GR3, GR2, 2
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 8
	load32	GR3, GR2, 1
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 7
	load32	GR2, GR2, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 6
	movigh	GR2,%hi($memcmp.f)
}
{
	movigl	GR2,%lo($memcmp.f)
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
	store32	GR3, GR30, 5
	load32	GR3, GR2, 3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 4
	load32	GR3, GR2, 2
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 3
	load32	GR3, GR2, 1
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 2
	load32	GR2, GR2, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 1
}
{
	load32	GR2, GR30, 3
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 3
}
{
	store32	GR2, GR30, 10
	load8	GR2, GR30, 44
}
{
	addi	GR2, GR2, 1
}
{
	store8	GR2, GR30, 44
}
$BB0_1:                                 # %while.cond
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 16
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, -1
}
{
	store32	GR3, GR30, 16
}
{
	eqi	 GR2, 0
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
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 15
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 1
}
{
	store32	GR3, GR30, 15
}
{
	load8	GR2, GR2, 0
	load32	GR3, GR30, 14
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, 1
}
{
	store32	GR4, GR30, 14
}
{
	load8	GR3, GR3, 0
}
{
	eq	 GR2, GR3
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
# BB#3:                                 # %if.then
{
	load32	GR2, GR30, 14
}
{
	nop
}
{
	nop
}
{
	load8	GR2, GR2, -1
	load32	GR3, GR30, 15
}
{
	nop
}
{
	nop
}
{
	load8	GR3, GR3, -1
}
{
	ge	 GR3, GR2
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
# BB#4:                                 # %cond.true
{
	load32	GR2, GR30, 13
}
{
	nop
}
{
	jmp	$BB0_7
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %while.end
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	jmp	$BB0_7
}
{
	nop
}
{
	nop
}
$BB0_5:                                 # %cond.false
{
	load32	GR2, GR30, 12
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %return
{
	store32	GR2, GR30, 19
}
{
	load32	GR2, GR30, 19
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
	.size	memcmp, ($tmp0)-memcmp

	.type	$memcmp.c,@object       # @memcmp.c
	.section	.rodata.cst4,"aM",@progbits,4
$memcmp.c:
	.ascii	"abcd"
	.size	$memcmp.c, 4

	.type	memcmp.d,@object        # @memcmp.d
	.section	.rodata,"a",@progbits
memcmp.d:
	.ascii	"abcd"
	.size	memcmp.d, 4

	.type	$memcmp.e,@object       # @memcmp.e
	.align	2
$memcmp.e:
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.size	$memcmp.e, 20

	.type	$memcmp.f,@object       # @memcmp.f
	.align	2
$memcmp.f:
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.size	$memcmp.f, 20


