typedef int v4i __attribute__((vector_size(64)));

int main(){

	v4i a = { 1<<8, 2<<8, 3<<8, 4<<8 };
	v4i b = { 0, 0, 0, 0 };
	//v8s e = { 1, 2, 3, 4, 5, 6, 7, 8 };
	//v8s f = { 1, 2, 3, 4, 5, 6, 7, 8 };
	v4i c = __builtin_dsp_vmax_40(a, b);
	//v8s g = __builtin_dsp_vmax_20(e, f);

	return 0;
}
