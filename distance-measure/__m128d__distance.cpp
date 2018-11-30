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

	result = __m128d__Distance::_mm_group_pd(euclidean);

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

	result = __m128d__Distance::_mm_group_pd(manhattan);

	if (n)
	{
		const double num = fabs(p[0] - q[0]);
		result += num;
	}

	return result;
}

double
__m128d__Distance::cosine(const double *p, const double *q, unsigned long n)
{
	__m128d top = _mm_setzero_pd();
	__m128d left = _mm_setzero_pd();
	__m128d right = _mm_setzero_pd();

	for (; n > 1; n -= 2)
	{
		const __m128d a = _mm_load_pd(p);
		const __m128d b = _mm_load_pd(q);
		const __m128d mul_ab = _mm_mul_pd(a, b);
		top = _mm_add_pd(top, mul_ab);
		const __m128d mul_aa = _mm_mul_pd(a, a);
		left = _mm_add_pd(left, mul_aa);
		const __m128d mul_bb = _mm_mul_pd(b, b);
		right = _mm_add_pd(right, mul_bb);

		p += 2;
		q += 2;
	}

	if (n)
	{
		const __m128d empty = _mm_setzero_pd();

		const double a_local = p[0] * q[0];
		const __m128d top_leftover = _mm_loadl_pd(empty, &a_local);

		const double b_local = p[0] * p[0];
		const __m128d left_leftover = _mm_loadl_pd(empty, &b_local);

		const double c_local = q[0] * q[0];
		const __m128d right_leftover = _mm_loadl_pd(empty, &c_local);

		top = _mm_add_pd(top, top_leftover);
		left = _mm_add_pd(left, left_leftover);
		right = _mm_add_pd(right, right_leftover);
	}

	const __m128d shuffle_left = _mm_shuffle_pd(left, left, 1);
	const __m128d shuffle_right = _mm_shuffle_pd(right, right, 1);
	const __m128d sum_left = _mm_add_pd(left, shuffle_left);
	const __m128d sum_right = _mm_add_pd(right, shuffle_right);
	const __m128d sqrt_shuffle = _mm_shuffle_pd(sum_left, sum_right, 1);
	const __m128d sqrt_left_right = _mm_sqrt_pd(sqrt_shuffle);
	const __m128d sqrt_right_left = _mm_shuffle_pd(sqrt_left_right, sqrt_left_right, 1);
	const __m128d bottom = _mm_mul_pd(sqrt_left_right, sqrt_right_left);

	const __m128d cosine = _mm_div_pd(top, bottom);

	return __m128d__Distance::_mm_group_pd(cosine);
}

__m128d
__m128d__Distance::_mm_abs_pd(__m128d a)
{
	static const __m128d sign_mask = _mm_set1_pd(-0.);
	return _mm_andnot_pd(sign_mask, a);
}
double
__m128d__Distance::_mm_group_pd(__m128d a)
{
	/*
	 *   in ->  {p, q}
	 *  out ->  {q, p}
	 */
	const __m128d shuffle = _mm_shuffle_pd(a, a, 1);

	/*
	 *   in -> {  x  ,  y  }
	 *   in -> {  a  ,  b  }
	 *  out -> { x+a , y+b }
	 */
	const __m128d sum = _mm_add_pd(a, shuffle);

	/*
	 *   in ->  {x, y}
	 *  out ->  {x}
	 */
	return _mm_cvtsd_f64(sum);
}
