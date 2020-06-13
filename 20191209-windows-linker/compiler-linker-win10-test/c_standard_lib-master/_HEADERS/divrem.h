#ifndef DIVREM_H
#define DIVREM_H
#include <types/div_t.h>
#include <limits.h>
#include <stdint.h>


typedef struct { unsigned int quot, rem; } udiv_t;
int __dsp_i32sdiv(int dividend, int divisor);
int __dsp_i32srem(int dividend, int divisor);
unsigned int __dsp_i32udiv(unsigned int dividend, unsigned int divisor);
unsigned int __dsp_i32urem(unsigned int dividend, unsigned int divisor);
div_t __dsp_i32sdivrem(int num, int denom);
udiv_t __dsp_i32udivrem(unsigned num, unsigned denom);

#endif
