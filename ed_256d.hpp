#ifndef ED_256D_HPP
#define ED_256D_HPP

#include "euclidean_distance.hpp"
#include <immintrin.h>

class Double256 : public EuclideanDistance
{
public:
	double
	calculate(const double *, const double *, unsigned long) override;
private:
	static double
	remaining(const double *, const double *, unsigned long);
};

#endif //ED_256D_HPP
