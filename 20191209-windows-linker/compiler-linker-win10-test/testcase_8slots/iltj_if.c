int main()
{
	//int array[3] = {0};
	int i = 0;
	int j = 4;
	int k = 2;

	if(i < j)
		i++;
	else
		j++;
	if(j > k)
		k++;
	else
		j++;
	if(i<=k)
		i++;
	else
		k++;

	//array[2] = j;

	return (j-i);
}