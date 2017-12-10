/*
 * File:   edcalc.c
 * Author: lfuso
 * From: https://github.com/LeoFuso/edcalc
 *
 * Created on 2017-11-30
 */

#include "edcalc.h"

double euclidean_remaining(const double *x,const double *y, size_t n);

double euclidean_naive(const double *x,const double *y, size_t n)
{
    double result = 0;
    for(size_t i = n ; i-- > 0 ; ){
        const double num = x[i] - y[i];
        result += num * num;
    }
    return sqrt(result);
}

double euclidean_remaining(const double *x,const double *y, size_t n)
{
    double result = 0;
    for(int i = 0; i < n; ++i){
        const double num = x[i] - y[i];
        result += num * num;
    }
    return result;
}

double euclidean_256d(const double *x,const double *y, size_t n)
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
    const __m256d shuffle1 = _mm256_shuffle_pd(euclidean, euclidean, _MM_SHUFFLE(0,0,1,1)); // Latency: 1 Throughput: 1
    const __m256d sum1 = _mm256_add_pd(shuffle1, euclidean);                                // Latency: 4 Throughput: 0.5
    const __m128d higherEnd= _mm256_extractf128_pd(sum1,1);                                 // Latency: 3 Throughput: 1
    const __m256d castedHigherEnd =  _mm256_castpd128_pd256(higherEnd);                     // No cost
    const __m256d sum2 = _mm256_add_pd(sum1, castedHigherEnd);                              // Latency: 4 Throughput: 0.5
    result =  _mm256_cvtsd_f64(sum2);                                                       //         12             3
    if (n)
        result += euclidean_remaining(x, y, n);	// remaining 1-3 entries

    return sqrt(result);
}

double euclidean_128d(const double *x, const double *y, size_t n)
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
    const __m128d shuffle1 = _mm_shuffle_pd(euclidean, euclidean, _MM_SHUFFLE(1,0,3,2));
    const __m128d sum1 = _mm_add_pd(euclidean, shuffle1);
    const __m128d shuffle2 = _mm_shuffle_pd(sum1, sum1, _MM_SHUFFLE(2,3,0,1));
    const __m128d sum2 = _mm_add_pd(sum1, shuffle2);
    result = _mm_cvtsd_f64(sum2);
    //    _mm_empty();
    if (n)
        result += euclidean_remaining(x, y, n);	// remaining 0-1 entries

    return sqrt(result);

}
