	.text
	.file	"./c_standard_lib-master/MATH/FREXP.ll"
	.globl	frexp
	.align	2
	.type	frexp,@function
frexp:                                  # @frexp
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -40
}
{
	store32	GR31, GR30, 9
	load32	GR2, GR30, 12
	store32	GR5, GR30, 5
}
{
	store32	GR4, GR30, 4
	store32	GR2, GR30, 3
	addi	GR4, GR30, 8
	addi	GR5, GR30, 16
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
	jc	 $BB0_3
}
{
	nop
}
{
	nop
}
# BB#1:                                 # %entry
{
	addi	GR2, GR2, -1
}
{
	lti	 GR2, 2
}
{
	jnc	 $BB0_4
}
{
	nop
}
{
	nop
}
# BB#2:                                 # %sw.bb
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
	movigl	GR2,0
}
{
	movigh	GR2,0
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR3, 0
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
$BB0_3:                                 # %sw.bb1
{
	load32	GR2, GR30, 3
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 0
}
{
	store32	GR3, GR30, 7
}
{
	store32	GR3, GR30, 6
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
$BB0_4:                                 # %sw.default
{
	load32	GR2, GR30, 3
}
{
	nop
}
{
	load16	GR3, GR30, 4
}
{
	store32	GR3, GR2, 0
}
$BB0_5:                                 # %return
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
{
	store32	GR2, GR30, 6
}
$BB0_6:                                 # %return
{
	load32	GR2, GR30, 6
	load32	GR3, GR30, 7
}
{
	load32	GR31, GR30, 9
	addi	GR30, GR30, 40
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
	.size	frexp, ($tmp0)-frexp


