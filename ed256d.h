//
// Created by Leonardo Fuso on 15/12/17.
//

#ifndef ED256D_H
#define ED256D_H

#include "EuclideanDistance.h"
#include <immintrin.h>

class Double256 : public EuclideanDistance
{
public:
    double calculate(const double *x,const double *y, size_t n) override ;
private:
    static double remaining(const double *x,const double *y, size_t n);
};

#endif //ED256D_H
