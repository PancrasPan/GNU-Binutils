int main()
{
	int i = 0;
	int j = 5;
	int k = 0;
	int retval = 0;

//	while(i < j){
		for( ; i<3; i++)retval++;
		for( ; j>3; j--)retval--;
		for( ; k<j; k++)retval += 2;
//	if(i == j)
//		retval = 0;
//	}

	return retval;
}