//
// Created by Leonardo Fuso on 15/12/17.
//

#ifndef EDNAIVE_H
#define EDNAIVE_H

#include "EuclideanDistance.h"

class Baseline : public EuclideanDistance
{
public:
    double calculate(const double *x,const double *y, size_t n) override;
};

#endif //EDNAIVE_H
