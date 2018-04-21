//
// Created by Leonardo Fuso on 15/12/17.
//

#ifndef EDNAIVE_HPP
#define EDNAIVE_HPP

#include "EuclideanDistance.hpp"

class Baseline : public EuclideanDistance
{
public:
    double calculate(const double *x,const double *y, int n) override;
};

#endif //EDNAIVE_HPP
