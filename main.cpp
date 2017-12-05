#include <iostream>
#include "StopWatch.h"
#include <random>

extern "C"
{
#include "hdcalc.h"
#include "edcalc.h"
}

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

    size_t vector_size = 1000000;

    auto *vector_a = (double*) aligned_alloc(32, vector_size * sizeof(double));
    auto *vector_b = (double*) aligned_alloc(32, vector_size * sizeof(double));

    fill_vector(vector_a, vector_b, vector_size);

    cout << "BASELINE METHOD:\n" << endl;
    _test(&euclidean_naive, vector_a,vector_b,vector_size);

    cout << "SSE METHOD:\n" << endl;
    _test(&euclidean_sse, vector_a,vector_b,vector_size);

    cout << "NAIVE METHOD:\n" << endl;
    _test(&dnaive, vector_a,vector_b,vector_size);

    cout << "HYPOT METHOD:\n" << endl;
    _test(&dhypot, vector_a,vector_b,vector_size);

    cout << "FAST METHOD:\n" << endl;
    _test(&dfast, vector_a,vector_b,vector_size);

    return 0;
}

void _test(double(*method)(const double *,const double *, size_t), const double *x,const double *y, size_t n)
{
    Test test;
    StopWatch sw;
    size_t qtd_tests = 1000;

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