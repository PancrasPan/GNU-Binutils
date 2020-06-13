	.text
	.file	"./testcase_8slots/memmove.ll"
	.globl	memmove
	.align	2
	.type	memmove,@function
memmove:                                # @memmove
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -48
}
{
	store32	GR31, GR30, 11
	load32	GR2, GR30, 14
	store32	GR4, GR30, 9
}
{
	store32	GR5, GR30, 8
	store32	GR2, GR30, 7
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
	load32	GR3, GR30, 6
}
{
	geu	 GR3, GR2
}
{
	jc	 $BB0_2
}
{
	nop
}
{
	nop
}
# BB#1:                                 # %if.then
{
	load32	GR5, GR30, 8
	load32	GR4, GR30, 9
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 4
	load32	GR2, GR30, 7
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
	call	memcpy
}
{
	nop
}
{
	nop
}
{
	load32	GR2, GR30, 4
}                                       # 4-byte Folded Reload
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
$BB0_3:                                 # %while.body
                                        #   in Loop: Header=BB0_2 Depth=1
{
	load32	GR2, GR30, 7
}
{
	nop
}
{
	load32	GR3, GR30, 6
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR3, GR2
	load32	GR4, GR30, 5
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR4, GR2
}
{
	load8	GR2, GR2, 0
}
{
	store8	GR2, GR3, 0
}
$BB0_2:                                 # %while.cond
                                        # =>This Inner Loop Header: Depth=1
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
	addi	GR3, GR2, -1
}
{
	store32	GR3, GR30, 7
}
{
	eqi	 GR2, 0
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
# BB#4:                                 # %while.end
{
	load32	GR2, GR30, 9
}
{
	nop
}
{
	nop
}
$BB0_5:                                 # %return
{
	store32	GR2, GR30, 10
}
{
	load32	GR2, GR30, 10
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
	.size	memmove, ($tmp0)-memmove


