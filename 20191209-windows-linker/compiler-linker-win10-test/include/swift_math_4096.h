#include <swift_vector_4096.h>
/*
__attribute__((always_inline)) inline i10x256_t vmax_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vmax_10(a,b);}
__attribute__((always_inline)) inline i20x128_t vmax_s(i20x128_t a, i20x128_t b) { return __builtin_dsp_vmax_20(a,b);}
__attribute__((always_inline)) inline i40x64_t vmax_i(i40x64_t a, i40x64_t b) { return __builtin_dsp_vmax_40(a,b);}
__attribute__((always_inline)) inline i10x256_t vmin_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vmin_10(a,b);}
__attribute__((always_inline)) inline i20x128_t vmin_s(i20x128_t a, i20x128_t b) { return __builtin_dsp_vmin_20(a,b);}
__attribute__((always_inline)) inline i40x64_t vmin_i(i40x64_t a, i40x64_t b) { return __builtin_dsp_vmin_40(a,b);}
__attribute__((always_inline)) inline i10x256_t vsum_c(i10x256_t a) { return __builtin_dsp_vsum_10(a);}
__attribute__((always_inline)) inline i20x128_t vsum_s(i20x128_t a) { return __builtin_dsp_vsum_20(a);}
__attribute__((always_inline)) inline i40x64_t vsum_i(i40x64_t a) { return __builtin_dsp_vsum_40(a);}
__attribute__((always_inline)) inline i10x256_t vnot_c(i10x256_t a) { return __builtin_dsp_vnot(a);}
__attribute__((always_inline)) inline i10x256_t vand_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vand(a,b);}
__attribute__((always_inline)) inline i10x256_t vor_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vor(a,b);}
__attribute__((always_inline)) inline i10x256_t vxor_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vxor(a,b);}
__attribute__((always_inline)) inline i10x256_t vmovcv2v_c(i10x256_t a, int b) { return __builtin_dsp_vmovcv2v(a,b);}
__attribute__((always_inline)) inline i20x128_t vltl_s(i20x128_t a, i10x256_t b) { return __builtin_dsp_vltl(a,b);}
__attribute__((always_inline)) inline i20x128_t vlth_s(i20x128_t a, i10x256_t b) { return __builtin_dsp_vlth(a,b);}
__attribute__((always_inline)) inline i10x256_t veq_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_veq_10(a,b);}
__attribute__((always_inline)) inline i20x128_t veq_s(i20x128_t a, i20x128_t b) { return __builtin_dsp_veq_20(a,b);}
__attribute__((always_inline)) inline i40x64_t veq_i(i40x64_t a, i40x64_t b) { return __builtin_dsp_veq_40(a,b);}
__attribute__((always_inline)) inline i10x256_t vgt_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vgt_10(a,b);}
__attribute__((always_inline)) inline i20x128_t vgt_s(i20x128_t a, i20x128_t b) { return __builtin_dsp_vgt_20(a,b);}
__attribute__((always_inline)) inline i40x64_t vgt_i(i40x64_t a, i40x64_t b) { return __builtin_dsp_vgt_40(a,b);}
__attribute__((always_inline)) inline i10x256_t vlt_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vlt_10(a,b);}
__attribute__((always_inline)) inline i20x128_t vlt_s(i20x128_t a, i20x128_t b) { return __builtin_dsp_vlt_20(a,b);}
__attribute__((always_inline)) inline i40x64_t vlt_i(i40x64_t a, i40x64_t b) { return __builtin_dsp_vlt_40(a,b);}
__attribute__((always_inline)) inline i10x256_t vge_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vge_10(a,b);}
__attribute__((always_inline)) inline i20x128_t vge_s(i20x128_t a, i20x128_t b) { return __builtin_dsp_vge_20(a,b);}
__attribute__((always_inline)) inline i40x64_t vge_i(i40x64_t a, i40x64_t b) { return __builtin_dsp_vge_40(a,b);}
__attribute__((always_inline)) inline i10x256_t vle_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vle_10(a,b);}
__attribute__((always_inline)) inline i20x128_t vle_s(i20x128_t a, i20x128_t b) { return __builtin_dsp_vle_20(a,b);}
__attribute__((always_inline)) inline i40x64_t vle_i(i40x64_t a, i40x64_t b) { return __builtin_dsp_vle_40(a,b);}
__attribute__((always_inline)) inline i10x256_t vadd_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vadd_10(a,b);}
__attribute__((always_inline)) inline i20x128_t vadd_s(i20x128_t a, i20x128_t b) { return __builtin_dsp_vadd_20(a,b);}
__attribute__((always_inline)) inline i40x64_t vadd_i(i40x64_t a, i40x64_t b) { return __builtin_dsp_vadd_40(a,b);}
__attribute__((always_inline)) inline i10x256_t vsub_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vsub_10(a,b);}
__attribute__((always_inline)) inline i20x128_t vsub_s(i20x128_t a, i20x128_t b) { return __builtin_dsp_vsub_20(a,b);}
__attribute__((always_inline)) inline i40x64_t vsub_i(i40x64_t a, i40x64_t b) { return __builtin_dsp_vsub_40(a,b);}
__attribute__((always_inline)) inline i10x256_t vsl_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vsl_10(a,b);}
__attribute__((always_inline)) inline i20x128_t vsl_s(i20x128_t a, i20x128_t b) { return __builtin_dsp_vsl_20(a,b);}
__attribute__((always_inline)) inline i40x64_t vsl_i(i40x64_t a, i40x64_t b) { return __builtin_dsp_vsl_40(a,b);}
__attribute__((always_inline)) inline i10x256_t vsls_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vsls_10(a,b);}
__attribute__((always_inline)) inline i20x128_t vsls_s(i20x128_t a, i20x128_t b) { return __builtin_dsp_vsls_20(a,b);}
__attribute__((always_inline)) inline i40x64_t vsls_i(i40x64_t a, i40x64_t b) { return __builtin_dsp_vsls_40(a,b);}
__attribute__((always_inline)) inline i10x256_t vsra_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vsra_10(a,b);}
__attribute__((always_inline)) inline i20x128_t vsra_s(i20x128_t a, i20x128_t b) { return __builtin_dsp_vsra_20(a,b);}
__attribute__((always_inline)) inline i40x64_t vsra_i(i40x64_t a, i40x64_t b) { return __builtin_dsp_vsra_40(a,b);}
__attribute__((always_inline)) inline i10x256_t vsrl_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vsrl_10(a,b);}
__attribute__((always_inline)) inline i20x128_t vsrl_s(i20x128_t a, i20x128_t b) { return __builtin_dsp_vsrl_20(a,b);}
__attribute__((always_inline)) inline i40x64_t vsrl_i(i40x64_t a, i40x64_t b) { return __builtin_dsp_vsrl_40(a,b);}
__attribute__((always_inline)) inline i10x256_t vabs_c(i10x256_t a) { return __builtin_dsp_vabs_10(a);}
__attribute__((always_inline)) inline i20x128_t vabs_s(i20x128_t a) { return __builtin_dsp_vabs_20(a);}
__attribute__((always_inline)) inline i40x64_t vabs_i(i40x64_t a) { return __builtin_dsp_vabs_40(a);}
__attribute__((always_inline)) inline i10x256_t vfmul_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vfmul_10(a,b);}
__attribute__((always_inline)) inline i20x128_t vfmul_s(i20x128_t a, i20x128_t b) { return __builtin_dsp_vfmul_20(a,b);}
__attribute__((always_inline)) inline i40x64_t vfmul_i(i40x64_t a, i40x64_t b) { return __builtin_dsp_vfmul_40(a,b);}
__attribute__((always_inline)) inline i10x256_t vfmac_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vfmac_10(a,b);}
__attribute__((always_inline)) inline i20x128_t vfmac_s(i20x128_t a, i20x128_t b) { return __builtin_dsp_vfmac_20(a,b);}
__attribute__((always_inline)) inline i40x64_t vfmac_i(i40x64_t a, i40x64_t b) { return __builtin_dsp_vfmac_40(a,b);}
__attribute__((always_inline)) inline i10x256_t vcmac_c(i10x256_t a, i10x256_t b) { return __builtin_dsp_vcmac_10(a,b);}
__attribute__((always_inline)) inline i20x128_t vcmac_s(i20x128_t a, i20x128_t b) { return __builtin_dsp_vcmac_20(a,b);}
__attribute__((always_inline)) inline i20x128_t vcmul_c(i20x128_t a, i20x128_t b) { return __builtin_dsp_vcmul_20(a,b);}
__attribute__((always_inline)) inline i40x64_t vcmulr_i(i40x64_t a, i40x64_t b) { return __builtin_dsp_vcmulr_40(a,b);}
__attribute__((always_inline)) inline i40x64_t vcmuli_i(i40x64_t a, i40x64_t b) { return __builtin_dsp_vcmuli_40(a,b);}
__attribute__((always_inline)) inline int abs_qb(int a) { return __builtin_dsp_abs_qb(a);}
__attribute__((always_inline)) inline int cbw_qb(int a) { return __builtin_dsp_cbw_qb(a);}
__attribute__((always_inline)) inline int chw_qb(int a) { return __builtin_dsp_chw_qb(a);}
__attribute__((always_inline)) inline int max_qb(int a, int b) { return __builtin_dsp_max(a,b);}
__attribute__((always_inline)) inline int mim_qb(int a, int b) { return __builtin_dsp_min(a,b);}
__attribute__((always_inline)) inline int not_qb(int a) { return __builtin_dsp_not(a);}
__attribute__((always_inline)) inline int bfext_qb(int a, int b, int c) { return __builtin_dsp_bfext_qb(a,b,c);}
__attribute__((always_inline)) inline int bfextu_qb(int a, int b, int c) { return __builtin_dsp_bfextu_qb(a,b,c);}
__attribute__((always_inline)) inline int bfst_qb(int a, int b, int c) { return __builtin_dsp_bfst_qb(a,b,c);}
__attribute__((always_inline)) inline int bst_qb(int a) { return __builtin_dsp_bst_qb(a);}
__attribute__((always_inline)) inline int bclr_qb(int a) { return __builtin_dsp_bclr_qb(a);}

__attribute__((always_inline)) inline i40x64_t movg2v_i(int a, int b) { return __builtin_dsp_movg2v_40(a,b);}
__attribute__((always_inline)) inline i20x128_t movg2v_s(int a, int b) { return __builtin_dsp_movg2v_20(a,b);}
__attribute__((always_inline)) inline i10x256_t movg2v_c(int a, int b) { return __builtin_dsp_movg2v_10(a,b);}
__attribute__((always_inline)) inline int movv2g_i(i40x64_t a, int b) { return __builtin_dsp_movv2g_40(a,b);}
__attribute__((always_inline)) inline int movv2g_s(i20x128_t a, int b) { return __builtin_dsp_movv2g_20(a,b);}
__attribute__((always_inline)) inline int movv2g_c(i10x256_t a, int b) { return __builtin_dsp_movv2g_10(a,b);}
__attribute__((always_inline)) inline void movl2v_c(i10x256_t a) { __builtin_dsp_movl2v(a);}
__attribute__((always_inline)) inline void movv2l_c(i10x256_t a) { __builtin_dsp_movv2l(a);}
__attribute__((always_inline)) inline i10x256_t movv2v_c(i10x256_t a) { return __builtin_dsp_movv2v(a);}
__attribute__((always_inline)) inline i40x64_t vmovg2v_i(int a) { return __builtin_dsp_vmovg2v_40(a);}
__attribute__((always_inline)) inline i20x128_t vmovg2v_s(int a) { return __builtin_dsp_vmovg2v_20(a);}
__attribute__((always_inline)) inline i10x256_t vmovg2v_c(int a) { return __builtin_dsp_vmovg2v_10(a);}


__attribute__((always_inline)) inline int loadu_c(int a, int b) { return __builtin_dsp_loadu_8(a,b);}
__attribute__((always_inline)) inline int loadu_s(int a, int b) { return __builtin_dsp_loadu_16(a,b);}
__attribute__((always_inline)) inline int loadu_i(int a, int b) { return __builtin_dsp_loadu_32(a,b);}
__attribute__((always_inline)) inline int loado_s(int a, int b) { return __builtin_dsp_loado_16(a,b);}
__attribute__((always_inline)) inline int loado_i(int a, int b) { return __builtin_dsp_loado_32(a,b);}
__attribute__((always_inline)) inline int storeo_s(int a, int b) { return __builtin_dsp_storeo_16(a,b);}
__attribute__((always_inline)) inline int storeo_i(int a, int b) { return __builtin_dsp_storeo_32(a,b);}

__attribute__((always_inline)) inline i10x256_t storeu_c(int a, int b) { return __builtin_dsp_storeu_10(a,b);}
__attribute__((always_inline)) inline i20x128_t storeu_s(int a, int b) { return __builtin_dsp_storeu_20(a,b);}
__attribute__((always_inline)) inline i40x64_t storeu_i(int a, int b) { return __builtin_dsp_storeu_40(a,b);}
__attribute__((always_inline)) inline void storeu_void_c(int a, int b, int c) { __builtin_dsp_storeu_8(a,b,c);}
__attribute__((always_inline)) inline void storeu_void_s(int a, int b, int c) { __builtin_dsp_storeu_16(a,b,c);}
__attribute__((always_inline)) inline void storeu_void_i(int a, int b, int c) { __builtin_dsp_storeu_32(a,b,c);}

__attribute__((always_inline)) inline i40x64_t loadvh_i(int a, int b) { return __builtin_dsp_loadvh(a,b);}
__attribute__((always_inline)) inline i40x64_t loadvl_i(int a, int b) { return __builtin_dsp_loadvl(a,b);}
__attribute__((always_inline)) inline i40x64_t storevh_i(int a, int b) { return __builtin_dsp_storevh(a,b);}
__attribute__((always_inline)) inline i40x64_t storevl_i(int a, int b) { return __builtin_dsp_storevl(a,b);}
__attribute__((always_inline)) inline i40x64_t loaduvh_i(int a, int b) { return __builtin_dsp_loaduvh(a,b);}
__attribute__((always_inline)) inline i40x64_t loaduvl_i(int a, int b) { return __builtin_dsp_loaduvl(a,b);}
__attribute__((always_inline)) inline i40x64_t storeuvh_i(int a, int b) { return __builtin_dsp_storeuvh(a,b);}
__attribute__((always_inline)) inline i40x64_t storeuvl_i(int a, int b) { return __builtin_dsp_storeuvl(a,b);}

__attribute__((always_inline)) inline int testi_qb(int a) { return __builtin_dsp_testi_qb(a);}
__attribute__((always_inline)) inline int test_qb(int a) { return __builtin_dsp_test_qb(a);}*/

