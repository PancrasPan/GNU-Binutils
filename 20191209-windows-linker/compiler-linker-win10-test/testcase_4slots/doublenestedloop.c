extern int a[256][256];
extern int sum;
//int b[3] = {1,2,3}

int add(void){

	for(int i = 0; i<256; i += 2)
		for(int j = i; j<256; j++)
			sum += a[i][j];
	
	return sum;
}