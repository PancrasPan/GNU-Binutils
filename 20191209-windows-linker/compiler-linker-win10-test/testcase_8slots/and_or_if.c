int main(){
	int i = 0;
	int j = 4;
	int k = 2;
	int l = 3;
	if(i < j && j > k){
			i++;
			k++;
	}
	
	if(i < j || j > k){
			i++;
			k++;
	}
	
	if((i<j && j>k)|| !(i>=k)){
			i++;
	}
	
	if((i<j || j>k)&& !(i>=k)){
			i++;
	}
	
	if((i < j && k < j) || (i < k && k < l)){
			i++;
			k++;
	}

	return (j-i);
}