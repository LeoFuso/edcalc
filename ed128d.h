//
// Created by Leonardo Fuso on 15/12/17.
//

#ifndef ED128D_H
#define ED128D_H

#include <glob.h>
#include <xmmintrin.h>
#include <math.h>

class _128d
{
public:
    double static inline calculate(const double *x,const double *y, size_t n);
};
#endif //ED128D_H
