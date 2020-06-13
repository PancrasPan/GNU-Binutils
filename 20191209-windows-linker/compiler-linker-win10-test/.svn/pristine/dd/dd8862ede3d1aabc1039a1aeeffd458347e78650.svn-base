//if outFunct(int a, int b, int c) is set, a error occurred in
//backend.
//Whereas extern int outFunct(int a, int b, int *c) is fine.

extern int outFunct(int a, int *b, int *c);
int inFunct(int a, int *b, int *c);

int main(void){
	int a = 1;
	int b = 3;
	int c = 2;
	
	b = inFunct(a, &b, &c);
	b = outFunct(a, &b, &c);

	return b;
}

int inFunct(int a, int *b, int *c)
{
	return (a > *b)? *b: *c;
}