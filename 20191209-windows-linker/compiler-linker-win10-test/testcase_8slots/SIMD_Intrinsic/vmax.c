#include <swift_math.h>

int main(){
	dspvi32 a = { 0, 0, 0, 0 };
	dspvi32 b = { 1, 2, 3, 4 };
	dspvi16 e = { 1, 2, 3, 4, 5, 6, 7, 8 };
	dspvi16 f = { 1, 2, 3, 4, 5, 6, 7, 8 };
	dspvi8 h = {  1,  2,  3,  4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16 };
	dspvi8 i = { 13, 14, 15, 16, 5, 6, 7, 8, 9, 10, 11, 12,  1,  2,  3,  4 };
	dspvi32 c = __builtin_dsp_vmax_40(a, b);
	dspvi16 g = __builtin_dsp_vmax_20(e, f);
	dspvi8 j = __builtin_dsp_vmax_10(h, i);
	return 0;
}
