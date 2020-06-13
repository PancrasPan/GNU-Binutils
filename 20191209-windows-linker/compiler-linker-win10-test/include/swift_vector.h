#ifndef DSP_VECTOR
#define DSP_VECTOR
/*
The total bit width of the vector is 2048 bits
i32x64_t contains 64 pieces of data, each of which is 32 bits, or int
i16x128_t contains 128 pieces of data, each of which is 16 bits, or short
i8x256_t contains 256 pieces of data, each of which is 8 bits, or char
*/
#define VPSEL_ADDR 0x007f3600
#define VECTOR_LEN 256
typedef int i32x64_t __attribute__((vector_size(256)));
typedef short i16x128_t __attribute__((vector_size(256)));
typedef signed char i8x256_t __attribute__((vector_size(256)));

typedef int dspvi32 __attribute__((vector_size(256)));
typedef short dspvi16 __attribute__((vector_size(256)));
typedef signed char dspvi8 __attribute__((vector_size(256)));
/*
 Fix point data type
*/
//32-bit fractional data type in 1.31 format.
typedef int q31_t;
typedef i32x64_t vq31_t;
//16-bit fractional data type in 1.15 format.
typedef short q15_t;
typedef i16x128_t vq15_t;
//8-bit fractional data type in 1.7 format.
typedef signed char q7_t;
typedef i8x256_t vq7_t;

#endif


