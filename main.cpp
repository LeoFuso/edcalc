#include <iostream>
#include "StopWatch.h"
#include <random>

#include "ednaive.h"
//#include "ed128d.h"
//#include "ed256d.h"

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
void _test(EuclideanDistance *instance, const double *x,const double *y, size_t n);

int main() {


    size_t n = 1000000;

    auto *x = (double*) aligned_alloc(32, n * sizeof(double));
    auto *y = (double*) aligned_alloc(32, n * sizeof(double));

    fill_vector(x, y, n);

    cout << "\n" << endl;

    EuclideanDistance *baseline = new Baseline();
    cout << "BASELINE METHOD:\n" << endl;
    _test(baseline, x,y,n);

//    EuclideanDistance *double128 = new Double128();
//    cout << "SSE3 WITH 128d :\n" << endl;
//    _test(double128, x,y,n);

//    EuclideanDistance *double256 = new Double256();
//    cout << "AVX2 WITH 256d :\n" << endl;
//    _test(double256, x,y,n);

    return 0;
}

void _test(EuclideanDistance *instance, const double *x,const double *y, size_t n)
{
    Test test;
    StopWatch sw;
    size_t qtd_tests = 10000;

    test.Reset();
    sw.Restart();
    for (int i = 0; i < qtd_tests; i++)
        test.result += instance->calculate(x, y, n);
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
