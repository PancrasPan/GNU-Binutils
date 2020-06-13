	.text
	.file	"./c_standard_lib-master/MATH/EXP.ll"
	.globl	exp
	.align	2
	.type	exp,@function
exp:                                    # @exp
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
}
{
	store32	GR31, GR30, 7
	store32	GR16, GR30, 6
}
{
	store32	GR5, GR30, 3
}
{
	store32	GR4, GR30, 2
	addi	GR4, GR30, 8
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
	jc	 $BB0_7
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
	addi	GR28, GR30, 15
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
	movigh	GR2,0
}
{
	store32	GR2, GR30, 5
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
$BB0_7:                                 # %sw.bb3
{
	movigl	GR2,0
}
{
	movigh	GR2,16368
}
{
	store32	GR2, GR30, 5
	movigl	GR2,0
}
{
	movigh	GR2,0
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
	jmp	$BB0_10
}
{
	nop
}
{
	nop
}
$BB0_8:                                 # %sw.default
{
	addi	GR4, GR30, 8
	movigl	GR16,0
}
{
	movigh	GR16,0
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
	lt	 GR2, GR16
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
# BB#9:                                 # %if.then7
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
$BB0_10:                                # %if.end
{
	store32	GR3, GR2, 0
}
$BB0_11:                                # %if.end
{
	load32	GR2, GR30, 2
	load32	GR3, GR30, 3
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
	jmp	$BB0_12
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %if.else
{
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
	store32	GR3, GR30, 5
	load32	GR2, GR2, 0
}
{
	nop
}
{
	nop
}
$BB0_12:                                # %return
{
	store32	GR2, GR30, 4
}
{
	load32	GR2, GR30, 4
	load32	GR3, GR30, 5
}
{
	load32	GR16, GR30, 6
	load32	GR31, GR30, 7
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
$tmp0:
	.size	exp, ($tmp0)-exp


