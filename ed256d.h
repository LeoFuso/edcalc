//
// Created by Leonardo Fuso on 15/12/17.
//

#ifndef ED256D_H
#define ED256D_H

#include <glob.h>
#include <immintrin.h>
#include <math.h>

class _256d
{
private:
    double inline remaining(const double *x,const double *y, size_t n);
public:
    double inline calculate(const double *x,const double *y, size_t n);
};

#endif //ED256D_H
