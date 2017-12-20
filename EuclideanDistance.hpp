//
// Created by Leonardo Fuso on 16/12/17.
//

#ifndef EUCLIDEANDISTANCE_HPP
#define EUCLIDEANDISTANCE_HPP

#include <glob.h>
#include <math.h>

class EuclideanDistance
{
public:
    EuclideanDistance() = default;
    virtual ~EuclideanDistance()= default;
    virtual double calculate(const double *x,const double *y, size_t n) = 0;
};

#endif //EUCLIDEANDISTANCE_HPP
