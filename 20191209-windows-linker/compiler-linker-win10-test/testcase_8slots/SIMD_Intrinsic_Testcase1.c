#include<swift_math.h>

int main(){
	dspvi8 dspvi8_dst = {8};
	dspvi8 dspvi8_a = {1,2,3,4,5,6,7,8,9,0,'a','b','c','d'};
	dspvi8 dspvi8_b = {12,23,34,45,56,67,78,89,90,10,'0','1','2','3'};
	dspvi16 dspvi16_dst = {16};
	dspvi16 dspvi16_a = {123,234,345,456,567,678,789,890,901,102,1,2,3,4,5,6,7,8,9,0};
	dspvi16 dspvi16_b = {12,23,34,45,56,67,78,89,90,10,123,234,345,456,567,678,789,890,901,102,1,2,3,4,5,6,7,8,9,0};
	dspvi32 dspvi32_dst = {32};
	dspvi32 dspvi32_a = {12,23,34,45,56,67,78,89,90,10,123,234,345,456,567,678,789,890,901,102,1,2,3,4,5,6,7,8,9,0,12,23,34,45,56,67,78,89,90,10};
	dspvi32 dspvi32_b = {12,23,34,45,56,67,78,89,90,10,123,234,345,456,567,678,789,890,901,102,1,2,3,4,5,6,7,8,9,0,12,23,34,45,56,67,78,89,90,10,56,567,678,789,890,901,102,1,2,3,4,5};
	int int_a=1,int_b=22,int_c=333,int_dst=4444;
	
	/*dspvi32 c = __builtin_dsp_vmax_40(dspvi8_a, dspvi8_a);
	dspvi16 g = __builtin_dsp_vmax_20(dspvi16_a, dspvi16_a);
	dspvi8 j = __builtin_dsp_vmax_10(dspvi32_a, dspvi32_a);*/
	
	dspvi8_dst = vmax_c(dspvi8_a, dspvi8_b);  
	dspvi16_dst = vmax_s(dspvi16_a, dspvi16_b);  
	dspvi32_dst = vmax_i(dspvi32_a, dspvi32_b);  
	dspvi8_dst = vmin_c(dspvi8_a, dspvi8_b);  
	dspvi16_dst = vmin_s(dspvi16_a, dspvi16_b);  
	dspvi32_dst = vmin_i(dspvi32_a, dspvi32_b);  
	//int_dst = bclr_qb(int_a); 
	dspvi8_dst = vsum_c(dspvi8_a);  
	dspvi16_dst = vsum_s(dspvi16_a);  
	dspvi32_dst = vsum_i(dspvi32_a);
	dspvi8_dst = veq_c(dspvi8_a, dspvi8_b);  
	dspvi16_dst = veq_s(dspvi16_a, dspvi16_b);  
	dspvi32_dst = veq_i(dspvi32_a, dspvi32_b);  
	dspvi8_dst = vgt_c(dspvi8_a, dspvi8_b);  
	dspvi16_dst = vgt_s(dspvi16_a, dspvi16_b);  
	dspvi32_dst = vgt_i(dspvi32_a, dspvi32_b);  
	dspvi8_dst = vlt_c(dspvi8_a, dspvi8_b);  
	dspvi16_dst = vlt_s(dspvi16_a, dspvi16_b);  
	dspvi32_dst = vlt_i(dspvi32_a, dspvi32_b);  
	dspvi8_dst = vge_c(dspvi8_a, dspvi8_b);  
	dspvi16_dst = vge_s(dspvi16_a, dspvi16_b);  
	dspvi32_dst = vge_i(dspvi32_a, dspvi32_b);  
	dspvi8_dst = vle_c(dspvi8_a, dspvi8_b);  
	dspvi16_dst = vle_s(dspvi16_a, dspvi16_b);  
	dspvi32_dst = vle_i(dspvi32_a, dspvi32_b);  
	dspvi8_dst = vadd_c(dspvi8_a, dspvi8_b);  
	dspvi16_dst = vadd_s(dspvi16_a, dspvi16_b);  
	dspvi32_dst = vadd_i(dspvi32_a, dspvi32_b);  
	dspvi8_dst = vsub_c(dspvi8_a, dspvi8_b);  
	dspvi16_dst = vsub_s(dspvi16_a, dspvi16_b);  
	dspvi32_dst = vsub_i(dspvi32_a, dspvi32_b); 
	return 0;
}