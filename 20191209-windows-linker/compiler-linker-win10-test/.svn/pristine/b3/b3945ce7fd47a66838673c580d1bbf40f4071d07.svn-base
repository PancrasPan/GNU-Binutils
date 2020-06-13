	.text
	.file	"./c_standard_lib-master/MATH/FABS.ll"
	.globl	fabs
	.align	2
	.type	fabs,@function
fabs:                                   # @fabs
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -56
}
{
	store32	GR31, GR30, 13
	store32	GR19, GR30, 12
}
{
	store32	GR18, GR30, 11
	store32	GR17, GR30, 10
}
{
	store32	GR16, GR30, 9
	store32	GR5, GR30, 5
}
{
	store32	GR4, GR30, 4
	addi	GR4, GR30, 16
}
{
	call	_Dtest
}
{
	nop
}
{
	nop
}
{
	eqi	 GR2, 0
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
# BB#1:                                 # %entry
{
	eqi	 GR2, 1
}
{
	jnc	 $BB0_2
}
{
	nop
}
{
	nop
}
# BB#4:                                 # %sw.bb1
{
	movigh	GR2,%hi(errno)
}
{
	movigl	GR2,%lo(errno)
	movigl	GR3,34
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 0
	movigh	GR2,%hi(_Inf)
}
{
	movigl	GR2,%lo(_Inf)
}
{
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
}
{
	jmp	$BB0_10
}
{
	nop
}
{
	nop
}
$BB0_5:                                 # %sw.bb2
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 7
}
{
	store32	GR2, GR30, 6
}
{
	jmp	$BB0_10
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %entry
{
	neqi	 GR2, 2
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
# BB#3:                                 # %sw.bb
{
	movigh	GR2,%hi(errno)
}
{
	movigl	GR2,%lo(errno)
	movigl	GR3,33
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 0
	load32	GR2, GR30, 4
	load32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 7
}
{
	store32	GR2, GR30, 6
}
{
	jmp	$BB0_10
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %sw.default
{
	movigl	GR18,0
}
{
	movigh	GR18,0
}
{
	store32	GR18, GR30, 3
}
{
	store32	GR18, GR30, 2
}
{
	load32	GR16, GR30, 4
}
{
	nop
}
{
	load32	GR17, GR30, 5
}
{
	nop
}
{
	movg2g	GR4,GR16
}
{
	movg2g	GR5,GR17
}
{
	call	__gedf2
}
{
	nop
}
{
	nop
}
{
	store32	GR18, GR30, 3
}
{
	store32	GR18, GR30, 2
	movigl	GR3,-1
}
{
	movigh	GR3,-1
}
{
	gt	 GR2, GR3
	movg2g	GR4,GR16
}
{
	movg2g	GR5,GR17
}
{
	call	__unorddf2
}
{
	nop
}
{
	nop
}
{
	neq	 GR2, GR18
}
{
	or	GR2, GR2, GR19
}
{
	jc	 $BB0_8
}
{
	nop
}
{
	nop
}
# BB#7:                                 # %cond.true
{
	movigl	GR2,0
}
{
	movigh	GR2,-32768
	load32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	xor	GR2, GR3, GR2
}
{
	jmp	$BB0_9
}
{
	nop
}
{
	nop
}
$BB0_8:                                 # %cond.false
{
	load32	GR2, GR30, 5
}
{
	nop
}
{
	nop
}
$BB0_9:                                 # %cond.end
{
	load32	GR3, GR30, 4
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 6
}
{
	store32	GR2, GR30, 7
}
$BB0_10:                                # %return
{
	load32	GR2, GR30, 6
	load32	GR3, GR30, 7
}
{
	load32	GR16, GR30, 9
	load32	GR17, GR30, 10
}
{
	load32	GR18, GR30, 11
	load32	GR19, GR30, 12
}
{
	load32	GR31, GR30, 13
	addi	GR30, GR30, 56
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
	.size	fabs, ($tmp0)-fabs


