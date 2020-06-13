extern int ExArray[5];
extern int sum;
//int b[3] = {1,2,3}

extern const int threshold;
extern const int bound;


int add(int *p_array, int asize){
//static int i = 0;
	int i = 0;
	for(i; i<asize; i += 2){
		if(p_array[i] < bound){
			sum += ExArray[i];
			if(sum > threshold)
				break;
		}
		else
			sum += p_array[i];
	}
	
	return sum;
}