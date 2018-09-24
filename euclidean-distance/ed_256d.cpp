#include "ed_256d.hpp"

double
Double256::calculate(const double *x, const double *y, unsigned long size)
{
	double result = 0;
	__m256d euclidean = _mm256_setzero_pd();

	for (; size > 3; size -= 4)
	{
		const __m256d a = _mm256_load_pd(x);
		const __m256d b = _mm256_load_pd(y);
		const __m256d sub = _mm256_sub_pd(a, b);
		const __m256d sqr = _mm256_mul_pd(sub, sub);
		euclidean = _mm256_add_pd(euclidean, sqr);
		x += 4;
		y += 4;
	}

	/*
	 *   in ->  {w, x, y, z}
	 *  out ->  {x, w, z, y}
	 */
	const __m256d shuffle =
		_mm256_shuffle_pd(euclidean, euclidean, _MM_SHUFFLE(0, 0, 1, 1));

	/*
	 *   in -> {  w  ,  x  ,  y  ,  z  }
	 *   in -> {  a  ,  b  ,  c  ,  d  }
	 *  out -> { w+a , x+b , y+c , z+d }
	 */
	const __m256d sum1 =
		_mm256_add_pd(shuffle, euclidean);

	/*
	 *   in ->  {w, x, y, z}
	 *  out ->  {y, z, w, x}
	 */
	const __m256d permute =
		_mm256_permute2f128_pd(sum1, sum1, 1);

	/*
	 *   in -> {  w  ,  x  ,  y  ,  z  }
	 *   in -> {  a  ,  b  ,  c  ,  d  }
	 *  out -> { w+a , x+b , y+c , z+d }
	 */
	const __m256d sum2 =
		_mm256_add_pd(sum1, permute);

	/*
	 *   in ->  {w, x, y, z}
	 *  out ->  {w}
	 */
	result = _mm256_cvtsd_f64(sum2);

	if (size)
		result += Double256::remaining(x, y, size);    // remaining 1-3 entries

	return sqrt(result);
}

double
Double256::remaining(const double *x, const double *y, unsigned long size)
{
	double result = 0;
	for (int i = 0; i < size; ++i)
	{
		const double num = x[i] - y[i];
		result += num*num;
	}
	return result;
}