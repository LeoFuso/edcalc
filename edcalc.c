/*
 * File:   edcalc.c
 * Author: lfuso
 * From: https://github.com/LeoFuso/edcalc
 *
 * Created on 2017-11-30
 */

#include "edcalc.h"

double e_intrinsic(const double *x,const double *y, size_t n);

double euclidean_naive(const double *x,const double *y, size_t n)
{
    double result = 0;
    for(int i = 0; i < n; ++i){
        const double num = x[i] - y[i];
        result += num * num;
    }
    return sqrt(result);
}

double euclidean_baseline(const double *x,const double *y, size_t n)
{
    double result = 0;
    for(int i = 0; i < n; ++i){
        const double num = x[i] - y[i];
        result += num * num;
    }
    return result;
}

double e_intrinsic(const double *x,const double *y, size_t n)
{
    double result = 0;
    __m256d euclidean = _mm256_setzero_pd();

    for (; n>3; n-=4) {
        const __m256d a = _mm256_load_pd(x);
        const __m256d b = _mm256_load_pd(y);
        const __m256d sub = _mm256_sub_pd(a,b);
        const __m256d sqrt = _mm256_mul_pd(sub, sub);
        euclidean = _mm256_add_pd(euclidean, sqrt);
        x+=4;
        y+=4;
    }
    const __m256d shuffle1 = _mm256_shuffle_pd(euclidean, euclidean, _MM_SHUFFLE(1,0,3,2));
    const __m256d sum1 = _mm256_add_pd(euclidean, shuffle1);
    const __m256d shuffle2 = _mm256_shuffle_pd(sum1, sum1, _MM_SHUFFLE(2,3,0,1));
    const __m256d sum2 = _mm256_add_pd(sum1, shuffle2);
    _mm256_store_pd(&result,sum2);
    //    _mm_empty();
    if (n)
        result += euclidean_baseline(x, y, n);	// remaining 1-3 entries

    return sqrt(result);
}

double euclidean_sse(const double *x, const double *y, size_t dim)
{
    double (*euclidean_sse)(const double*, const double*,size_t) = euclidean_naive;
//#ifdef __SSE__
    euclidean_sse = e_intrinsic;
//#endif
    return euclidean_sse(x, y, dim);
}

