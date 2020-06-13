extern int a[256];
extern int sum;
//int b[3] = {1,2,3}

int lowerbound = 0;
int upperbound = 256;

int add(void){

	for(int i = lowerbound; i<upperbound; i += 2)
		sum += a[i];
	
	return sum;
}