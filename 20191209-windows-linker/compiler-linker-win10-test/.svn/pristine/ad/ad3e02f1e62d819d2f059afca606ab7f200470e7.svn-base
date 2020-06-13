/*
FIR filter test sample

y[n] = Sum(h[m]*x[n-m])[0 <= m < nTaps],  0<=n<nSamples.  
*/
#define MAXSIZE 16
int nSamples = 16;
int nTaps = 16;
const int h[MAXSIZE] = {
      1,   1,   1,   1, 
      1,   1,   1,   1,
      1,   1, 	1,   1,
      1,   1,   1,   1
  };

int x[MAXSIZE] = {
      1,   1,   1,   1, 
      1,   1,   1,   1,
      1,   1, 	1,   1,
      1,   1,   1,   1
};

int y[MAXSIZE];
int w[MAXSIZE];

int main()
{
	int n, m, accum = 0, mu;
	n = nSamples - 1;
	while (n >= 0)
	{
		m = 0;
		while (m < nTaps)
		{
			y[n] += h[m] * x[n-m];
			m++;
		}
		accum += y[n];
		n--;
	}
	
	n = nSamples - 1;
	mu = 2;
	for (int j = 0; j < nTaps; j++)
	{
		w[j] += mu*(x[n]-accum)*x[n-j];
	}

	return 0;
}