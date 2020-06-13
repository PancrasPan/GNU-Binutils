
extern int outFunct(int a, int *b, int *c);

int a = 1;
extern int b;
extern int c;

int main(void){


	b = outFunct(a, &b, &c);

	return b;
}