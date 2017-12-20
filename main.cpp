#include <iostream>
#include <random>

#include "StopWatch.hpp"

#define TOSTR1(x) #x
#define TOSTR(x) TOSTR1(x)

#define _M_SSE3128D Double128
#define _M_AVX2256D Double256

#ifndef _METHOD
#define _METHOD Baseline
#include "ednaive.hpp"
#elif _METHOD == _M_SSE3128D
#include "ed128d.hpp"
#elif _METHOD == _M_AVX2256D
#include "ed256d.hpp"
#else
#error Unrecognized method!
#endif

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
template<class ED>static void _test(const double *, const double *, size_t);

int main()
{
    size_t n = 1000000;

    auto *x = (double *) aligned_alloc(32, n * sizeof(double));
    auto *y = (double *) aligned_alloc(32, n * sizeof(double));

    fill_vector(x, y, n);

    std::cout << "\nUsing class: " << TOSTR(_METHOD) << std::endl;
    _test<_METHOD>(x, y, n);

    return 0;
}

template<class ED>
static void
_test(const double *x, const double *y, size_t n)
{
    StopWatch sw;
    ED ed;

    double time = 0.0, result = 0.0;
    size_t qtd_tests = 10000;
    size_t toDivide = qtd_tests;
    sw.Restart();
    while (qtd_tests--)
        result += ed.calculate(x, y, n);
    time = sw.ElapsedUs();

    result /= toDivide;
    time /= toDivide;

    print_results(time, result);
}

void fill_vector(double *x, double *y, size_t n)
{
    mt19937 e2;
    uniform_real_distribution<> dist(1, 151);

    for (int i = 0; i < n; ++i) {
        x[i] = dist(e2);
        y[i] = dist(e2);
    }
}

void print_results(double time, double result)
{
    cout << "ELAPSED TIME:   " << time / 1000 << "s" << endl;
    cout << "      RESULT:   " << result << "\n" << endl;
    cout << "\n" << endl;
}
