	.text
	.file	"./c_standard_lib-master/STRING/MEMMOVE.ll"
	.globl	memmove
	.align	2
	.type	memmove,@function
memmove:                                # @memmove
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	load32	GR2, GR30, 8
	store32	GR4, GR30, 5
	store32	GR5, GR30, 4
}
{
	store32	GR2, GR30, 3
	load32	GR2, GR30, 5
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 2
	load32	GR2, GR30, 4
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 1
	load32	GR3, GR30, 2
}
{
	geu	 GR2, GR3
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
# BB#1:                                 # %land.lhs.true
{
	load32	GR2, GR30, 3
}
{
	nop
}
{
	load32	GR3, GR30, 1
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
	load32	GR3, GR30, 2
}
{
	geu	 GR3, GR2
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
# BB#2:                                 # %if.then
{
	load32	GR2, GR30, 3
}
{
	nop
}
{
	load32	GR3, GR30, 2
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
	store32	GR2, GR30, 2
	load32	GR2, GR30, 3
}
{
	nop
}
{
	load32	GR3, GR30, 1
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
	store32	GR2, GR30, 1
}
{
	jmp	$BB0_3
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %for.inc11
                                        #   in Loop: Header=BB0_5 Depth=1
{
	load32	GR2, GR30, 1
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 1
}
{
	store32	GR3, GR30, 1
}
{
	load8	GR2, GR2, 0
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, 1
}
{
	store32	GR4, GR30, 2
}
{
	store8	GR2, GR3, 0
}
{
	load32	GR2, GR30, 3
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
	store32	GR2, GR30, 3
}
$BB0_5:                                 # %for.cond6
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 3
}
{
	nop
}
{
	eqi	 GR2, 0
}
{
	jnc	 $BB0_6
}
{
	nop
}
{
	nop
}
{
	jmp	$BB0_7
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
{
	load32	GR2, GR30, 1
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
	store32	GR3, GR30, 1
}
{
	load8	GR2, GR2, -1
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, -1
}
{
	store32	GR4, GR30, 2
}
{
	store8	GR2, GR3, -1
}
{
	load32	GR2, GR30, 3
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
	store32	GR2, GR30, 3
}
$BB0_3:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 3
}
{
	nop
}
{
	eqi	 GR2, 0
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
$BB0_7:                                 # %if.end
{
	load32	GR2, GR30, 5
	addi	GR30, GR30, 24
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


