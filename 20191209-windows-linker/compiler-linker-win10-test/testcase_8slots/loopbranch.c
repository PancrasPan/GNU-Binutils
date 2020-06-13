int Array1[7] = {1,2,3,4,5,6,7};
int Array2[7] = {1,2,4,8,16,32,64};
int arraySize = 7;

const int bound = 10;

int main(void){
	int sum = 0;
	int i = 1;

	for(i; i < arraySize; i += 2){
		if(Array1[i] < Array2[i]){
			sum += Array2[i];
			if(sum > bound)
				break;
		}
		else
			sum += Array1[i];
	}
	
	//Reference iterator after loop
	return sum + i;
}