typedef int v4si __attribute__((vector_size(64)));
typedef char v16sc __attribute__((vector_size(64)));

int main(){
	v4si a = { 0, 0, 0, 0 };
	v4si b = { 1, 2, 3, 4 };
	//v8ss e = { 1, 2, 3, 4, 5, 6, 7, 8 };
	//v8ss f = { 1, 2, 3, 4, 5, 6, 7, 8 };
	v16sc h = {  1,  2,  3,  4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16 };
	v16sc i = { 13, 14, 15, 16, 5, 6, 7, 8, 9, 10, 11, 12,  1,  2,  3,  4 };
	v4si c = __builtin_dsp_vmax_40(a, b);
	//v8ss g = __builtin_dsp_vmax_20(e, f);
	v16sc j = __builtin_dsp_vmax_10(h, i);
	return 0;
}
