	.text
	.file	"./c_standard_lib-master/MATH/SINH.ll"
	.globl	sinh
	.align	2
	.type	sinh,@function
sinh:                                   # @sinh
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -80
}
{
	store32	GR31, GR30, 19
	store32	GR29, GR30, 18
}
{
	store32	GR20, GR30, 17
	store32	GR19, GR30, 16
}
{
	store32	GR18, GR30, 15
	store32	GR17, GR30, 14
}
{
	store32	GR16, GR30, 13
	store32	GR5, GR30, 9
}
{
	store32	GR4, GR30, 8
	addi	GR4, GR30, 32
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
	jc	 $BB0_8
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
	movigl	GR2,128
}
{
	movigh	GR2,0
	addi	GR29, GR30, 39
}
{
	load8	GR3, GR29, 0
}
{
	and	GR2, GR3, GR2
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
# BB#5:                                 # %cond.true
{
	movigh	GR3,%hi(_Inf)
}
{
	movigl	GR3,%lo(_Inf)
}
{
	load32	GR2, GR3, 1
	movigl	GR4,0
}
{
	movigh	GR4,-32768
}
{
	xor	GR2, GR2, GR4
	load32	GR3, GR3, 0
}
{
	nop
}
{
	jmp	$BB0_24
}
{
	nop
}
{
	nop
}
$BB0_8:                                 # %sw.bb3
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 11
}
{
	store32	GR2, GR30, 10
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
$BB0_2:                                 # %entry
{
	neqi	 GR2, 2
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
	load32	GR2, GR30, 8
	load32	GR3, GR30, 9
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
	jmp	$BB0_25
}
{
	nop
}
{
	nop
}
$BB0_9:                                 # %sw.default
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
	load32	GR16, GR30, 8
}
{
	nop
}
{
	load32	GR17, GR30, 9
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
	movigl	GR18,-1
}
{
	movigh	GR18,-1
}
{
	gt	 GR2, GR18
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
	or	GR2, GR2, GR20
}
{
	jc	 $BB0_11
}
{
	nop
}
{
	nop
}
# BB#10:                                # %if.then
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
	store32	GR3, GR30, 9
}
{
	store32	GR2, GR30, 8
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	store16	GR2, GR30, 14
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
$BB0_6:                                 # %cond.false
{
	movigh	GR3,%hi(_Inf)
}
{
	movigl	GR3,%lo(_Inf)
}
{
	load32	GR2, GR3, 1
	load32	GR3, GR3, 0
}
{
	nop
}
{
	jmp	$BB0_24
}
{
	nop
}
{
	nop
}
$BB0_11:                                # %if.else
{
	store16	GR19, GR30, 14
}
$BB0_12:                                # %if.end
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
	lt	 GR2, GR19
}
{
	jc	 $BB0_20
}
{
	nop
}
{
	nop
}
# BB#13:                                # %if.else9
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
	store32	GR19, GR30, 2
}
{
	load32	GR16, GR30, 8
}
{
	nop
}
{
	load32	GR17, GR30, 9
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
	store32	GR20, GR30, 3
}
{
	store32	GR19, GR30, 2
	gt	 GR2, GR18
}
{
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
	jc	 $BB0_15
}
{
	nop
}
{
	nop
}
# BB#14:                                # %if.then12
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
	store32	GR17, GR30, 3
}
{
	store32	GR16, GR30, 2
	movigh	GR18,%hi(p)
}
{
	movigl	GR18,%lo(p)
}
{
	load32	GR4, GR18, 0
}
{
	nop
}
{
	load32	GR5, GR18, 1
}
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
	load32	GR4, GR18, 3
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 3
}
{
	load32	GR4, GR18, 2
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
	call	__adddf3
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
	load32	GR4, GR18, 5
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 3
}
{
	load32	GR4, GR18, 4
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
	call	__adddf3
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
	load32	GR4, GR18, 7
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 3
}
{
	load32	GR4, GR18, 6
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
	call	__adddf3
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
	movigh	GR20,%hi(q)
}
{
	movigl	GR20,%lo(q)
}
{
	load32	GR4, GR20, 0
}
{
	nop
}
{
	load32	GR5, GR20, 1
}
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
	load32	GR4, GR20, 3
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 3
}
{
	load32	GR4, GR20, 2
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
	call	__adddf3
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
	load32	GR4, GR20, 5
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 3
}
{
	load32	GR4, GR20, 4
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
	call	__adddf3
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
	load32	GR4, GR20, 7
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 3
}
{
	load32	GR4, GR20, 6
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
	call	__adddf3
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
	store32	GR17, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	store32	GR17, GR30, 5
}
{
	store32	GR16, GR30, 4
	load32	GR16, GR30, 8
}
{
	nop
}
{
	load32	GR17, GR30, 9
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
	movg2g	GR4,GR16
}
{
	movg2g	GR5,GR17
}
{
	jmp	$BB0_19
}
{
	nop
}
{
	nop
}
$BB0_15:                                # %if.else27
{
	addi	GR4, GR30, 32
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
	jc	 $BB0_17
}
{
	nop
}
{
	nop
}
# BB#16:                                # %if.then32
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
	jmp	$BB0_20
}
{
	nop
}
{
	nop
}
$BB0_17:                                # %if.else33
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
	jc	 $BB0_20
}
{
	nop
}
{
	nop
}
# BB#18:                                # %if.then36
{
	load32	GR16, GR30, 9
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
	load32	GR17, GR30, 8
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
	movigh	GR5,-16432
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
$BB0_19:                                # %if.end42
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
$BB0_20:                                # %if.end42
{
	load16	GR2, GR30, 14
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_22
}
{
	nop
}
{
	nop
}
# BB#21:                                # %cond.true45
{
	movigl	GR2,0
}
{
	movigh	GR2,-32768
	load32	GR3, GR30, 9
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
	jmp	$BB0_23
}
{
	nop
}
{
	nop
}
$BB0_22:                                # %cond.false47
{
	load32	GR2, GR30, 9
}
{
	nop
}
{
	nop
}
$BB0_23:                                # %cond.end48
{
	load32	GR3, GR30, 8
}
{
	nop
}
{
	nop
}
$BB0_24:                                # %cond.end48
{
	store32	GR3, GR30, 10
}
{
	store32	GR2, GR30, 11
}
$BB0_25:                                # %return
{
	load32	GR2, GR30, 10
	load32	GR3, GR30, 11
}
{
	load32	GR16, GR30, 13
	load32	GR17, GR30, 14
}
{
	load32	GR18, GR30, 15
	load32	GR19, GR30, 16
}
{
	load32	GR20, GR30, 17
	load32	GR29, GR30, 18
}
{
	load32	GR31, GR30, 19
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
	.size	sinh, ($tmp0)-sinh

	.type	p,@object               # @p
	.section	.rodata,"a",@progbits
	.align	3
p:
	.8byte	-4618084180869265381    # double -7.896613e-01
	.8byte	-4583406298518405558    # double -1.637580e+02
	.8byte	-4555789309519326064    # double -1.156352e+04
	.8byte	-4533584325918903271    # double -3.518128e+05
	.size	p, 32

	.type	q,@object               # @q
	.align	3
q:
	.8byte	4607182418800017408     # double 1.000000e+00
	.8byte	-4579778450804867086    # double -2.777352e+02
	.8byte	4675202980402060999     # double 3.616272e+04
	.8byte	-4521584551654430957    # double -2.110877e+06
	.size	q, 32


