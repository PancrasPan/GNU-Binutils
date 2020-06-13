	.text
	.file	"./c_standard_lib-master/MATH/COSH.ll"
	.globl	cosh
	.align	2
	.type	cosh,@function
cosh:                                   # @cosh
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -64
}
{
	store32	GR31, GR30, 15
	store32	GR29, GR30, 14
}
{
	store32	GR20, GR30, 13
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
	jmp	$BB0_13
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
	movigh	GR2,16368
}
{
	store32	GR2, GR30, 7
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	jmp	$BB0_13
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
}
{
	jmp	$BB0_12
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %sw.default
{
	movigl	GR19,0
}
{
	movigh	GR19,0
}
{
	store32	GR19, GR30, 3
}
{
	store32	GR19, GR30, 2
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
	store32	GR19, GR30, 3
}
{
	store32	GR19, GR30, 2
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
	neq	 GR2, GR19
}
{
	or	GR2, GR2, GR18
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
# BB#7:                                 # %if.then
{
	load32	GR2, GR30, 5
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 3
}
{
	load32	GR2, GR30, 4
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 2
	movigl	GR4,0
}
{
	movigh	GR4,0
	movigl	GR5,0
}
{
	movigh	GR5,-32768
}
{
	call	__subdf3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 5
}
{
	store32	GR2, GR30, 4
}
$BB0_8:                                 # %if.end
{
	addi	GR4, GR30, 16
	movigl	GR16,-1
}
{
	movigh	GR16,-1
}
{
	movg2g	GR5,GR16
}
{
	call	_Exp
}
{
	nop
}
{
	nop
}
{
	lt	 GR2, GR19
}
{
	jc	 $BB0_10
}
{
	nop
}
{
	nop
}
# BB#9:                                 # %if.then8
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
}
{
	jmp	$BB0_12
}
{
	nop
}
{
	nop
}
$BB0_10:                                # %if.else
{
	movigh	GR2,%hi(_Xbig)
}
{
	movigl	GR2,%lo(_Xbig)
}
{
	load32	GR20, GR2, 1
}
{
	nop
}
{
	nop
}
{
	store32	GR20, GR30, 3
}
{
	load32	GR29, GR2, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR29, GR30, 2
}
{
	load32	GR17, GR30, 4
}
{
	nop
}
{
	load32	GR18, GR30, 5
}
{
	nop
}
{
	movg2g	GR4,GR17
}
{
	movg2g	GR5,GR18
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
	store32	GR20, GR30, 3
}
{
	store32	GR29, GR30, 2
	gt	 GR2, GR16
}
{
	movg2g	GR4,GR17
}
{
	movg2g	GR5,GR18
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
	neq	 GR2, GR19
}
{
	or	GR2, GR2, GR16
}
{
	jc	 $BB0_12
}
{
	nop
}
{
	nop
}
# BB#11:                                # %if.then11
{
	load32	GR16, GR30, 5
}
{
	nop
}
{
	nop
}
{
	store32	GR16, GR30, 3
}
{
	load32	GR17, GR30, 4
}
{
	nop
}
{
	nop
}
{
	store32	GR17, GR30, 2
	movigl	GR4,0
}
{
	movigh	GR4,0
	movigl	GR5,0
}
{
	movigh	GR5,16336
}
{
	call	__divdf3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 3
}
{
	store32	GR2, GR30, 2
}
{
	movg2g	GR4,GR17
}
{
	movg2g	GR5,GR16
}
{
	call	__adddf3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 5
}
{
	store32	GR2, GR30, 4
}
$BB0_12:                                # %if.end13
{
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
$BB0_13:                                # %return
{
	store32	GR2, GR30, 6
}
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
	load32	GR20, GR30, 13
	load32	GR29, GR30, 14
}
{
	load32	GR31, GR30, 15
	addi	GR30, GR30, 64
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
	.size	cosh, ($tmp0)-cosh


