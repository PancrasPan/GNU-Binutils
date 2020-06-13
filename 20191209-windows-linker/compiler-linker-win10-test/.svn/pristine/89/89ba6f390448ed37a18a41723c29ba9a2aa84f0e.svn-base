	.text
	.file	"./c_standard_lib-master/MATH/MODF.ll"
	.globl	modf
	.align	2
	.type	modf,@function
modf:                                   # @modf
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -48
}
{
	store32	GR31, GR30, 11
	store32	GR16, GR30, 10
	load32	GR2, GR30, 14
}
{
	store32	GR5, GR30, 7
}
{
	store32	GR4, GR30, 6
	store32	GR2, GR30, 5
}
{
	load32	GR3, GR30, 6
	load32	GR4, GR30, 7
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR2, 1
}
{
	store32	GR3, GR2, 0
}
{
	load32	GR4, GR30, 5
	movigl	GR16,0
}
{
	movigh	GR16,0
}
{
	movg2g	GR5,GR16
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
	movigl	GR3,2
}
{
	movigh	GR3,0
}
{
	ltu	 GR2, GR3
}
{
	jnc	 $BB0_1
}
{
	nop
}
{
	nop
}
# BB#3:                                 # %sw.bb1
{
	store32	GR16, GR30, 9
}
{
	store32	GR16, GR30, 8
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
$BB0_1:                                 # %entry
{
	neqi	 GR2, 2
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
# BB#2:                                 # %sw.bb
{
	load32	GR2, GR30, 6
	load32	GR3, GR30, 7
}
{
	nop
}
{
	jmp	$BB0_5
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %sw.default
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
	load32	GR4, GR30, 6
}
{
	nop
}
{
	load32	GR5, GR30, 7
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
$BB0_5:                                 # %return
{
	store32	GR3, GR30, 9
}
{
	store32	GR2, GR30, 8
}
$BB0_6:                                 # %return
{
	load32	GR2, GR30, 8
	load32	GR3, GR30, 9
}
{
	load32	GR16, GR30, 10
	load32	GR31, GR30, 11
	addi	GR30, GR30, 48
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
	.size	modf, ($tmp0)-modf


