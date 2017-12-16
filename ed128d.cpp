//
// Created by Leonardo Fuso on 15/12/17.
//

#include "ed128d.h"

_128d::calculate(const double *x, const double *y, size_t n)
{
    double result = 0;
    __m128d euclidean = _mm_setzero_pd();

    for (; n>1; n-=2) {
        const __m128d a = _mm_load_pd(x);
        const __m128d b = _mm_load_pd(y);
        const __m128d sub = _mm_sub_pd(a,b);
        const __m128d sqr = _mm_mul_pd(sub, sub);
        euclidean = _mm_add_pd(euclidean, sqr);
        x+=2;
        y+=2;
    }
    const __m128d shuffle = _mm_shuffle_pd(euclidean, euclidean, 1);
    const __m128d sum = _mm_add_pd(euclidean, shuffle);
    result = _mm_cvtsd_f64(sum);

    /*if n is odd*/
    if (n){
        double num = x[n] - y[n];
        result +=  num * num;
    }
    return sqrt(result);
}

