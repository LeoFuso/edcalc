#include <iostream>
#include "StopWatch.h"
#include <random>

#include "ed128d.h"
#include "ed256d.h"
#include "ednaive.h"

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
template <class T> void _test(const double *x,const double *y, size_t n);

int main() {


    size_t n = 1000000;

    auto *x = (double*) aligned_alloc(32, n * sizeof(double));
    auto *y = (double*) aligned_alloc(32, n * sizeof(double));

    fill_vector(x, y, n);


    cout << "\n" << endl;
    cout << "BASELINE METHOD:\n" << endl;
    _test<Baseline>(x,y,n);

    cout << "SSE3 WITH 128d :\n" << endl;
    _test<Double128>(x,y,n);

    cout << "AVX2 WITH 256d :\n" << endl;
    _test<Double256>(x,y,n);

    return 0;
}

template <EuclideanDistance *T>
void _test(const double *x,const double *y, size_t n)
{
    Test test;
    StopWatch sw;
    size_t qtd_tests = 10000;

    test.Reset();
    sw.Restart();
    for (int i = 0; i < qtd_tests; i++)
        test.result += T->calculate(x, y, n);
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
