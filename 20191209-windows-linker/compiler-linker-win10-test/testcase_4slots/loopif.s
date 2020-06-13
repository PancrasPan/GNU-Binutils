	.text
	.file	"./testcase_4slots/loopif.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	store32	GR4, GR30, 3
	store32	GR5, GR30, 2
	movigl	GR2,0
}
{
	movigh	GR2,0
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
$BB0_6:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
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
	addi	GR2, GR2, 2
}
$BB0_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR2, GR30, 1
	load32	GR2, GR30, 2
}
{
	nop
}
{
	load32	GR3, GR30, 1
}
{
	ge	 GR3, GR2
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
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 1
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 3
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
}
{
	load32	GR3, GR3, 0
	movigh	GR4,%hi(bound)
}
{
	movigl	GR4,%lo(bound)
}
{
	load32	GR4, GR4, 0
}
{
	ge	 GR3, GR4
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
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
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
	sl	GR2, GR3, GR2
	movigh	GR3,%hi(ExArray)
}
{
	movigl	GR3,%lo(ExArray)
}
{
	add	GR2, GR3, GR2
}
{
	load32	GR2, GR2, 0
	movigh	GR3,%hi(sum)
}
{
	movigl	GR3,%lo(sum)
}
{
	load32	GR4, GR3, 0
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
	store32	GR2, GR3, 0
	movigh	GR3,%hi(threshold)
}
{
	movigl	GR3,%lo(threshold)
}
{
	load32	GR3, GR3, 0
}
{
	gt	 GR2, GR3
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
	jmp	$BB0_4
}
{
	nop
}
{
	nop
}
$BB0_5:                                 # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
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
	sl	GR2, GR3, GR2
	load32	GR3, GR30, 3
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
	load32	GR2, GR2, 0
	movigh	GR3,%hi(sum)
}
{
	movigl	GR3,%lo(sum)
}
{
	load32	GR4, GR3, 0
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
	store32	GR2, GR3, 0
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
$BB0_4:                                 # %for.end
{
	movigh	GR2,%hi(sum)
}
{
	movigl	GR2,%lo(sum)
}
{
	load32	GR2, GR2, 0
	addi	GR30, GR30, 16
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
$tmp0:                                  # EmittedInsts:77
	.size	add, ($tmp0)-add


