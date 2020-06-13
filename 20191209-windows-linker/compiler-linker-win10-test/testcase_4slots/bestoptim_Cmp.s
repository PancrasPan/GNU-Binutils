	.text
	.file	".\\bestoptim.ll"
	.globl	hardwareLoop
	.align	2
	.type	hardwareLoop,@function
hardwareLoop:                           # @hardwareLoop
# BB#0:                                 # %entry
{
	movigl	GR2,4
}
{
	movigh	GR2,0
	movigl	GR3,0
}
{
	movigh	GR3,0
	loop	 GR2, $BB0_1
}
{
	nop
}
{
	nop
}
$BB0_3:
{
	movigl	GR2,3
}
{
	movigh	GR2,0
}
{
	mul32	GR5, GR5, GR2
}
{
	nop
}
{
	movigl	GR2,2
}
{
	movigh	GR2,0
}
{
	sl	GR2, GR5, GR2
}
{
	add	GR2, GR4, GR2
}
$tmp0:                                  # Block address taken
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR3, GR2, 0
}
# BB#2:                                 # %for.end
{
	ret	GR31
}
{
	nop
}
{
	nop
}
$tmp1:
	.size	hardwareLoop, ($tmp1)-hardwareLoop


