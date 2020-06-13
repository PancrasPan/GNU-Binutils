#include<swift_math.h>

void SIMD_Intrinsic_Testcase0(){
	i8x256_t i8x256_t_dst = {8};
	i8x256_t i8x256_t_a = {1,2,3,4,5,6,7,8,9,0,'a','b','c','d'};
	i8x256_t i8x256_t_b = {12,23,34,45,56,67,78,89,90,10,'0','1','2','3'};
	i16x128_t i16x128_t_dst = {16};
	i16x128_t i16x128_t_a = {123,234,345,456,567,678,789,890,901,102,2,3,4,4,5,6,7,8,9,0};
	i16x128_t i16x128_t_b = {12,23,34,45,56,67,78,89,90,10,123,234,345,456,567,678,789,890,901,102,5,6,6,4,5,6,7,8,9,0};
	i32x64_t i32x64_t_dst = {32};
	i32x64_t i32x64_t_a = {12,23,34,45,56,67,78,89,90,10,123,234,345,456,567,678,789,890,901,102,5,5,5,4,5,6,7,8,9,0,12,23,34,45,56,67,78,89,90,10};
	i32x64_t i32x64_t_b = {12,23,34,45,56,67,78,89,90,10,123,234,345,456,567,678,789,890,901,102,7,7,7,4,5,6,7,8,9,0,12,23,34,45,56,67,78,89,90,10,56,567,678,789,890,901,102,3,1,2,4,5};
	int int_dst,int_a=1,int_b=2,int_c=3;
 	
	i8x256_t_dst = vmax_c(i8x256_t_a, i8x256_t_b);  
	i16x128_t_dst = vmax_s(i16x128_t_a, i16x128_t_b);  
	i32x64_t_dst = vmax_i(i32x64_t_a, i32x64_t_b);  
	i8x256_t_dst = vmin_c(i8x256_t_a, i8x256_t_b);  
	i16x128_t_dst = vmin_s(i16x128_t_a, i16x128_t_b);  
	i32x64_t_dst = vmin_i(i32x64_t_a, i32x64_t_b);  
	i8x256_t_dst = vsum_c(i8x256_t_a);  
	i16x128_t_dst = vsum_s(i16x128_t_a); 
 
	i8x256_t_dst = veq_c(i8x256_t_a, i8x256_t_b); 
	i16x128_t_dst = vltl_s(i16x128_t_a, i8x256_t_b);  
	i16x128_t_dst = vlth_s(i16x128_t_a, i8x256_t_b);  
	i32x64_t_dst = vsum_i(i32x64_t_a);  
	i8x256_t_dst = vnot_c(i8x256_t_a);  
	i8x256_t_dst = vand_c(i8x256_t_a, i8x256_t_b);  
	i8x256_t_dst = vor_c(i8x256_t_a, i8x256_t_b);  
	i8x256_t_dst = vxor_c(i8x256_t_a, i8x256_t_b);  
	i8x256_t_dst = vmovcv2v_c(i8x256_t_a, 1);  
	i16x128_t_dst = vltl_s(i16x128_t_a, i8x256_t_b);  
	i16x128_t_dst = vlth_s(i16x128_t_a, i8x256_t_b);    
	i8x256_t_dst = veq_c(i8x256_t_a, i8x256_t_b);  
	i16x128_t_dst = veq_s(i16x128_t_a, i16x128_t_b);  
	i32x64_t_dst = veq_i(i32x64_t_a, i32x64_t_b);  
	i8x256_t_dst = vgt_c(i8x256_t_a, i8x256_t_b);  
	i16x128_t_dst = vgt_s(i16x128_t_a, i16x128_t_b);  
	i32x64_t_dst = vgt_i(i32x64_t_a, i32x64_t_b);  
	i8x256_t_dst = vlt_c(i8x256_t_a, i8x256_t_b);  
	i16x128_t_dst = vlt_s(i16x128_t_a, i16x128_t_b);  
	i32x64_t_dst = vlt_i(i32x64_t_a, i32x64_t_b);  
	i8x256_t_dst = vge_c(i8x256_t_a, i8x256_t_b);  
	i16x128_t_dst = vge_s(i16x128_t_a, i16x128_t_b);  
	i32x64_t_dst = vge_i(i32x64_t_a, i32x64_t_b);  
	i8x256_t_dst = vle_c(i8x256_t_a, i8x256_t_b);  
	i16x128_t_dst = vle_s(i16x128_t_a, i16x128_t_b);  
	i32x64_t_dst = vle_i(i32x64_t_a, i32x64_t_b);  
	i8x256_t_dst = vadd_c(i8x256_t_a, i8x256_t_b);  
	i16x128_t_dst = vadd_s(i16x128_t_a, i16x128_t_b);  
	i32x64_t_dst = vadd_i(i32x64_t_a, i32x64_t_b);  
	i8x256_t_dst = vsub_c(i8x256_t_a, i8x256_t_b);  
	i16x128_t_dst = vsub_s(i16x128_t_a, i16x128_t_b);  
	i32x64_t_dst = vsub_i(i32x64_t_a, i32x64_t_b);  
	i8x256_t_dst = vsl_c(i8x256_t_a, i8x256_t_b);  
	i16x128_t_dst = vsl_s(i16x128_t_a, i16x128_t_b);  
	i32x64_t_dst = vsl_i(i32x64_t_a, i32x64_t_b);  
	i8x256_t_dst = vsls_c(i8x256_t_a, i8x256_t_b);  
	i16x128_t_dst = vsls_s(i16x128_t_a, i16x128_t_b);  
	i32x64_t_dst = vsls_i(i32x64_t_a, i32x64_t_b);  
	i8x256_t_dst = vsra_c(i8x256_t_a, i8x256_t_b);  
	i16x128_t_dst = vsra_s(i16x128_t_a, i16x128_t_b);  
	i32x64_t_dst = vsra_i(i32x64_t_a, i32x64_t_b);  
	i8x256_t_dst = vsrl_c(i8x256_t_a, i8x256_t_b);  
	i16x128_t_dst = vsrl_s(i16x128_t_a, i16x128_t_b);  
	i32x64_t_dst = vsrl_i(i32x64_t_a, i32x64_t_b);  
	i8x256_t_dst = vabs_c(i8x256_t_a);  
	i16x128_t_dst = vabs_s(i16x128_t_a);  
	i32x64_t_dst = vabs_i(i32x64_t_a);  
	i8x256_t_dst = vfmul_c(i8x256_t_a, i8x256_t_b);  
	i16x128_t_dst = vfmul_s(i16x128_t_a, i16x128_t_b);  
	i32x64_t_dst = vfmul_i(i32x64_t_a, i32x64_t_b);  
	i8x256_t_dst = vfmac_c(i8x256_t_a, i8x256_t_b);  
	i16x128_t_dst = vfmac_s(i16x128_t_a, i16x128_t_b);  
	i32x64_t_dst = vfmac_i(i32x64_t_a, i32x64_t_b);  
	i8x256_t_dst = vcmac_c(i8x256_t_a, i8x256_t_b);  
	i16x128_t_dst = vcmac_s(i16x128_t_a, i16x128_t_b);  
	i16x128_t_dst = vcmul_c(i16x128_t_a, i16x128_t_b);  
	i32x64_t_dst = vcmulr_i(i32x64_t_a, i32x64_t_b);  
	i32x64_t_dst = vcmuli_i(i32x64_t_a, i32x64_t_b); 
	int_dst = cbw_qb(int_a);  
	int_dst = chw_qb(int_a);  
	int_dst = abs_qb(int_a);  
	int_dst = test_qb(int_a); 
	int_dst = max_qb(int_a, int_b);  
	int_dst = mim_qb(int_a, int_b); 
	int_dst = not_qb(int_a); 
	
	int_dst = loadu_c(int_a, 1);  
	int_dst = loadu_s(int_a, 1);  
	int_dst = loadu_i(int_a, 1);  
	int_dst = loado_s(int_a, int_b);  
	int_dst = loado_i(int_a, int_b);  
	int_dst = storeo_s(int_a, int_b);  
	int_dst = storeo_i(int_a, int_b);
	
	i8x256_t_dst = storeu_c(int_a, 1);  
	i16x128_t_dst = storeu_s(int_a, 1);  
	i32x64_t_dst = storeu_i(int_a, 1);  
	storeu_void_c(int_a, int_b, 1);  
	storeu_void_s(int_a, int_b, 1);  
	storeu_void_i(int_a, int_b, 1);  
	
	/*i32x64_t_dst = loadvh_i(int_a, 1);  
	i32x64_t_dst = loadvl_i(int_a, 1);  
	i32x64_t_dst = storevh_i(int_a, 1);  
	i32x64_t_dst = storevl_i(int_a, 1);  
	i32x64_t_dst = loaduvh_i(int_a, 1);  
	i32x64_t_dst = loaduvl_i(int_a, 1);  
	i32x64_t_dst = storeuvh_i(int_a, 1);  
	i32x64_t_dst = storeuvl_i(int_a, 1);  */
	
	int_dst = testi_qb(1);  
	
	
	//int_dst = bfext_qb(int_a, 2,3);  
	//int_dst = bfextu_qb(int_a, 1, 1);  
	//int_dst = bfst_qb(int_a, 3,3); 

	int_dst = bst_qb(2); 
	int_dst = __builtin_dsp_bst_qb(5);
	int_dst = bclr_qb(5);	

	
	i32x64_t_dst= movg2v_i(int_a, 1) ;
	i16x128_t_dst= movg2v_s(int_a, 1) ;
	i8x256_t_dst= movg2v_c(int_a, 1) ;
	int_dst= movv2g_i(i32x64_t_a, 1) ;
	int_dst= movv2g_s(i16x128_t_a, 1) ;
	int_dst= movv2g_c(i8x256_t_a, 1) ;
	movl2v_c(i8x256_t_a) ;
	movv2l_c(i8x256_t_a) ;
	i8x256_t_dst= movv2v_c(i8x256_t_a) ;
	i32x64_t_dst= vmovg2v_i(int_a) ;
	i16x128_t_dst= vmovg2v_s(int_a) ;
	i8x256_t_dst= vmovg2v_c(int_a) ;
	/*
	i8x256_t_dst = vloadr_c(int_a, 1);  
	i16x128_t_dst = vloadr_s(int_a, 1);  
	i32x64_t_dst = vloadr_i(int_a, 1);  
	i8x256_t_dst = vloadu_c(int_a, 1);  
	i16x128_t_dst = vloadu_s(int_a, 1);  
	i32x64_t_dst = vloadu_i(int_a, 1);  
	i8x256_t_dst = vloadur_c(int_a, 1);  
	i16x128_t_dst = vloadur_s(int_a, 1);  
	i32x64_t_dst = vloadur_i(int_a, 1);  
	i8x256_t_dst = vloado_c(int_a, int_b);  
	i16x128_t_dst = vloado_s(int_a, int_b);  
	i32x64_t_dst = vloado_i(int_a, int_b);  
	i8x256_t_dst = vstoreo_c(int_a, int_b);  
	i16x128_t_dst = vstoreo_s(int_a, int_b);  
	i32x64_t_dst = vstoreo_i(int_a, int_b); 
	i8x256_t_dst = vstoreu_c(int_a, 1);  
	i16x128_t_dst = vstoreu_s(int_a, 1);  
	i32x64_t_dst = vstoreu_i(int_a, 1);  */	
}
int main(){
	SIMD_Intrinsic_Testcase0();
	return 0;
}
