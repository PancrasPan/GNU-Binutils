	.text
	.file	"./testcase_8slots/XSIN.ll"
	.globl	_Sin
	.align	2
	.type	_Sin,@function
_Sin:                                   # @_Sin
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -96
}
{
	store32	GR31, GR30, 23
	store32	GR29, GR30, 22
}
{
	store32	GR20, GR30, 21
	store32	GR19, GR30, 20
}
{
	store32	GR18, GR30, 19
	store32	GR17, GR30, 18
}
{
	store32	GR16, GR30, 17
	load32	GR2, GR30, 26
	store32	GR5, GR30, 13
}
{
	store32	GR4, GR30, 12
	store32	GR2, GR30, 11
	addi	GR4, GR30, 48
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
	jc	 $BB0_4
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
# BB#7:                                 # %sw.bb2
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
	store32	GR3, GR30, 15
	load32	GR2, GR2, 0
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
$BB0_4:                                 # %sw.bb1
{
	load32	GR2, GR30, 11
}
{
	nop
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
# BB#5:                                 # %if.then
{
	movigl	GR2,0
}
{
	movigh	GR2,16368
}
{
	store32	GR2, GR30, 15
	movigl	GR2,0
}
{
	movigh	GR2,0
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
$BB0_2:                                 # %entry
{
	neqi	 GR2, 2
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
	load32	GR2, GR30, 12
	load32	GR3, GR30, 13
}
{
	nop
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
$BB0_8:                                 # %sw.default
{
	movigl	GR2,7107
}
{
	movigh	GR2,-15895
}
{
	store32	GR2, GR30, 3
	movigl	GR18,0
}
{
	movigh	GR18,-12288
}
{
	store32	GR18, GR30, 2
}
{
	load32	GR4, GR30, 12
}
{
	nop
}
{
	load32	GR5, GR30, 13
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
	movigl	GR20,0
}
{
	movigh	GR20,0
}
{
	lt	 GR2, GR20
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
# BB#9:                                 # %lor.lhs.false
{
	movigl	GR19,7107
}
{
	movigh	GR19,16873
}
{
	store32	GR19, GR30, 3
}
{
	store32	GR18, GR30, 2
}
{
	load32	GR16, GR30, 12
}
{
	nop
}
{
	load32	GR17, GR30, 13
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
	call	__ledf2
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
	movigl	GR3,1
}
{
	movigh	GR3,0
}
{
	lt	 GR2, GR3
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
	neq	 GR2, GR20
}
{
	or	GR2, GR2, GR18
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
$BB0_10:                                # %if.then6
{
	movigl	GR16,8699
}
{
	movigh	GR16,16409
}
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
	load32	GR4, GR30, 12
}
{
	nop
}
{
	load32	GR5, GR30, 13
}
{
	nop
}
{
	nop
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
	store32	GR3, GR30, 9
}
{
	store32	GR2, GR30, 8
	addi	GR4, GR30, 32
	movigl	GR5,0
}
{
	movigh	GR5,0
}
{
	call	_Dint
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
	call	__muldf3
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
	load32	GR4, GR30, 12
}
{
	nop
}
{
	load32	GR5, GR30, 13
}
{
	nop
}
{
	nop
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
	store32	GR3, GR30, 13
}
{
	store32	GR2, GR30, 12
}
$BB0_11:                                # %if.end
{
	movigl	GR2,24368
}
{
	movigh	GR2,16356
}
{
	store32	GR2, GR30, 3
	movigl	GR2,-14205
}
{
	movigh	GR2,28105
}
{
	store32	GR2, GR30, 2
}
{
	load32	GR4, GR30, 12
}
{
	nop
}
{
	load32	GR5, GR30, 13
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
	movg2g	GR16,GR2
}
{
	movg2g	GR17,GR3
}
{
	store32	GR20, GR30, 3
}
{
	store32	GR20, GR30, 2
}
{
	movg2g	GR4,GR16
}
{
	movg2g	GR5,GR17
}
{
	call	__ledf2
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
	store32	GR20, GR30, 2
	movigl	GR3,1
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR30, 6
	lt	 GR2, GR3
	store32	GR17, GR30, 9
}
{
	store32	GR16, GR30, 8
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
	neq	 GR2, GR20
}
{
	or	GR2, GR2, GR18
}
{
	jc	 $BB0_13
}
{
	nop
}
{
	nop
}
# BB#12:                                # %cond.true
{
	movigl	GR2,0
}
{
	movigh	GR2,16352
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
$BB0_6:                                 # %if.else
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 15
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
$BB0_13:                                # %cond.false
{
	movigl	GR2,0
}
{
	movigh	GR2,-16416
}
$BB0_14:                                # %cond.end
{
	store32	GR2, GR30, 3
}
{
	store32	GR20, GR30, 2
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
	movg2g	GR4,GR2
}
{
	movg2g	GR5,GR3
}
{
	call	__fixdfsi
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 7
	movigl	GR3,3
}
{
	movigh	GR3,0
}
{
	and	GR2, GR2, GR3
	load32	GR3, GR30, 11
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
	store32	GR2, GR30, 11
	load32	GR4, GR30, 7
}
{
	nop
}
{
	nop
}
{
	call	__dsp_floatsidf
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
	movigl	GR2,8699
}
{
	movigh	GR2,-16391
}
{
	store32	GR2, GR30, 3
}
{
	store32	GR20, GR30, 2
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
	movg2g	GR18,GR2
}
{
	movg2g	GR19,GR3
	movigl	GR2,4363
}
{
	movigh	GR2,-16747
}
{
	store32	GR2, GR30, 3
	movigl	GR2,-23002
}
{
	movigh	GR2,17937
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
	call	__muldf3
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 5
}                                       # 4-byte Folded Spill
{
	movg2g	GR29,GR3
}
{
	store32	GR19, GR30, 3
}
{
	store32	GR18, GR30, 2
}
{
	store32	GR17, GR30, 9
}
{
	store32	GR16, GR30, 8
	load32	GR4, GR30, 12
}
{
	nop
}
{
	load32	GR5, GR30, 13
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
	store32	GR29, GR30, 3
	load32	GR4, GR30, 5
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
	movg2g	GR16,GR2
}
{
	movg2g	GR17,GR3
}
{
	store32	GR20, GR30, 3
}
{
	store32	GR20, GR30, 2
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
	store32	GR20, GR30, 2
	movigl	GR18,-1
}
{
	movigh	GR18,-1
}
{
	gt	 GR2, GR18
	store32	GR17, GR30, 9
}
{
	store32	GR16, GR30, 8
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
	neq	 GR2, GR20
}
{
	or	GR2, GR2, GR19
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
# BB#15:                                # %if.then21
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
}
$BB0_16:                                # %if.end24
{
	movigh	GR2,%hi(_Rteps)
}
{
	movigl	GR2,%lo(_Rteps)
}
{
	load32	GR19, GR2, 1
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
	store32	GR29, GR30, 2
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
	neq	 GR2, GR20
}
{
	or	GR2, GR2, GR18
}
{
	jc	 $BB0_19
}
{
	nop
}
{
	nop
}
# BB#17:                                # %if.then27
{
	load8	GR2, GR30, 11
	load32	GR3, GR30, 6
}
{
	nop
}
{
	nop
}
{
	and	GR2, GR2, GR3
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_23
}
{
	nop
}
{
	nop
}
# BB#18:                                # %if.then30
{
	movigl	GR2,0
}
{
	movigh	GR2,16368
}
{
	store32	GR2, GR30, 9
}
{
	store32	GR20, GR30, 8
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
$BB0_19:                                # %if.else32
{
	load8	GR2, GR30, 11
	load32	GR3, GR30, 6
}
{
	nop
}
{
	nop
}
{
	and	GR2, GR2, GR3
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_21
}
{
	nop
}
{
	nop
}
# BB#20:                                # %if.then35
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
	movigl	GR4,7
}
{
	movigh	GR4,0
}
{
	store32	GR4, GR30, 3
	movigh	GR4,%hi(c)
}
{
	movigl	GR4,%lo(c)
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
	call	_Poly
}
{
	nop
}
{
	nop
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
$BB0_21:                                # %if.else38
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
	movigl	GR4,7
}
{
	movigh	GR4,0
}
{
	store32	GR4, GR30, 3
	movigh	GR4,%hi(s)
}
{
	movigl	GR4,%lo(s)
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
	call	_Poly
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
	call	__muldf3
}
{
	nop
}
{
	nop
}
$BB0_22:                                # %if.end43
{
	store32	GR3, GR30, 9
}
{
	store32	GR2, GR30, 8
}
$BB0_23:                                # %if.end43
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load8	GR3, GR30, 11
}
{
	and	GR2, GR3, GR2
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_25
}
{
	nop
}
{
	nop
}
# BB#24:                                # %if.then46
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
	jmp	$BB0_26
}
{
	nop
}
{
	nop
}
$BB0_25:                                # %if.else48
{
	load32	GR2, GR30, 8
}
{
	nop
}
{
	load32	GR3, GR30, 9
}
{
	nop
}
{
	nop
}
$BB0_26:                                # %return
{
	store32	GR3, GR30, 15
}
$BB0_27:                                # %return
{
	store32	GR2, GR30, 14
}
{
	load32	GR2, GR30, 14
	load32	GR3, GR30, 15
}
{
	load32	GR16, GR30, 17
	load32	GR17, GR30, 18
}
{
	load32	GR18, GR30, 19
	load32	GR19, GR30, 20
}
{
	load32	GR20, GR30, 21
	load32	GR29, GR30, 22
}
{
	load32	GR31, GR30, 23
	addi	GR30, GR30, 96
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
	.size	_Sin, ($tmp0)-_Sin

	.type	c,@object               # @c
	.section	.rodata,"a",@progbits
	.align	3
c:
	.8byte	-4780226273694888326    # double -1.147088e-11
	.8byte	4477122208032008588     # double 2.087712e-09
	.8byte	-4714566979058551330    # double -2.755732e-07
	.8byte	4537941361669352188     # double 2.480159e-05
	.8byte	-4659324094485795798    # double -1.388889e-03
	.8byte	4586165620538955188     # double 4.166667e-02
	.8byte	-4620693217682128896    # double -5.000000e-01
	.8byte	4607182418800017408     # double 1.000000e+00
	.size	c, 64

	.type	s,@object               # @s
	.align	3
s:
	.8byte	-4797767352639019761    # double -7.647230e-13
	.8byte	4460272655916866185     # double 1.605926e-10
	.8byte	-4730215272828763593    # double -2.505211e-08
	.8byte	4523617214284461132     # double 2.755732e-06
	.8byte	-4671919876300758992    # double -1.984127e-04
	.8byte	4575957461383581991     # double 8.333333e-03
	.8byte	-4628199217061079723    # double -1.666667e-01
	.8byte	4607182418800017408     # double 1.000000e+00
	.size	s, 64


