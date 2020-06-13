	.text
	.file	"./c_standard_lib-master/MATH/ATAN.ll"
	.globl	atan
	.align	2
	.type	atan,@function
atan:                                   # @atan
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -64
}
{
	store32	GR31, GR30, 15
	store32	GR19, GR30, 14
}
{
	store32	GR18, GR30, 13
	store32	GR17, GR30, 12
}
{
	store32	GR16, GR30, 11
	store32	GR5, GR30, 7
}
{
	store32	GR4, GR30, 6
	addi	GR4, GR30, 24
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
	movigl	GR2,128
}
{
	movigh	GR2,0
	addi	GR28, GR30, 31
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
	jc	 $BB0_7
}
{
	nop
}
{
	nop
}
# BB#5:                                 # %if.then
{
	movigl	GR2,8699
}
{
	movigh	GR2,-16391
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
	store32	GR2, GR30, 9
}
{
	jmp	$BB0_16
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
	load32	GR2, GR30, 6
	load32	GR3, GR30, 7
}
{
	nop
}
{
	jmp	$BB0_15
}
{
	nop
}
{
	nop
}
$BB0_9:                                 # %sw.default
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
	load32	GR16, GR30, 6
}
{
	nop
}
{
	load32	GR17, GR30, 7
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
	jc	 $BB0_11
}
{
	nop
}
{
	nop
}
# BB#10:                                # %if.then5
{
	load32	GR2, GR30, 7
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
	load32	GR2, GR30, 6
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
	store32	GR3, GR30, 7
}
{
	store32	GR2, GR30, 6
	movigl	GR2,8
}
{
	movigh	GR2,0
}
{
	store16	GR2, GR30, 10
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
$BB0_7:                                 # %if.else
{
	movigl	GR2,8699
}
{
	movigh	GR2,16377
}
$BB0_6:                                 # %return
{
	store32	GR2, GR30, 9
	movigl	GR2,11544
}
{
	movigh	GR2,21572
}
{
	jmp	$BB0_16
}
{
	nop
}
{
	nop
}
$BB0_11:                                # %if.else6
{
	store16	GR18, GR30, 10
}
$BB0_12:                                # %if.end
{
	movigl	GR19,0
}
{
	movigh	GR19,16368
}
{
	store32	GR19, GR30, 3
}
{
	store32	GR18, GR30, 2
}
{
	load32	GR16, GR30, 6
}
{
	nop
}
{
	load32	GR17, GR30, 7
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
	neq	 GR2, GR18
}
{
	or	GR2, GR2, GR19
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
# BB#13:                                # %if.then9
{
	load32	GR2, GR30, 7
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
	load32	GR2, GR30, 6
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
	movigh	GR5,16368
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
	store32	GR3, GR30, 7
}
{
	store32	GR2, GR30, 6
	movigl	GR2,2
}
{
	movigh	GR2,0
	load16	GR3, GR30, 10
}
{
	xor	GR2, GR3, GR2
}
{
	store16	GR2, GR30, 10
}
$BB0_14:                                # %if.end12
{
	load32	GR5, GR30, 7
	load32	GR4, GR30, 6
}
{
	load16	GR2, GR30, 10
}
{
	store32	GR2, GR30, 2
}
{
	call	_Atan
}
{
	nop
}
{
	nop
}
$BB0_15:                                # %return
{
	store32	GR3, GR30, 9
}
$BB0_16:                                # %return
{
	store32	GR2, GR30, 8
}
{
	load32	GR2, GR30, 8
	load32	GR3, GR30, 9
}
{
	load32	GR16, GR30, 11
	load32	GR17, GR30, 12
}
{
	load32	GR18, GR30, 13
	load32	GR19, GR30, 14
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
	.size	atan, ($tmp0)-atan

	.type	atan.piby2,@object      # @atan.piby2
	.section	.rodata,"a",@progbits
	.align	3
atan.piby2:
	.8byte	4609753056924675352     # double 1.5707963267948966
	.size	atan.piby2, 8


