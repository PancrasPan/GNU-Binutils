	.text
	.file	"./c_standard_lib-master/STRING/STRPBRK.ll"
	.globl	strpbrk
	.align	2
	.type	strpbrk,@function
strpbrk:                                # @strpbrk
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	store32	GR4, GR30, 4
	store32	GR5, GR30, 3
}
{
	load32	GR2, GR30, 4
}
{
	nop
}
{
	jmp	$BB0_1
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %for.inc11
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 2
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 1
}
$BB0_1:                                 # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
{
	store32	GR2, GR30, 2
}
{
	load32	GR2, GR30, 2
}
{
	nop
}
{
	nop
}
{
	load8	GR2, GR2, 0
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
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 3
}
{
	nop
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
$BB0_6:                                 # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=2
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
	addi	GR2, GR2, 1
}
$BB0_3:                                 # %for.cond2
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	store32	GR2, GR30, 1
}
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
	load8	GR2, GR2, 0
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
# BB#4:                                 # %for.body6
                                        #   in Loop: Header=BB0_3 Depth=2
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
	load8	GR3, GR3, 0
}
{
	neq	 GR3, GR2
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
	load32	GR2, GR30, 2
}
{
	nop
}
{
	nop
}
$BB0_9:                                 # %return
{
	store32	GR2, GR30, 5
}
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
$BB0_8:                                 # %for.end13
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	jmp	$BB0_9
}
{
	nop
}
{
	nop
}
$tmp0:
	.size	strpbrk, ($tmp0)-strpbrk


