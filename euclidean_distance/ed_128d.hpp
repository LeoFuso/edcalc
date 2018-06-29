#ifndef ED_128D_HPP
#define ED_128D_HPP

#include "euclidean_distance.hpp"
#include <xmmintrin.h>

class Double128 : public EuclideanDistance
{
public:
	double
	calculate(const double *, const double *, unsigned long) override;
};
#endif //ED_128D_HPP
