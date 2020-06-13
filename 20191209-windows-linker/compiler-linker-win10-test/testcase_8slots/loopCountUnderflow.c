
//\brief   %cmp = icmp eq i32 %dec, 0
int a[5] = {1,2,3,4,5};
extern 	unsigned int i;

int add(void){

	int sum = 0;
	
	do{
		sum += a[i--];
	} while(i > 0);
	
	return sum;
}