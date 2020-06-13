static int a = 1;
static int b;
static int* pa =&a;
static int* pb =&b;

extern int g2;

int* pg2 =&g2;

int main()
{
	(*pa)++;
	*pb += -1;
	*pg2 = *pa +1;

	return 0;
}