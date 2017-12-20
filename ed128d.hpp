//
// Created by Leonardo Fuso on 15/12/17.
//

#ifndef ED128D_HPP
#define ED128D_HPP

#include "EuclideanDistance.hpp"
#include <xmmintrin.h>

class Double128 : public EuclideanDistance
{
public:
    double calculate(const double *x,const double *y, size_t n) override;
};
#endif //ED128D_HPP
