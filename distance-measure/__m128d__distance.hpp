#ifndef __m128D__DISTANCE_HPP
#define __m128D__DISTANCE_HPP

#include "distance_measure.hpp"
#include <xmmintrin.h>

class __m128d__Distance : public DistanceMeasure
{
public:
    double
	euclidean(const double *, const double *, unsigned long) override;
};
#endif //__m128D__DISTANCE_HPP
