int main()
{
	int i = 0;
	int j = 4;
	int k = 2;

	while((i<j || j>k) && !(i>=k)){		
			i++;
	}


	return (j-i);
}