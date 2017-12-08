#include <iostream>
#include "StopWatch.h"
#include <random>

extern "C"
{
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
void fill_vector_control(double *x, double *y);
void print_results(double time, double result);
void _test(double(*method)(const double *,const double *, size_t ), const double *x,const double *y, size_t n);

int main() {

    size_t vector_size = 1000000;

    auto *vector_a = (double*) aligned_alloc(32, vector_size * sizeof(double));
    auto *vector_b = (double*) aligned_alloc(32, vector_size * sizeof(double));

//    fill_vector(vector_a, vector_b, vector_size);
//
//    cout << "BASELINE METHOD:\n" << endl;
//    _test(&euclidean_naive, vector_a,vector_b,vector_size);
//
//    cout << "AVX2 WITH 256d :\n" << endl;
//    _test(&euclidean_256d, vector_a,vector_b,vector_size);
//
//    cout << "SSE3 WITH 128d :\n" << endl;
//    _test(&euclidean_128d, vector_a,vector_b,vector_size);
//
//    cout << "CONTROL TEST:\n" << endl;
//
    fill_vector_control(vector_a, vector_b);

    cout << "BASELINE CONTROL:\n" << endl;
    _test(&euclidean_naive, vector_a,vector_b,6);

    cout << "AVX2 WITH 256d CONTROL:\n" << endl;
    _test(&euclidean_256d, vector_a,vector_b,6);

    return 0;
}

void _test(double(*method)(const double *,const double *, size_t), const double *x,const double *y, size_t n)
{
    Test test;
    StopWatch sw;
    size_t qtd_tests = 1;

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

void fill_vector_control(double *x, double *y)
{

    //(67,3565−30,4699)²+(26,4998−27,4125)²+(82,8316−18,2401)²+(146,711−121,474)²+(135,973−138,431)²+(101,487−20,0173)²
    //sqrt(12813,77610419)
    //113,197950972

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

}

void print_results(double time, double result){
    cout << "ELAPSED TIME:   " << time/1000    << "s" << endl;
    cout << "      RESULT:   " << result  << "\n" << endl;
    cout << "\n" << endl;
}