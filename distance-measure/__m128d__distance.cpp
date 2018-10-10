#include "__m128d__distance.hpp"

double
__m128d__Distance::euclidean(const double *p, const double *q, unsigned long n)
{
	double result = 0;
	__m128d euclidean = _mm_setzero_pd();

	for (; n > 1; n -= 2)
	{
		/*
	 	 *   in ->  {p1, q2}
	 	 *  out ->  {a}
	 	 */
		const __m128d a = _mm_load_pd(p);

		/*
	 	 *   in ->  {p1, q2}
	 	 *  out ->  {b}
	 	 */
		const __m128d b = _mm_load_pd(q);

		/*
		 *   in -> {  x  ,  y  }
		 *   in -> {  a  ,  b  }
		 *  out -> { x-a , y-b }
		 */
		const __m128d sub = _mm_sub_pd(b, a);

        /*
         *   in -> {  x  ,  y  }
         *   in -> {  a  ,  b  }
         *  out -> { x*a , y*b }
         */
		const __m128d sqr = _mm_mul_pd(sub, sub);

        /*
         *   in -> {  x  ,  y  }
         *   in -> {  a  ,  b  }
         *  out -> { x+a , y+b }
         */
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
		double num = p[n] - q[n];
		result += num*num;
	}

	return DistanceMeasure::sqrt(result);
}