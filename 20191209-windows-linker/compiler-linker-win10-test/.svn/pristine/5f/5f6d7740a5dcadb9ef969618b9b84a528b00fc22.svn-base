/*
FIR filter test sample

y[n] = Sum(h[m]*x[n-m])[0 <= m < nTaps],  0<=n<nSamples.  
*/
#define MAXSIZE 51
int nSamples = 40;
int nTaps = 16;
const int h[MAXSIZE] = {
      -35,   -219,   -503,   -494,     -8,    347,     19,   -348,     26,
      404,   -103,   -485,    220,    579,   -398,   -678,    663,    774,
    -1073,   -859,   1769,    925,  -3279,   -968,  10363,  17367,  10363,
     -968,  -3279,    925,   1769,   -859,  -1073,    774,    663,   -678,
     -398,    579,    220,   -485,   -103,    404,     26,   -348,     19,
      347,     -8,   -494,   -503,   -219,    -35};
int x[MAXSIZE] = {
	0,		1,		2,		3,		4,		5,		6,		7,		8,		9,
	0,		1,		2,		3,		4,		5,		6,		7,		8,		9,
	0,		1,		2,		3,		4,		5,		6,		7,		8,		9,
	0,		1,		2,		3,		4,		5,		6,		7,		8,		9,
	0,		1,		2,		3,		4,		5,		6,		7,		8,		9,
	0
};
int y[MAXSIZE];
int w[MAXSIZE];

void fir()
{
	int n, m, accum, mu;
	n = nSamples - 1;
	while (n >= 0)
	{
		m = 0;
		while (m < nTaps)
		{
			y[n] += h[m] * x[n-m];
			accum += y[n];
			m++;
		}
		n--;
	}
	n = nSamples - 1;
	mu = 2;
	for (int j = 0; j < nTaps; j++)
	{
		w[j] += mu*(x[n]-accum)*x[n-j];
	}
}