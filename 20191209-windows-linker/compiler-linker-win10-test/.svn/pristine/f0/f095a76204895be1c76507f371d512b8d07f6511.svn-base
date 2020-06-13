
extern int ex_array[256];
extern int sum;

extern const int bound;


int add(int *p_array, int p_size){
//static int i = 0;
	int half = p_size>>1;
	int i = 0;

	for( ; i < 255; i++){

		for(int j = half; j >= 0; j -= 2)
			sum += p_array[j];

		while(half < 255)
			sum -= ex_array[half++];
	}

	do{
		
	} while(i++ < bound);
	sum += i;
	
	return sum;
}