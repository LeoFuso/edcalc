#include <iostream>
#include "StopWatch.h"
#include <random>

extern "C"
{
#include "edcalc.h"
}

#include <immintrin.h>

using namespace std;

struct Test
{
    double time;
    double result;

    void Reset() {
        time = result = 0;
    }
};
void fill_vector(double *x, double *y, size_t n);
void print_results(double time, double result);
void _test(double(*method)(const double *,const double *, size_t ), const double *x,const double *y, size_t n);

int main() {

    size_t n = 1000000;

    auto *x = (double*) aligned_alloc(32, n * sizeof(double));
    auto *y = (double*) aligned_alloc(32, n * sizeof(double));

//    fill_vector(x, y, n);
//
//    cout << "\n" << endl;
//    cout << "BASELINE METHOD:\n" << endl;
//    _test(&euclidean_naive, x,y,n);
//
//    cout << "AVX2 WITH 256d :\n" << endl;
//    _test(&euclidean_256d, x,y,n);
//
//    cout << "SSE3 WITH 128d :\n" << endl;
//    _test(&euclidean_128d, x,y,n);

    x[0] = 101.487;
    y[0] = 20.0173;
    x[1] = 135.973;
    y[1] = 138.431;
    x[2] = 146.711;
    y[2] = 121.474;
    x[3] = 82.8316;
    y[3] = 18.2401;
    x[4] = 26.4998;
    y[4] = 27.4125;
    x[5] = 67.3565;
    y[5] = 30.4699;

    //double result = 0;
    __m512d euclidean = _mm512_setzero_pd();

    for(; n>7; n-=8){
        const __m512d a = _mm512_load_pd(x);
        const __m512d b = _mm512_load_pd(y);
        const __m512d sub = _mm512_sub_pd(a,b);
        const __m512d sqr = _mm512_mul_pd(sub,sub);
        euclidean = _mm512_add_pd(euclidean,sqr);
        x+=8;
        y+=8;
    }
    __m512d _result = euclidean;

    return 0;
}

void _test(double(*method)(const double *,const double *, size_t), const double *x,const double *y, size_t n)
{
    Test test;
    StopWatch sw;
    size_t qtd_tests = 10000;

    test.Reset();
    sw.Restart();
    for (int i = 0; i < qtd_tests; i++)
        test.result += method(x, y, n);
    test.time = sw.ElapsedUs();

    print_results(test.time / qtd_tests,test.result / qtd_tests);
    test.Reset();
}

void fill_vector(double *x, double *y, size_t n)
{
    random_device rd;

    mt19937 e2(rd());
    uniform_real_distribution<> dist(1, 151);

    for (int i = 0; i < n; ++i) {
        x[i] = dist(e2);
        y[i] = dist(e2);
    }
}

void print_results(double time, double result){
    cout << "ELAPSED TIME:   " << time/1000    << "s" << endl;
    cout << "      RESULT:   " << result  << "\n" << endl;
    cout << "\n" << endl;
}
