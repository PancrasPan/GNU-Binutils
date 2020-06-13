/*
FIR filter test sample

y[n] = Sum(h[m]*x[n-m])[0 <= m < nTaps],  0<=n<nSamples.
*/
int nSamples = 40;
//If nTaps is not specified as constant, it will be loaded
//in the outter while loop because the compiler doesn't make
//sure if y[] will overwritten it.
const int nTaps = 16;

void fir(const int h[], const int x[], int y[]);
int main() {
	const int h[51] = {
		  -35,   -219,   -503,   -494,     -8,    347,     19,   -348,     26,
		  404,   -103,   -485,    220,    579,   -398,   -678,    663,    774,
		-1073,   -859,   1769,    925,  -3279,   -968,  10363,  17367,  10363,
		 -968,  -3279,    925,   1769,   -859,  -1073,    774,    663,   -678,
		 -398,    579,    220,   -485,   -103,    404,     26,   -348,     19,
		  347,     -8,   -494,   -503,   -219,    -35 };
	int x[51] = {
	   0,		1,		2,		3,		4,		5,		6,		7,		8,		9,
	   0,		1,		2,		3,		4,		5,		6,		7,		8,		9,
	   0,		1,		2,		3,		4,		5,		6,		7,		8,		9,
	   0,		1,		2,		3,		4,		5,		6,		7,		8,		9,
	   0,		1,		2,		3,		4,		5,		6,		7,		8,		9,
	   0
	};
	int y[51] = {
		0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0
	};
	fir(h, x, y);
	return 0;
	//As y[] is passed by argument, compiler can't confirm its scope when
	//compling this single file.
}
void fir(const int h[], const int x[], int y[])
{
	int n, m;
	n = nSamples - 1;
	while (n >= 0)
	{
		m = 0;
		while (m < nTaps)
		{
			//Here compiler will store y[n] in every time
			//because it is not sure whether the content in x[] or h[]
			//will be covered by y[n].
			y[n] += h[m] * x[n - m];
			m++;
		}
		n--;
	}
}