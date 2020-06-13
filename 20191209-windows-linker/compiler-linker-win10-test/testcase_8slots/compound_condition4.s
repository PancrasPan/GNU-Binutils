	.text
	.file	"./testcase_8slots/compound_condition4.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	movigl	GR3,2
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR30, 3
	store32	GR2, GR30, 2
}
$BB0_1:                                 # %while.cond
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 2
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 3
}                                       # 4-byte Folded Reload
{
	lti	 GR2, 4
}
{
	store32	GR2, GR30, 1
	store32	GR3, GR30, 0
}
{
	jnc	 $BB0_2
}
{
	nop
}
{
	nop
}
$BB0_5:                                 # %while.cond
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,4
}
{
	movigh	GR2,0
	load32	GR3, GR30, 0
}
{
	lt	 GR3, GR2
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
$BB0_2:                                 # %lor.rhs
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 1
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 0
}                                       # 4-byte Folded Reload
{
	ge	 GR2, GR3
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
$BB0_6:                                 # %lor.rhs
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 0
}                                       # 4-byte Folded Reload
{
	lti	 GR2, 3
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
$BB0_3:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 0
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 1
	load32	GR4, GR30, 1
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR4, 1
	store32	GR3, GR30, 3
}
{
	store32	GR5, GR30, 2
}                                       # 4-byte Folded Spill
{
	jmp	$BB0_1
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %while.end
{
	movigl	GR2,4
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
	sub	GR2, GR2, GR3
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
	.size	main, ($tmp0)-main


