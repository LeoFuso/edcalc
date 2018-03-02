//
// Created by Leonardo Fuso on 15/12/17.
//

#include "ednaive.hpp"


double Baseline::calculate(const double *x, const double *y, size_t n) {
    asm("#inicio1");
    double result = 0;
    for (; n > 0; --n) {
        const double num = x[n] - y[n];
        result += num * num;
    }
    asm("#fim1");
    return sqrt(result);
}
