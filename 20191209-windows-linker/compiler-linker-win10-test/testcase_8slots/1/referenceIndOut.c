int Array1[7] = {1,2,3,4,5,6,7};
int arraySize = 7;

int main(void){
	int sum = 0;
	int i = 0;

	for(i; i < arraySize; i += 3){
		sum += Array1[i];
	}
	
	//Reference iterator after loop
	return sum + i;
}