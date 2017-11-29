#include <iostream>
#include "StopWatch.h"
#include <random>

extern "C"
{
#include "edcalc.h"
}

using namespace std;

struct Test {

    double time;
    double result;

    void Reset() {
        time = result = 0;
    }

};

void fill_vector(double *x, double *y, size_t n);
void print_results(double time, double result);


int main() {

    size_t size = 1000000;
    size_t real_size = size / 2;
    size_t qtd_tests = 1000;

    Test test_naive;
    Test test_hypot;
    Test test_fast;

    StopWatch sw;

    double *vector_a = (double*) aligned_alloc(32, real_size * sizeof(double));
    double *vector_b = (double*) aligned_alloc(32, real_size * sizeof(double));

    cout << "Filling vector for calculations..." << endl;

    fill_vector(vector_a, vector_b, real_size);

    cout << "OK!\n" << endl;

    cout << "\nSetting up test structs for the results...\n" << endl;


    cout << "NAIVE METHOD:\n" << endl;
    test_naive.Reset();
    for (int i = 0; i < qtd_tests; i++) {
        sw.Restart();
        test_naive.result += dnaive(vector_a, vector_b, real_size);
        test_naive.time += sw.ElapsedUs();
    }
    print_results(test_naive.time / qtd_tests,test_naive.result / qtd_tests);
    test_naive.Reset();

    cout << "HYPOT METHOD:\n" << endl;
    test_hypot.Reset();
    for (int i = 0; i < qtd_tests; i++) {
        sw.Restart();
        test_hypot.result += dhypot(vector_a, vector_b, real_size);
        test_hypot.time += sw.ElapsedUs();
    }
    print_results(test_hypot.time / qtd_tests,test_hypot.result / qtd_tests);
    test_hypot.Reset();


    cout << "FAST METHOD:\n" << endl;
    test_fast.Reset();
    for (int i = 0; i < qtd_tests; i++) {
        sw.Restart();
        test_fast.result += dfast(vector_a, vector_b, real_size);
        test_fast.time += sw.ElapsedUs();
    }
    print_results(test_fast.time / qtd_tests,test_fast.result / qtd_tests);
    test_fast.Reset();

    return 0;
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
    cout << "OK!\n" << endl;
}