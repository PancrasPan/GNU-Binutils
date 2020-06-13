extern int a[256];
extern int sum;
//int b[3] = {1,2,3}

extern const int lowerbound;

int add(void){

	for(int i = lowerbound; i<256; i += 2)
		sum += a[i];
	
	return sum;
}