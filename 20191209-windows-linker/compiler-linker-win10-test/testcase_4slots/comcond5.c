/*Error when we referred the argument in compound condition*/

extern int array[];
// static const int beg = 0;
// static const int end = 4;

int part(int beg, int end)
// int part()
{
	int i = beg, j = end;

	while(i < j && array[j] > array[beg])
	// while(array[j] > array[beg])
		j--;

	return j - i;
}