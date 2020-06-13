#ifndef SWIFT_MATH_H
#define SWIFT_MATH_H
#include <swift_vector.h>
/*
The total bit width of the vector is 2048 bits
dspvi32 contains 64 pieces of data, each of which is 32 bits, or int
dspvi16 contains 128 pieces of data, each of which is 16 bits, or short
dspvi8 contains 256 pieces of data, each of which is 8 bits, or char
*/

__attribute__((always_inline)) inline dspvi8 vmax_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vmax_10(a,b);}
__attribute__((always_inline)) inline dspvi16 vmax_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_vmax_20(a,b);}
__attribute__((always_inline)) inline dspvi32 vmax_i(dspvi32 a, dspvi32 b) { return __builtin_dsp_vmax_40(a,b);}
__attribute__((always_inline)) inline dspvi8 vmin_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vmin_10(a,b);}
__attribute__((always_inline)) inline dspvi16 vmin_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_vmin_20(a,b);}
__attribute__((always_inline)) inline dspvi32 vmin_i(dspvi32 a, dspvi32 b) { return __builtin_dsp_vmin_40(a,b);}
__attribute__((always_inline)) inline dspvi8 vsum_c(dspvi8 a) { return __builtin_dsp_vsum_10(a);}
__attribute__((always_inline)) inline dspvi16 vsum_s(dspvi16 a) { return __builtin_dsp_vsum_20(a);}
__attribute__((always_inline)) inline dspvi32 vsum_i(dspvi32 a) { return __builtin_dsp_vsum_40(a);}
__attribute__((always_inline)) inline dspvi8 vnot_c(dspvi8 a) { return __builtin_dsp_vnot(a);}
__attribute__((always_inline)) inline dspvi8 vand_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vand(a,b);}
__attribute__((always_inline)) inline dspvi8 vor_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vor(a,b);}
__attribute__((always_inline)) inline dspvi8 vxor_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vxor(a,b);}
__attribute__((always_inline)) inline dspvi8 vmovcv2v_c(dspvi8 a, int b) { return __builtin_dsp_vmovcv2v(a,b);}
__attribute__((always_inline)) inline dspvi16 vltl_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_vltl(a,b);}
__attribute__((always_inline)) inline dspvi16 vlth_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_vlth(a,b);}
__attribute__((always_inline)) inline dspvi8 veq_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_veq_10(a,b);}
__attribute__((always_inline)) inline dspvi16 veq_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_veq_20(a,b);}
__attribute__((always_inline)) inline dspvi32 veq_i(dspvi32 a, dspvi32 b) { return __builtin_dsp_veq_40(a,b);}
__attribute__((always_inline)) inline dspvi8 vgt_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vgt_10(a,b);}
__attribute__((always_inline)) inline dspvi16 vgt_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_vgt_20(a,b);}
__attribute__((always_inline)) inline dspvi32 vgt_i(dspvi32 a, dspvi32 b) { return __builtin_dsp_vgt_40(a,b);}
__attribute__((always_inline)) inline dspvi8 vlt_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vlt_10(a,b);}
__attribute__((always_inline)) inline dspvi16 vlt_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_vlt_20(a,b);}
__attribute__((always_inline)) inline dspvi32 vlt_i(dspvi32 a, dspvi32 b) { return __builtin_dsp_vlt_40(a,b);}
__attribute__((always_inline)) inline dspvi8 vge_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vge_10(a,b);}
__attribute__((always_inline)) inline dspvi16 vge_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_vge_20(a,b);}
__attribute__((always_inline)) inline dspvi32 vge_i(dspvi32 a, dspvi32 b) { return __builtin_dsp_vge_40(a,b);}
__attribute__((always_inline)) inline dspvi8 vle_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vle_10(a,b);}
__attribute__((always_inline)) inline dspvi16 vle_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_vle_20(a,b);}
__attribute__((always_inline)) inline dspvi32 vle_i(dspvi32 a, dspvi32 b) { return __builtin_dsp_vle_40(a,b);}
__attribute__((always_inline)) inline dspvi8 vadd_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vadd_10(a,b);}
__attribute__((always_inline)) inline dspvi16 vadd_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_vadd_20(a,b);}
__attribute__((always_inline)) inline dspvi32 vadd_i(dspvi32 a, dspvi32 b) { return __builtin_dsp_vadd_40(a,b);}
__attribute__((always_inline)) inline dspvi8 vsub_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vsub_10(a,b);}
__attribute__((always_inline)) inline dspvi16 vsub_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_vsub_20(a,b);}
__attribute__((always_inline)) inline dspvi32 vsub_i(dspvi32 a, dspvi32 b) { return __builtin_dsp_vsub_40(a,b);}
__attribute__((always_inline)) inline dspvi8 vsl_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vsl_10(a,b);}
__attribute__((always_inline)) inline dspvi16 vsl_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_vsl_20(a,b);}
__attribute__((always_inline)) inline dspvi32 vsl_i(dspvi32 a, dspvi32 b) { return __builtin_dsp_vsl_40(a,b);}
__attribute__((always_inline)) inline dspvi8 vsls_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vsls_10(a,b);}
__attribute__((always_inline)) inline dspvi16 vsls_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_vsls_20(a,b);}
__attribute__((always_inline)) inline dspvi32 vsls_i(dspvi32 a, dspvi32 b) { return __builtin_dsp_vsls_40(a,b);}
__attribute__((always_inline)) inline dspvi8 vsra_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vsra_10(a,b);}
__attribute__((always_inline)) inline dspvi16 vsra_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_vsra_20(a,b);}
__attribute__((always_inline)) inline dspvi32 vsra_i(dspvi32 a, dspvi32 b) { return __builtin_dsp_vsra_40(a,b);}
__attribute__((always_inline)) inline dspvi8 vsrl_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vsrl_10(a,b);}
__attribute__((always_inline)) inline dspvi16 vsrl_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_vsrl_20(a,b);}
__attribute__((always_inline)) inline dspvi32 vsrl_i(dspvi32 a, dspvi32 b) { return __builtin_dsp_vsrl_40(a,b);}
__attribute__((always_inline)) inline dspvi8 vabs_c(dspvi8 a) { return __builtin_dsp_vabs_10(a);}
__attribute__((always_inline)) inline dspvi16 vabs_s(dspvi16 a) { return __builtin_dsp_vabs_20(a);}
__attribute__((always_inline)) inline dspvi32 vabs_i(dspvi32 a) { return __builtin_dsp_vabs_40(a);}
__attribute__((always_inline)) inline dspvi8 vfmul_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vfmul_10(a,b);}
__attribute__((always_inline)) inline dspvi16 vfmul_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_vfmul_20(a,b);}
__attribute__((always_inline)) inline dspvi32 vfmul_i(dspvi32 a, dspvi32 b) { return __builtin_dsp_vfmul_40(a,b);}
__attribute__((always_inline)) inline dspvi8 vfmac_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vfmac_10(a,b);}
__attribute__((always_inline)) inline dspvi16 vfmac_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_vfmac_20(a,b);}
__attribute__((always_inline)) inline dspvi32 vfmac_i(dspvi32 a, dspvi32 b) { return __builtin_dsp_vfmac_40(a,b);}
__attribute__((always_inline)) inline dspvi8 vcmac_c(dspvi8 a, dspvi8 b) { return __builtin_dsp_vcmac_10(a,b);}
__attribute__((always_inline)) inline dspvi16 vcmac_s(dspvi16 a, dspvi16 b) { return __builtin_dsp_vcmac_20(a,b);}
__attribute__((always_inline)) inline dspvi16 vcmul_c(dspvi16 a, dspvi16 b) { return __builtin_dsp_vcmul_20(a,b);}
__attribute__((always_inline)) inline dspvi32 vcmulr_i(dspvi32 a, dspvi32 b) { return __builtin_dsp_vcmulr_40(a,b);}
__attribute__((always_inline)) inline dspvi32 vcmuli_i(dspvi32 a, dspvi32 b) { return __builtin_dsp_vcmuli_40(a,b);}
__attribute__((always_inline)) inline int abs_qb(int a) { return __builtin_dsp_abs_qb(a);}
__attribute__((always_inline)) inline int test_qb(int a) { return __builtin_dsp_test_qb(a);}
__attribute__((always_inline)) inline int cbw_qb(int a) { return __builtin_dsp_cbw_qb(a);}
__attribute__((always_inline)) inline int chw_qb(int a) { return __builtin_dsp_chw_qb(a);}
__attribute__((always_inline)) inline int max_qb(int a, int b) { return __builtin_dsp_max(a,b);}
__attribute__((always_inline)) inline int mim_qb(int a, int b) { return __builtin_dsp_min(a,b);}
__attribute__((always_inline)) inline int not_qb(int a) { return __builtin_dsp_not(a);}

