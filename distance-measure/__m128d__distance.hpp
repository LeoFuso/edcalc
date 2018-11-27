#ifndef __m128D__DISTANCE_HPP
#define __m128D__DISTANCE_HPP

#include "distance_measure.hpp"
#include <xmmintrin.h>

class __m128d__Distance : public DistanceMeasure
{
public:
	double
	euclidean(const double *, const double *, unsigned long) override;
	double
	manhattan(const double *p, const double *q, unsigned long n) override;
    double
    cosine(const double *p, const double *q, unsigned long n) override;
private:
	inline __m128d
	_mm_abs_pd(__m128d);
	inline __m128d
	_mm_rcp_pd(__m128d);
};
#endif //__m128D__DISTANCE_HPP
