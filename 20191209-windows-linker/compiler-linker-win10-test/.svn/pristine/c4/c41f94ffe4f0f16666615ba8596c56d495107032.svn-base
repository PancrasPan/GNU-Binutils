#include "swift_math.h"

dspvi32 vla = {3,3,3,3};
dspvi32 vlb = {1,2,3,4};

dspvi32 dspvi32_2add(dspvi32 a, dspvi32 b)
{
    return a + b;
}

dspvi32 dspvi32_3add(dspvi32 a, dspvi32 b, dspvi32 c)
{
    return a + b + c;
}

int main(int argc, char const *argv[])
{
	vla += vlb;
	dspvi32 vlc = dspvi32_2add(vla, vlb);
	dspvi32 vld = dspvi32_3add(vla, vlb, vlc);
	vlc += vld;
	vla += vld;
	return 0;
}