__attribute__((always_inline)) inline int loadu_c(int a, int b) { return __builtin_dsp_loadu_8(a,b);}
__attribute__((always_inline)) inline int loadu_s(int a, int b) { return __builtin_dsp_loadu_16(a,b);}
__attribute__((always_inline)) inline int loadu_i(int a, int b) { return __builtin_dsp_loadu_32(a,b);}
__attribute__((always_inline)) inline int loado_s(int a, int b) { return __builtin_dsp_loado_16(a,b);}
__attribute__((always_inline)) inline int loado_i(int a, int b) { return __builtin_dsp_loado_32(a,b);}
__attribute__((always_inline)) inline int storeo_s(int a, int b) { return __builtin_dsp_storeo_16(a,b);}
__attribute__((always_inline)) inline int storeo_i(int a, int b) { return __builtin_dsp_storeo_32(a,b);}
__attribute__((always_inline)) inline dspvi8 vloadr_c(int a, int b) { return __builtin_dsp_vloadr_8(a,b);}
__attribute__((always_inline)) inline dspvi16 vloadr_s(int a, int b) { return __builtin_dsp_vloadr_16(a,b);}
__attribute__((always_inline)) inline dspvi32 vloadr_i(int a, int b) { return __builtin_dsp_vloadr_32(a,b);}
__attribute__((always_inline)) inline dspvi8 vloadu_c(int a, int b) { return __builtin_dsp_vloadu_8(a,b);}
__attribute__((always_inline)) inline dspvi16 vloadu_s(int a, int b) { return __builtin_dsp_vloadu_16(a,b);}
__attribute__((always_inline)) inline dspvi32 vloadu_i(int a, int b) { return __builtin_dsp_vloadu_32(a,b);}
__attribute__((always_inline)) inline dspvi8 vloadur_c(int a, int b) { return __builtin_dsp_vloadur_8(a,b);}
__attribute__((always_inline)) inline dspvi16 vloadur_s(int a, int b) { return __builtin_dsp_vloadur_16(a,b);}
__attribute__((always_inline)) inline dspvi32 vloadur_i(int a, int b) { return __builtin_dsp_vloadur_32(a,b);}
__attribute__((always_inline)) inline dspvi8 storeu_c(int a, int b) { return __builtin_dsp_storeu_10(a,b);}
__attribute__((always_inline)) inline dspvi16 storeu_s(int a, int b) { return __builtin_dsp_storeu_20(a,b);}
__attribute__((always_inline)) inline dspvi32 storeu_i(int a, int b) { return __builtin_dsp_storeu_40(a,b);}
__attribute__((always_inline)) inline void storeu_void_c(int a, int b, int c) { return __builtin_dsp_storeu_8(a,b,c);}
__attribute__((always_inline)) inline void storeu_void_s(int a, int b, int c) { return __builtin_dsp_storeu_16(a,b,c);}
__attribute__((always_inline)) inline void storeu_void_i(int a, int b, int c) { return __builtin_dsp_storeu_32(a,b,c);}
__attribute__((always_inline)) inline dspvi8 vstoreu_c(int a, int b) { return __builtin_dsp_vstoreu_10(a,b);}
__attribute__((always_inline)) inline dspvi16 vstoreu_s(int a, int b) { return __builtin_dsp_vstoreu_20(a,b);}
__attribute__((always_inline)) inline dspvi32 vstoreu_i(int a, int b) { return __builtin_dsp_vstoreu_40(a,b);}
__attribute__((always_inline)) inline dspvi32 loadvh_i(int a, int b) { return __builtin_dsp_loadvh(a,b);}
__attribute__((always_inline)) inline dspvi32 loadvl_i(int a, int b) { return __builtin_dsp_loadvl(a,b);}
__attribute__((always_inline)) inline dspvi32 storevh_i(int a, int b) { return __builtin_dsp_storevh(a,b);}
__attribute__((always_inline)) inline dspvi32 storevl_i(int a, int b) { return __builtin_dsp_storevl(a,b);}
__attribute__((always_inline)) inline dspvi32 loaduvh_i(int a, int b) { return __builtin_dsp_loaduvh(a,b);}
__attribute__((always_inline)) inline dspvi32 loaduvl_i(int a, int b) { return __builtin_dsp_loaduvl(a,b);}
__attribute__((always_inline)) inline dspvi32 storeuvh_i(int a, int b) { return __builtin_dsp_storeuvh(a,b);}
__attribute__((always_inline)) inline dspvi32 storeuvl_i(int a, int b) { return __builtin_dsp_storeuvl(a,b);}
__attribute__((always_inline)) inline dspvi8 vloado_c(int a, int b) { return __builtin_dsp_vloado_8(a,b);}
__attribute__((always_inline)) inline dspvi16 vloado_s(int a, int b) { return __builtin_dsp_vloado_16(a,b);}
__attribute__((always_inline)) inline dspvi32 vloado_i(int a, int b) { return __builtin_dsp_vloado_32(a,b);}
__attribute__((always_inline)) inline dspvi8 vstoreo_c(int a, int b) { return __builtin_dsp_vstoreo_10(a,b);}
__attribute__((always_inline)) inline dspvi16 vstoreo_s(int a, int b) { return __builtin_dsp_vstoreo_20(a,b);}
__attribute__((always_inline)) inline dspvi32 vstoreo_i(int a, int b) { return __builtin_dsp_vstoreo_40(a,b);}
__attribute__((always_inline)) inline int testi_qb(int a) { return __builtin_dsp_testi_qb(a);}
__attribute__((always_inline)) inline int bfext_qb(int a, int b, int c) { return __builtin_dsp_bfext_qb(a,b,c);}
__attribute__((always_inline)) inline int bfextu_qb(int a, int b, int c) { return __builtin_dsp_bfextu_qb(a,b,c);}
__attribute__((always_inline)) inline int bfst_qb(int a, int b, int c) { return __builtin_dsp_bfst_qb(a,b,c);}
__attribute__((always_inline)) inline int bst_qb(int a) { return __builtin_dsp_bst_qb(a);}
__attribute__((always_inline)) inline int bclr_qb(int a) { return __builtin_dsp_bclr_qb(a);}

#endif