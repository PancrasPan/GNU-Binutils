	.text
	.file	"./c_standard_lib-master/MATH/FLOOR.ll"
	.globl	floor
	.align	2
	.type	floor,@function
floor:                                  # @floor
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
	store32	GR5, GR30, 7
}
{
	store32	GR4, GR30, 6
	store32	GR5, GR30, 5
}
{
	store32	GR4, GR30, 4
	addi	GR4, GR30, 16
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
	lti	 GR2, 0
}
{
	jnc	 $BB0_3
}
{
	nop
}
{
	nop
}
# BB#1:                                 # %land.lhs.true
{
	store32	GR16, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	load32	GR17, GR30, 6
}
{
	nop
}
{
	load32	GR18, GR30, 7
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
	movigl	GR3,-1
}
{
	movigh	GR3,-1
}
{
	gt	 GR2, GR3
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
	jc	 $BB0_3
}
{
	nop
}
{
	nop
}
# BB#2:                                 # %cond.true
{
	movigl	GR2,0
}
{
	movigh	GR2,-16400
}
{
	store32	GR2, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	load32	GR4, GR30, 4
}
{
	nop
}
{
	load32	GR5, GR30, 5
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
	jmp	$BB0_4
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %cond.false
{
	load32	GR3, GR30, 5
}
{
	nop
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
$BB0_4:                                 # %cond.end
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
	.size	floor, ($tmp0)-floor


