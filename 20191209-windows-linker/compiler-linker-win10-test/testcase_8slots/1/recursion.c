int sum(int);

int main(void)
{
	int n = 5;

	return sum(n);
}

int sum(int x)
{
	if(x <= 1)
		return x;
	else
		return (x + sum(x-1));
}