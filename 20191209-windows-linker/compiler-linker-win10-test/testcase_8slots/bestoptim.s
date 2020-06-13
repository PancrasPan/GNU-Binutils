	.text
	.file	"./testcase_8slots/bestoptim.ll"
	.globl	hardwareLoop
	.align	2
	.type	hardwareLoop,@function
hardwareLoop:                           # @hardwareLoop
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 3
	store32	GR4, GR30, 2
}
{
	store32	GR5, GR30, 1
}                                       # 4-byte Folded Spill
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR4,3
	load32	GR2, GR30, 1
	load32	GR3, GR30, 3
}
{
	movigh	GR4,0
}
{
	mul32	GR2, GR2, GR4
	movigl	GR4,2
}
{
	movigh	GR4,0
}
{
	sl	GR4, GR2, GR4
	load32	GR5, GR30, 2
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR5, GR4
	movigl	GR6,0
}
{
	movigh	GR6,0
}
{
	addi	GR3, GR3, 1
	store32	GR6, GR4, 0
}
{
	neqi	 GR3, 5
}
{
	store32	GR3, GR30, 3
	store32	GR2, GR30, 1
}
{
	jc	 $BB0_1
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %for.end
{
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
$tmp0:
	.size	hardwareLoop, ($tmp0)-hardwareLoop


