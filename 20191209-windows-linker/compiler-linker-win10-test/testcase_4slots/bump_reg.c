extern int a[256];
extern int sum;
//int b[3] = {1,2,3}


int add(void){

	int bumpv = 1;
	for(int i = 0; i < 255; i += bumpv)
		sum += a[i];
	
	return sum;
}