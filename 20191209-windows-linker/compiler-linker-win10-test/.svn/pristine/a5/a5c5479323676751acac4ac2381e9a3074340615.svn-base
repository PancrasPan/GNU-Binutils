extern int a[256];
extern int sum;
//int b[3] = {1,2,3}


int add(int iscycle){

	if(iscycle){
		for(int i = 0; i < 256; i += 2)
			sum += a[i];
	}
	else
		sum = a[1];
	
	sum += a[255];
	return sum;
}