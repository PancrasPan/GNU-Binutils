	.text
	.file	".\\HWlooptest\\fail\\bump_notaddi0.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	jmp	$BB0_1
}
{
	nop
}
{
	nop
}
$tmp0:
	.size	add, ($tmp0)-add


