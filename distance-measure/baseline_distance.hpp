#ifndef BASELINE_DISTANCE_HPP
#define BASELINE_DISTANCE_HPP

#include "distance_measure.hpp"

class BaselineDistance : public DistanceMeasure
{
public:
	double
	euclidean(const double *, const double *, unsigned long) override;
	double
	manhattan(const double *, const double *, unsigned long) override;
	double
	cosine(const double *p, const double *q, unsigned long n) override;
};

#endif //BASELINE_DISTANCE_HPP
