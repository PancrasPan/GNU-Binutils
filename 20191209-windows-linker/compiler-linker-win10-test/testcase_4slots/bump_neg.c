extern int a[256];
extern int sum;
//int b[3] = {1,2,3}


int add(void){

	for(int i = 255; i > 0; i -= 2)
		sum += a[i];
	
	return sum;
}