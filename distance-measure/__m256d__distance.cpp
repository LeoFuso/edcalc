#include "__m256d__distance.hpp"

double
__m256d__Distance::euclidean(const double *p, const double *q, unsigned long n)
{
	double result = 0;
	__m256d euclidean = _mm256_setzero_pd();

	for (; n > 3; n -= 4)
	{
		const __m256d a = _mm256_load_pd(p);
		const __m256d b = _mm256_load_pd(q);
		const __m256d sub = _mm256_sub_pd(b, a);
		const __m256d sqr = _mm256_mul_pd(sub, sub);
		euclidean = _mm256_add_pd(euclidean, sqr);
		p += 4;
		q += 4;
	}

	/*
	 *   in ->  {w, p, y, z}
	 *  out ->  {p, w, z, y}
	 */
	const __m256d shuffle =
		_mm256_shuffle_pd(euclidean, euclidean, _MM_SHUFFLE(0, 0, 1, 1));

	/*
	 *   in -> {  w  ,  p  ,  y  ,  z  }
	 *   in -> {  a  ,  b  ,  c  ,  d  }
	 *  out -> { w+a , p+b , y+c , z+d }
	 */
	const __m256d sum1 =
		_mm256_add_pd(shuffle, euclidean);

	/*
	 *   in ->  {w, p, y, z}
	 *  out ->  {y, z, w, p}
	 */
	const __m256d permute =
		_mm256_permute2f128_pd(sum1, sum1, 1);

	/*
	 *   in -> {  w  ,  p  ,  y  ,  z  }
	 *   in -> {  a  ,  b  ,  c  ,  d  }
	 *  out -> { w+a , p+b , y+c , z+d }
	 */
	const __m256d sum2 =
		_mm256_add_pd(sum1, permute);

	/*
	 *   in ->  {w, p, y, z}
	 *  out ->  {w}
	 */
	result = _mm256_cvtsd_f64(sum2);

	if (n)
		result += __m256d__Distance::remaining(p, q, n);    /*	remaining 1-3 entries	*/

	return DistanceMeasure::sqrt(result);
}

double
__m256d__Distance::remaining(const double *x, const double *y, unsigned long size)
{
	double result = 0;
	for (int i = 0; i < size; ++i)
	{
		const double num = x[i] - y[i];
		result += num*num;
	}
	return result;
}