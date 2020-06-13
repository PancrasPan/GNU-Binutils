	.text
	.file	"./c_standard_lib-master/MATH/XVALUES.ll"
	.type	_Hugeval,@object        # @_Hugeval
	.section	.rodata,"a",@progbits
	.globl	_Hugeval
	.align	3
_Hugeval:
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	32752                   # 0x7ff0
	.size	_Hugeval, 8

	.type	_Inf,@object            # @_Inf
	.globl	_Inf
	.align	3
_Inf:
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	32752                   # 0x7ff0
	.size	_Inf, 8

	.type	_Nan,@object            # @_Nan
	.globl	_Nan
	.align	3
_Nan:
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	65528                   # 0xfff8
	.size	_Nan, 8

	.type	_Rteps,@object          # @_Rteps
	.globl	_Rteps
	.align	3
_Rteps:
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	15936                   # 0x3e40
	.size	_Rteps, 8

	.type	_Xbig,@object           # @_Xbig
	.globl	_Xbig
	.align	3
_Xbig:
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	16768                   # 0x4180
	.size	_Xbig, 8


