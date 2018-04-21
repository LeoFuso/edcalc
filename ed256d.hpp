//
// Created by Leonardo Fuso on 15/12/17.
//

#ifndef ED256D_HPP
#define ED256D_HPP

#include "EuclideanDistance.hpp"
#include <immintrin.h>

class Double256 : public EuclideanDistance
{
public:
    double calculate(const double *x,const double *y, int n) override ;
private:
    static double remaining(const double *x,const double *y, int n);
};

#endif //ED256D_HPP
