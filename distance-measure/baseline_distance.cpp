#include "baseline_distance.hpp"

double
BaselineDistance::euclidean(const double *p, const double *q, unsigned long n)
{
    double result = 0;
    for (; n > 0; --n)
    {
        const double num = q[n] - p[n];
        result += num * num;
    }
    return DistanceMeasure::sqrt(result);
}