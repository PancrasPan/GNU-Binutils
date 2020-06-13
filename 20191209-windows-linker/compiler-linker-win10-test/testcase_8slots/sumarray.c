int g_Array[5] = {1,2,3,4,5};

int main(void){
	int sum = 0;
	
	for(int i = 0; i < 5; i++)
		sum += g_Array[i];

	return sum;
}