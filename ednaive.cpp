//
// Created by Leonardo Fuso on 15/12/17.
//

#include "ednaive.h"

_baseline::calculate(const double *x, const double *y, size_t n)
{
    double result = 0;
    for(; n > 0 ; --n){
        const double num = x[i] - y[i];
        result += num * num;
    }
    return sqrt(result);
}