__attribute__((always_inline)) inline i8x256_t vloado_c(int a, int b) { return __builtin_dsp_vloado_8(a,b);}
__attribute__((always_inline)) inline i16x128_t vloado_s(int a, int b) { return __builtin_dsp_vloado_16(a,b);}
__attribute__((always_inline)) inline i32x64_t vloado_i(int a, int b) { return __builtin_dsp_vloado_32(a,b);}
__attribute__((always_inline)) inline i8x256_t vstoreo_c(int a, int b) { return __builtin_dsp_vstoreo_10(a,b);}
__attribute__((always_inline)) inline i16x128_t vstoreo_s(int a, int b) { return __builtin_dsp_vstoreo_20(a,b);}
__attribute__((always_inline)) inline i32x64_t vstoreo_i(int a, int b) { return __builtin_dsp_vstoreo_40(a,b);}
__attribute__((always_inline)) inline i8x256_t vloadr_c(int a, int b) { return __builtin_dsp_vloadr_8(a,b);}
__attribute__((always_inline)) inline i16x128_t vloadr_s(int a, int b) { return __builtin_dsp_vloadr_16(a,b);}
__attribute__((always_inline)) inline i32x64_t vloadr_i(int a, int b) { return __builtin_dsp_vloadr_32(a,b);}
__attribute__((always_inline)) inline i8x256_t vloadu_c(int a, int b) { return __builtin_dsp_vloadu_8(a,b);}
__attribute__((always_inline)) inline i16x128_t vloadu_s(int a, int b) { return __builtin_dsp_vloadu_16(a,b);}
__attribute__((always_inline)) inline i32x64_t vloadu_i(int a, int b) { return __builtin_dsp_vloadu_32(a,b);}
__attribute__((always_inline)) inline i8x256_t vloadur_c(int a, int b) { return __builtin_dsp_vloadur_8(a,b);}
__attribute__((always_inline)) inline i16x128_t vloadur_s(int a, int b) { return __builtin_dsp_vloadur_16(a,b);}
__attribute__((always_inline)) inline i32x64_t vloadur_i(int a, int b) { return __builtin_dsp_vloadur_32(a,b);}
__attribute__((always_inline)) inline i8x256_t vstoreu_c(int a, int b) { return __builtin_dsp_vstoreu_10(a,b);}
__attribute__((always_inline)) inline i16x128_t vstoreu_s(int a, int b) { return __builtin_dsp_vstoreu_20(a,b);}
__attribute__((always_inline)) inline i32x64_t vstoreu_i(int a, int b) { return __builtin_dsp_vstoreu_40(a,b);}

