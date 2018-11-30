#ifndef __m256D__DISTANCE_HPP
#define __m256D__DISTANCE_HPP

#include "distance_measure.hpp"
#include <immintrin.h>

class __m256d__Distance : public DistanceMeasure
{
public:
	double
	euclidean(const double *, const double *, unsigned long) override;
	double
	manhattan(const double *p, const double *q, unsigned long n) override;
	double
	cosine(const double *p, const double *q, unsigned long n) override;
private:
	inline __m256d
	_mm256_abs_pd(__m256d a);
	inline double
	_mm256_rdcsd_f64(__m256d a);
};

#endif //__m256D__DISTANCE_HPP
