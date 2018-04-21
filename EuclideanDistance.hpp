//
// Created by Leonardo Fuso on 16/12/17.
//

#ifndef EUCLIDEANDISTANCE_HPP
#define EUCLIDEANDISTANCE_HPP

class EuclideanDistance
{
public:
    EuclideanDistance() = default;
    virtual ~EuclideanDistance() = default;
    virtual double calculate(const double *x, const double *y, int n) = 0;

    double
    sqrt(double t)
    {
        double r = t / 2;
        int precision = 25;

        for (; precision > 1; precision -= 1)

            r = (r + t / r) / 2;

        return r;
    }
};

#endif //EUCLIDEANDISTANCE_HPP
