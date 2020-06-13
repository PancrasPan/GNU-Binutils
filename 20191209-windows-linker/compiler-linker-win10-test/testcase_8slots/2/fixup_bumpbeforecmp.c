extern int a[256];
extern int sum;
//int b[3] = {1,2,3}

int add(void){

	int i = 0;
	do{
		i++;
		if(i-1 >= 256)
			break;

		sum += a[i-1];
	}while(1);
	
	return sum;
}