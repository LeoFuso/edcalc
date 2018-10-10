#ifndef __m256D__DISTANCE_HPP
#define __m256D__DISTANCE_HPP

#include "distance_measure.hpp"
#include <immintrin.h>

class __m256d__Distance : public DistanceMeasure
{
public:
	double
	euclidean(const double *, const double *, unsigned long) override;
private:
	static double
	remaining(const double *, const double *, unsigned long);
};

#endif //__m256D__DISTANCE_HPP
