#include "vector_support.h"

v4si vla = {3,3,3,3};
v4si vlb = {1,2,3,4};

v4si v4si_2add(v4si a, v4si b)
{
    return a + b;
}

v4si v4si_3add(v4si a, v4si b, v4si c)
{
    return a + b + c;
}

int main(int argc, char const *argv[])
{
	vla += vlb;
	v4si vlc = v4si_2add(vla, vlb);
	v4si vld = v4si_3add(vla, vlb, vlc);
	vlc += vld;
	vla += vld;
	return 0;
}
