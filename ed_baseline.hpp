#ifndef ED_BASELINE_HPP
#define ED_BASELINE_HPP

#include "EuclideanDistance.hpp"

class Baseline : public EuclideanDistance
{
public:
	double
	calculate(const double *, const double *, unsigned long) override;
};

#endif //ED_BASELINE_HPP
