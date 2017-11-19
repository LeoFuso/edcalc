#include <iostream>
#include <vector>
#include <math.h>
#include "StopWatch.h"
#include <random>

using namespace std;

struct Test {

    double time;
    double result;

    void Reset() {
        time = result = 0;
    }

};

void fill_vector(double *x, double *y, int n);

void print_results(double time, double result);

static inline double distance_naive(double *x, double *y, int n);
static inline double distance_hypot(double *x, double *y, int n);

int main() {

    size_t size = 1000000;
    size_t real_size = size / 2;
    size_t qtd_tests = 100;

    Test test_naive;
    Test test_hypot;
    Test test_fast;

    StopWatch sw;

    cout << "\nSetting up test structs for the results..." << endl;

    test_naive.Reset();
    test_hypot.Reset();
    test_fast.Reset();

    cout << "OK!\n" << endl;

    double *vector_a = (double*) aligned_alloc(32, real_size * sizeof(double));
    double *vector_b = (double*) aligned_alloc(32, real_size * sizeof(double));

    cout << "Filling vector for calculations..." << endl;

    fill_vector(vector_a, vector_b, real_size);

    cout << "OK!\n" << endl;

    cout << "Starting calculations...\n" << endl;

    cout << "NAIVE METHOD:\n" << endl;

    for (int i = 0; i < qtd_tests; i++) {
        sw.Restart();
        distance_naive(vector_a, vector_b, real_size);
        test_naive.time += sw.ElapsedUs();
    }

    test_naive.result = distance_naive(vector_a, vector_b, real_size);
    print_results(test_naive.time / qtd_tests,test_naive.result);
    test_naive.Reset();



    return 0;
}

static inline double distance_naive(double *x, double *y, int n) {

    double result = 0;
    double pn = 0;
    double qn = 0;
    for (int i = 0; i < n; ++i) {
        pn = x[i];
        qn = y[i];
        result += (pn - qn) * (pn - qn);
    }
    return sqrt(result);
}

static inline double distance_hypot(double *x, double *y, int n) {

    double result = hypot(x[0], y[0]);

    for (int i = 1; i < n; ++i) {
        result += hypot(result, x[i] - y[i]);
    }
    return result;
}

static inline double distance_fast(double *v1, double *v2, int n) {
    return 0.0;
}

void fill_vector(double *x, double *y, int n) {

    random_device rd;

    mt19937 e2(rd());
    uniform_real_distribution<> dist(1, 151);

    for (int i = 0; i < n; ++i) {
        x[i] = dist(e2);
        y[i] = dist(e2);
    }
}

void print_results(double time, double result){
    cout << "ELAPSED TIME:   " << time    << endl;
    cout << "      RESULT:   " << result  << "\n" << endl;
    cout << "OK!\n" << endl;
}