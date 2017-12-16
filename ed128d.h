//
// Created by Leonardo Fuso on 15/12/17.
//

#ifndef ED128D_H
#define ED128D_H

#include "EuclideanDistance.h"
#include <xmmintrin.h>

class Double128 : public EuclideanDistance
{
public:
    double inline calculate(const double *x,const double *y, size_t n) override;
};
#endif //ED128D_H
