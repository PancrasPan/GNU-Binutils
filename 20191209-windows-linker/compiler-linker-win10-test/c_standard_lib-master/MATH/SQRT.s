	.text
	.file	"./c_standard_lib-master/MATH/SQRT.ll"
	.globl	sqrt
	.align	2
	.type	sqrt,@function
sqrt:                                   # @sqrt
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -72
}
{
	store32	GR31, GR30, 17
	store32	GR20, GR30, 16
}
{
	store32	GR19, GR30, 15
	store32	GR18, GR30, 14
}
{
	store32	GR17, GR30, 13
	store32	GR16, GR30, 12
}
{
	store32	GR5, GR30, 9
}
{
	store32	GR4, GR30, 8
	addi	GR4, GR30, 28
	addi	GR5, GR30, 32
}
{
	call	_Dunscale
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
	movigl	GR2,128
}
{
	movigh	GR2,0
	addi	GR28, GR30, 39
}
{
	load8	GR3, GR28, 0
}
{
	and	GR2, GR3, GR2
}
{
	eqi	 GR2, 0
}
{
	jnc	 $BB0_5
}
{
	nop
}
{
	nop
}
# BB#7:                                 # %if.else
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
	jmp	$BB0_6
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
	jmp	$BB0_14
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
$BB0_9:                                 # %sw.default
{
	movigl	GR20,0
}
{
	movigh	GR20,0
}
{
	store32	GR20, GR30, 3
}
{
	store32	GR20, GR30, 2
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
	store32	GR20, GR30, 2
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
	neq	 GR2, GR20
}
{
	or	GR2, GR2, GR18
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
$BB0_5:                                 # %if.then
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
$BB0_6:                                 # %return
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
	store32	GR3, GR30, 11
	load32	GR2, GR2, 0
}
{
	nop
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
$BB0_10:                                # %if.end
{
	movigl	GR2,26522
}
{
	movigh	GR2,-16439
}
{
	store32	GR2, GR30, 3
	movigl	GR2,-15094
}
{
	movigh	GR2,17164
}
{
	store32	GR2, GR30, 2
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
	call	__muldf3
}
{
	nop
}
{
	nop
}
{
	movigl	GR4,11512
}
{
	movigh	GR4,16364
}
{
	store32	GR4, GR30, 3
	movigl	GR4,12399
}
{
	movigh	GR4,6959
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
	movigl	GR4,21679
}
{
	movigh	GR4,16340
}
{
	store32	GR4, GR30, 3
	movigl	GR4,-24808
}
{
	movigh	GR4,6493
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
	call	__adddf3
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
	movigh	GR4,16352
}
{
	store32	GR4, GR30, 3
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
}
{
	store32	GR17, GR30, 5
}
{
	store32	GR16, GR30, 4
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
	call	__divdf3
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
	movigl	GR2,0
}
{
	movigh	GR2,16336
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
	movigl	GR16,1
}
{
	movigh	GR16,0
	load8	GR2, GR30, 28
}
{
	and	GR2, GR2, GR16
}
{
	eqi	 GR2, 0
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
# BB#11:                                # %if.then18
{
	movigl	GR2,-24418
}
{
	movigh	GR2,16374
}
{
	store32	GR2, GR30, 3
	movigl	GR2,15309
}
{
	movigh	GR2,26239
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
{
	store32	GR3, GR30, 9
}
{
	store32	GR2, GR30, 8
	load16	GR2, GR30, 14
}
{
	addi	GR2, GR2, -1
}
{
	store16	GR2, GR30, 14
}
$BB0_12:                                # %if.end20
{
	movigl	GR2,31
}
{
	movigh	GR2,0
	load16	GR3, GR30, 14
}
{
	srl	GR2, GR3, GR2
}
{
	add	GR2, GR3, GR2
}
{
	sra	GR5, GR2, GR16
	addi	GR4, GR30, 32
}
{
	call	_Dscale
}
{
	nop
}
{
	nop
}
$BB0_13:                                # %return
{
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
$BB0_14:                                # %return
{
	store32	GR2, GR30, 10
}
{
	load32	GR2, GR30, 10
	load32	GR3, GR30, 11
}
{
	load32	GR16, GR30, 12
	load32	GR17, GR30, 13
}
{
	load32	GR18, GR30, 14
	load32	GR19, GR30, 15
}
{
	load32	GR20, GR30, 16
	load32	GR31, GR30, 17
	addi	GR30, GR30, 72
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
	.size	sqrt, ($tmp0)-sqrt

	.type	sqrt.sqrt2,@object      # @sqrt.sqrt2
	.section	.rodata,"a",@progbits
	.align	3
sqrt.sqrt2:
	.8byte	4609047870845172685     # double 1.4142135623730951
	.size	sqrt.sqrt2, 8


