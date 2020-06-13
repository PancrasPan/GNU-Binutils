#ifndef DSP_VECTOR
#define DSP_VECTOR
/*
The total bit width of the vector is 2048 bits
dspvi32 contains 64 pieces of data, each of which is 32 bits, or int
dspvi16 contains 128 pieces of data, each of which is 16 bits, or short
dspvi8 contains 256 pieces of data, each of which is 8 bits, or char
*/
typedef int dspvi32 __attribute__((vector_size(256)));
typedef short dspvi16 __attribute__((vector_size(256)));
typedef char dspvi8 __attribute__((vector_size(256)));
#endif


