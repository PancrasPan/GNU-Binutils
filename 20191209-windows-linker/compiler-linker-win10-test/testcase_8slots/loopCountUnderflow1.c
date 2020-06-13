int a[5] = {1,2,3,4,5};

int add(void){

	int sum = 0;
	unsigned int i = 4;
	do{
		sum += a[i--];
	} while(i > 0);
	
	return sum;
}