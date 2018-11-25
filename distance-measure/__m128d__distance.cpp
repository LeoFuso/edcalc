#include "__m128d__distance.hpp"

double
__m128d__Distance::euclidean(const double *p, const double *q, unsigned long n)
{
	double result = 0;
	__m128d euclidean = _mm_setzero_pd();

	for (; n > 1; n -= 2)
	{
		const __m128d a = _mm_load_pd(p);
		const __m128d b = _mm_load_pd(q);
		const __m128d sub = _mm_sub_pd(b, a);
		const __m128d sqr = _mm_mul_pd(sub, sub);
		euclidean = _mm_add_pd(euclidean, sqr);
		p += 2;
		q += 2;
	}

	/*
	 *   in ->  {p, q}
	 *  out ->  {q, p}
	 */
	const __m128d shuffle =
		_mm_shuffle_pd(euclidean, euclidean, 1);

	/*
	 *   in -> {  x  ,  y  }
	 *   in -> {  a  ,  b  }
	 *  out -> { x+a , y+b }
	 */
	const __m128d sum =
		_mm_add_pd(euclidean, shuffle);

	/*
	 *   in ->  {x, y}
	 *  out ->  {x}
	 */
	result = _mm_cvtsd_f64(sum);


	/* if n is odd */
	if (n)
	{
		double num = p[0] - q[0];
		result += num * num;
	}

	return sqrt(result);
}

double
__m128d__Distance::manhattan(const double *p, const double *q, unsigned long n)
{
	double result = 0;
	__m128d manhattan = _mm_setzero_pd();

	for (; n > 1; n -= 2)
	{
		const __m128d a = _mm_load_pd(p);
		const __m128d b = _mm_load_pd(q);
		const __m128d sub = _mm_sub_pd(b, a);
		__m128d abs = __m128d__Distance::_mm_abs_pd(sub);
		manhattan = _mm_add_pd(manhattan, abs);
		p += 2;
		q += 2;
	}

	const __m128d shuffle =
		_mm_shuffle_pd(manhattan, manhattan, 1);

	const __m128d sum =
		_mm_add_pd(manhattan, shuffle);

	result = _mm_cvtsd_f64(sum);

	if (n)
	{
		const double num = fabs(p[0] - q[0]);
		result += num;
	}

	return result;
}
__m128d
__m128d__Distance::_mm_abs_pd(__m128d a)
{
    return _mm_castsi128_pd(_mm_srli_epi64(_mm_slli_epi64(_mm_castpd_si128(a), 1), 1));
}

