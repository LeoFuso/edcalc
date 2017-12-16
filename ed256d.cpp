//
// Created by Leonardo Fuso on 15/12/17.
//

#include "ed256d.h"


_256d::calculate(const double *x,const double *y, size_t n)
{
    double result = 0;
    __m256d euclidean = _mm256_setzero_pd();

    for (; n>3; n-=4) {
        const __m256d a = _mm256_load_pd(x);
        const __m256d b = _mm256_load_pd(y);
        const __m256d sub = _mm256_sub_pd(a,b);
        const __m256d sqr = _mm256_mul_pd(sub, sub);
        euclidean = _mm256_add_pd(euclidean, sqr);
        x+=4;
        y+=4;
    }

    const __m256d shuffle = _mm256_shuffle_pd(euclidean, euclidean, _MM_SHUFFLE(0,0,1,1)); // Latency: 1 Throughput: 1
    const __m256d sum1 = _mm256_add_pd(shuffle, euclidean);                                // Latency: 4 Throughput: 0.5
    const __m256d permute= _mm256_permute2f128_pd(sum1,sum1,1);                            // Latency: 3 Throughput: 1
    const __m256d sum2 = _mm256_add_pd(sum1, permute);                                     // Latency: 4 Throughput: 0.5
    result =  _mm256_cvtsd_f64(sum2);

    if (n)
        result += _256d::remaining(x, y, n);	// remaining 1-3 entries

    return sqrt(result);
}

_256d::remaining(const double *x,const double *y, size_t n)
{
    double result = 0;
    for(int i = 0; i < n; ++i){
        const double num = x[i] - y[i];
        result += num * num;
    }
    return result;
}