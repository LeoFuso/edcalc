#include <iostream>
#include <random>

#include "StopWatch.hpp"

#define TOSTR1(x) #x
#define TOSTR(x) TOSTR1(x)

#if defined(_BASELINE)
#include "ed_baseline.hpp"
#define _METHOD Baseline
#elif defined(_DOUBLE128)
#include "ed_128d.hpp"
#define _METHOD Double128
#elif defined(_DOUBLE256)
#include "ed_256d.hpp"
#define _METHOD Double256
#else
#warning Using BASELINE method as default...
#include "ed_baseline.hpp"
#define _METHOD Baseline
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

void fill_vector(double *, double *, unsigned long);
void print_results(double, double);
template<class ED>static void _test(const double *, const double *, unsigned long);

int main()
{
    unsigned long n = 1000000;

    auto *x = (double *) aligned_alloc(32, n * sizeof(double));
    auto *y = (double *) aligned_alloc(32, n * sizeof(double));

    fill_vector(x, y, n);

    std::cout << "\n Using class: " << TOSTR(_METHOD) << std::endl;
    _test<_METHOD>(x, y, n);

    return 0;
}

template<class ED>
static void
_test(const double *x, const double *y, unsigned long n)
{
    StopWatch sw;
    ED ed;

    double time = 0.0, result = 0.0;
    size_t qtd_tests = 100;
    size_t toDivide = qtd_tests;

    sw.Restart();
    while (qtd_tests--)
    	ed.calculate(x, y, n);
    time = sw.ElapsedUs();

    result = ed.calculate(x, y, n);
    time /= toDivide;

    print_results(time, result);
}

void fill_vector(double *x, double *y, unsigned long n)
{
    mt19937 e2;
    uniform_real_distribution<> dist(1, 151);

    while (n--) {
        x[n] = dist(e2);
        y[n] = dist(e2);
    }
}

void print_results(double time, double result)
{

    cout << "ELAPSED TIME:   " << time/1000000 << "s" << endl;
    cout.precision(17);
    cout << "      RESULT:   " << result << "\n" << endl;
    cout << "\n" << endl;
}
