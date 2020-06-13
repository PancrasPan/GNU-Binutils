	.text
	.file	"./output-test/1.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
Slot:	                                # 0
{
	movigl	GR2,0
}
Slot:	                                # 0
{
	movigh	GR2,0
}
Slot:	                                # 0
{
	ret	GR31
}
Slot:	                                # 0
{
	nop
}
Slot:	                                # 0
{
	nop
}
$tmp0:                                  # EmittedInsts:5
	.size	main, ($tmp0)-main


