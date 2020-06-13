	.text
	.file	"./c_standard_lib-master/MATH/XASIN.ll"
	.globl	_Asin
	.align	2
	.type	_Asin,@function
_Asin:                                  # @_Asin
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -104
}
{
	store32	GR31, GR30, 25
	store32	GR29, GR30, 24
}
{
	store32	GR20, GR30, 23
	store32	GR19, GR30, 22
}
{
	store32	GR18, GR30, 21
	store32	GR17, GR30, 20
}
{
	store32	GR16, GR30, 19
	load32	GR2, GR30, 28
	store32	GR5, GR30, 15
}
{
	store32	GR4, GR30, 14
	store32	GR2, GR30, 13
	addi	GR4, GR30, 56
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
	store16	GR2, GR30, 14
	movigl	GR2,1
}
{
	movigh	GR2,0
	load16	GR3, GR30, 14
}
{
	lt	 GR3, GR2
}
{
	jc	 $BB0_3
}
{
	nop
}
{
	nop
}
# BB#1:                                 # %if.then
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
	load16	GR2, GR30, 14
}
{
	neqi	 GR2, 2
}
{
	jc	 $BB0_17
}
{
	nop
}
{
	nop
}
# BB#2:                                 # %if.then5
{
	load32	GR2, GR30, 14
	load32	GR3, GR30, 15
}
{
	nop
}
{
	jmp	$BB0_27
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %if.end
{
	movigl	GR16,0
}
{
	movigh	GR16,0
}
{
	store32	GR16, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	load32	GR17, GR30, 14
}
{
	nop
}
{
	load32	GR18, GR30, 15
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
	store32	GR16, GR30, 3
}
{
	store32	GR16, GR30, 2
	movigl	GR19,-1
}
{
	movigh	GR19,-1
}
{
	gt	 GR2, GR19
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
	neq	 GR2, GR16
}
{
	or	GR2, GR2, GR20
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
# BB#4:                                 # %if.then8
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
	store32	GR2, GR30, 3
}
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
	store32	GR3, GR30, 9
}
{
	store32	GR2, GR30, 8
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 13
}
{
	nop
}
{
	nop
}
{
	or	GR2, GR3, GR2
}
{
	store32	GR2, GR30, 13
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
$BB0_5:                                 # %if.else9
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
	store32	GR3, GR30, 9
}
{
	store32	GR2, GR30, 8
}
$BB0_6:                                 # %if.end10
{
	movigh	GR2,%hi(_Rteps)
}
{
	movigl	GR2,%lo(_Rteps)
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
	store32	GR3, GR30, 3
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 2
}
{
	load32	GR4, GR30, 8
}
{
	nop
}
{
	load32	GR5, GR30, 9
}
{
	nop
}
{
	nop
}
{
	call	__ltdf2
}
{
	nop
}
{
	nop
}
{
	lt	 GR2, GR16
}
{
	jc	 $BB0_14
}
{
	nop
}
{
	nop
}
# BB#7:                                 # %if.else14
{
	movigl	GR20,0
}
{
	movigh	GR20,16352
}
{
	store32	GR20, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	load32	GR17, GR30, 8
}
{
	nop
}
{
	load32	GR18, GR30, 9
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
	store32	GR16, GR30, 2
	gt	 GR2, GR19
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
	neq	 GR2, GR16
}
{
	or	GR2, GR2, GR20
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
# BB#8:                                 # %if.then17
{
	load32	GR5, GR30, 9
}
{
	nop
}
{
	nop
}
{
	store32	GR5, GR30, 3
}
{
	load32	GR4, GR30, 8
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 2
}
{
	call	__muldf3
}
{
	nop
}
{
	nop
}
{
	movg2g	GR16,GR2
}
{
	movg2g	GR17,GR3
}
{
	store32	GR17, GR30, 11
}
{
	store32	GR16, GR30, 10
	load32	GR2, GR30, 9
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 6
	load32	GR2, GR30, 8
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 5
	movigl	GR2,4
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 3
	movigh	GR2,%hi(p)
}
{
	movigl	GR2,%lo(p)
}
{
	store32	GR2, GR30, 2
}
{
	movg2g	GR4,GR16
}
{
	movg2g	GR5,GR17
}
{
	call	_Poly
}
{
	nop
}
{
	nop
}
{
	movg2g	GR20,GR2
}
{
	movg2g	GR29,GR3
}
{
	load32	GR5, GR30, 11
	load32	GR4, GR30, 10
	movigl	GR2,5
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 3
	movigh	GR2,%hi(q)
}
{
	movigl	GR2,%lo(q)
}
{
	store32	GR2, GR30, 2
}
{
	call	_Poly
}
{
	nop
}
{
	nop
}
{
	movg2g	GR18,GR2
}
{
	movg2g	GR19,GR3
}
{
	store32	GR17, GR30, 3
}
{
	store32	GR16, GR30, 2
	load32	GR4, GR30, 5
}
{
	nop
}
{
	load32	GR5, GR30, 6
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	call	__muldf3
}
{
	nop
}
{
	nop
}
{
	store32	GR29, GR30, 3
}
{
	store32	GR20, GR30, 2
}
{
	movg2g	GR4,GR2
}
{
	movg2g	GR5,GR3
}
{
	call	__muldf3
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
	store32	GR18, GR30, 2
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
$BB0_10:                                # %if.else22
{
	movigl	GR20,0
}
{
	movigh	GR20,16368
}
{
	store32	GR20, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	load32	GR17, GR30, 8
}
{
	nop
}
{
	load32	GR18, GR30, 9
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
	store32	GR16, GR30, 2
	gt	 GR2, GR19
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
	neq	 GR2, GR16
}
{
	or	GR2, GR2, GR19
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
# BB#11:                                # %if.then25
{
	movigl	GR20,4
}
{
	movigh	GR20,0
	load32	GR2, GR30, 13
}
{
	nop
}
{
	nop
}
{
	or	GR2, GR2, GR20
}
{
	store32	GR2, GR30, 13
	load32	GR2, GR30, 9
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
	load32	GR2, GR30, 8
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 2
	movigl	GR5,0
}
{
	movigh	GR5,16368
	movg2g	GR4,GR16
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
	movigl	GR4,0
}
{
	movigh	GR4,16384
}
{
	store32	GR4, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	movg2g	GR4,GR2
}
{
	movg2g	GR5,GR3
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
	store32	GR3, GR30, 11
}
{
	store32	GR2, GR30, 10
}
{
	load32	GR5, GR30, 11
}
{
	nop
}
{
	load32	GR4, GR30, 10
}
{
	nop
}
{
	nop
}
{
	call	sqrt
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
	store32	GR3, GR30, 9
}
{
	store32	GR2, GR30, 8
}
{
	movg2g	GR4,GR2
}
{
	movg2g	GR5,GR3
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
	movg2g	GR16,GR2
}
{
	movg2g	GR17,GR3
}
{
	store32	GR17, GR30, 9
}
{
	store32	GR16, GR30, 8
	load32	GR18, GR30, 11
	load32	GR19, GR30, 10
}
{
	store32	GR20, GR30, 3
	movigh	GR2,%hi(p)
}
{
	movigl	GR2,%lo(p)
}
{
	store32	GR2, GR30, 2
}
{
	movg2g	GR4,GR19
}
{
	movg2g	GR5,GR18
}
{
	call	_Poly
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 6
	store32	GR3, GR30, 5
	load32	GR5, GR30, 11
	load32	GR4, GR30, 10
	movigl	GR2,5
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 3
	movigh	GR2,%hi(q)
}
{
	movigl	GR2,%lo(q)
}
{
	store32	GR2, GR30, 2
}
{
	call	_Poly
}
{
	nop
}
{
	nop
}
{
	movg2g	GR20,GR2
}
{
	movg2g	GR29,GR3
}
{
	store32	GR18, GR30, 3
}
{
	store32	GR19, GR30, 2
}
{
	movg2g	GR4,GR16
}
{
	movg2g	GR5,GR17
}
{
	call	__muldf3
}
{
	nop
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
	store32	GR4, GR30, 3
	load32	GR4, GR30, 6
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 2
}
{
	movg2g	GR4,GR2
}
{
	movg2g	GR5,GR3
}
{
	call	__muldf3
}
{
	nop
}
{
	nop
}
{
	store32	GR29, GR30, 3
}
{
	store32	GR20, GR30, 2
}
$BB0_9:                                 # %if.end46
{
	movg2g	GR4,GR2
}
{
	movg2g	GR5,GR3
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
	load32	GR4, GR30, 8
}
{
	nop
}
{
	load32	GR5, GR30, 9
}
{
	nop
}
{
	nop
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
	store32	GR3, GR30, 9
}
{
	store32	GR2, GR30, 8
}
{
	jmp	$BB0_14
}
{
	nop
}
{
	nop
}
$BB0_12:                                # %if.else37
{
	store32	GR20, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	load32	GR4, GR30, 8
}
{
	nop
}
{
	load32	GR5, GR30, 9
}
{
	nop
}
{
	nop
}
{
	call	__nedf2
}
{
	nop
}
{
	nop
}
{
	neqi	 GR2, 0
}
{
	jc	 $BB0_16
}
{
	nop
}
{
	nop
}
# BB#13:                                # %if.then40
{
	movigl	GR2,4
}
{
	movigh	GR2,0
	load32	GR3, GR30, 13
}
{
	nop
}
{
	nop
}
{
	or	GR2, GR3, GR2
}
{
	store32	GR2, GR30, 13
	store32	GR16, GR30, 9
}
{
	store32	GR16, GR30, 8
}
$BB0_14:                                # %if.end46
{
	load32	GR2, GR30, 13
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, -1
}
{
	lti	 GR2, 7
}
{
	jnc	 $BB0_18
}
{
	nop
}
{
	nop
}
# BB#15:                                # %if.end46
{
	movigl	GR3,2
}
{
	movigh	GR3,0
}
{
	sl	GR2, GR2, GR3
	movigh	GR3,%hi($JTI0_0)
}
{
	movigl	GR3,%lo($JTI0_0)
}
{
	add	GR2, GR2, GR3
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	nop
}
{
	jmpr	GR2
}
{
	nop
}
{
	nop
}
# BB#19:                                # %sw.bb47
{
	load32	GR2, GR30, 9
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
	load32	GR2, GR30, 8
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 2
	movigl	GR16,11544
}
{
	movigh	GR16,21572
	movigl	GR17,8699
}
{
	movigh	GR17,16361
}
{
	jmp	$BB0_25
}
{
	nop
}
{
	nop
}
$BB0_18:                                # %sw.bb
{
	load32	GR2, GR30, 8
	load32	GR3, GR30, 9
}
{
	nop
}
{
	jmp	$BB0_27
}
{
	nop
}
{
	nop
}
$BB0_20:                                # %sw.bb50
{
	load32	GR2, GR30, 9
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
	load32	GR2, GR30, 8
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
	jmp	$BB0_27
}
{
	nop
}
{
	nop
}
$BB0_21:                                # %sw.bb52
{
	movigl	GR16,8699
}
{
	movigh	GR16,16361
}
{
	jmp	$BB0_22
}
{
	nop
}
{
	nop
}
$BB0_23:                                # %sw.bb55
{
	movigl	GR16,8699
}
{
	movigh	GR16,-16407
}
$BB0_22:                                # %return
{
	store32	GR16, GR30, 3
	movigl	GR17,11544
}
{
	movigh	GR17,21572
}
{
	store32	GR17, GR30, 2
}
{
	load32	GR4, GR30, 8
}
{
	nop
}
{
	load32	GR5, GR30, 9
}
{
	nop
}
{
	nop
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
	store32	GR16, GR30, 3
}
{
	store32	GR17, GR30, 2
}
{
	jmp	$BB0_26
}
{
	nop
}
{
	nop
}
$BB0_24:                                # %sw.bb58
{
	load32	GR2, GR30, 9
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
	load32	GR2, GR30, 8
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 2
	movigl	GR16,11544
}
{
	movigh	GR16,21572
	movigl	GR17,8699
}
{
	movigh	GR17,16377
}
$BB0_25:                                # %return
{
	movg2g	GR4,GR16
}
{
	movg2g	GR5,GR17
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
	store32	GR17, GR30, 3
}
{
	store32	GR16, GR30, 2
}
$BB0_26:                                # %return
{
	movg2g	GR4,GR2
}
{
	movg2g	GR5,GR3
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
$BB0_27:                                # %return
{
	store32	GR3, GR30, 17
}
{
	jmp	$BB0_28
}
{
	nop
}
{
	nop
}
$BB0_16:                                # %if.else42
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
$BB0_17:                                # %if.else
{
	movigh	GR2,%hi(_Nan)
}
{
	movigl	GR2,%lo(_Nan)
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
	store32	GR3, GR30, 17
	load32	GR2, GR2, 0
}
{
	nop
}
{
	nop
}
$BB0_28:                                # %return
{
	store32	GR2, GR30, 16
}
{
	load32	GR2, GR30, 16
	load32	GR3, GR30, 17
}
{
	load32	GR16, GR30, 19
	load32	GR17, GR30, 20
}
{
	load32	GR18, GR30, 21
	load32	GR19, GR30, 22
}
{
	load32	GR20, GR30, 23
	load32	GR29, GR30, 24
}
{
	load32	GR31, GR30, 25
	addi	GR30, GR30, 104
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
	.size	_Asin, ($tmp0)-_Asin
	.section	.rodata,"a",@progbits
	.align	2
$JTI0_0:
	.4byte	($BB0_19)
	.4byte	($BB0_20)
	.4byte	($BB0_21)
	.4byte	($BB0_19)
	.4byte	($BB0_18)
	.4byte	($BB0_23)
	.4byte	($BB0_24)

	.type	p,@object               # @p
	.align	3
p:
	.8byte	-4618921089649205659    # double -6.967457e-01
	.8byte	4621904979973388583     # double 1.015252e+01
	.8byte	-4592589508651328865    # double -3.968886e+01
	.8byte	4633248159614293130     # double 5.720823e+01
	.8byte	-4594975272813852062    # double -2.736849e+01
	.size	p, 40

	.type	q,@object               # @q
	.align	3
q:
	.8byte	4607182418800017408     # double 1.000000e+00
	.8byte	-4595972998972209633    # double -2.382386e+01
	.8byte	4639515192824765552     # double 1.509527e+02
	.8byte	-4577946615132280760    # double -3.818630e+02
	.8byte	4646046096368252995     # double 4.171443e+02
	.8byte	-4583390360521439284    # double -1.642110e+02
	.size	q, 48


