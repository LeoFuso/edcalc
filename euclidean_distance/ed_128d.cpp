#include "ed_128d.hpp"

double
Double128::calculate(const double *x, const double *y, unsigned long size)
{
	double result = 0;
	__m128d euclidean = _mm_setzero_pd();

	for (; size > 1; size -= 2)
	{
		const __m128d a = _mm_load_pd(x);
		const __m128d b = _mm_load_pd(y);
		const __m128d sub = _mm_sub_pd(a, b);
		const __m128d sqr = _mm_mul_pd(sub, sub);
		euclidean = _mm_add_pd(euclidean, sqr);
		x += 2;
		y += 2;
	}

	/*
	 *   in ->  {x, y}
	 *  out ->  {y, x}
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


	/* if size is odd */
	if (size)
	{
		double num = x[size] - y[size];
		result += num*num;
	}

	return sqrt(result);
}

