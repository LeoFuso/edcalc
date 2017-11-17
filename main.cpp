#include <iostream>
#include <vector>
#include <math.h>
#include "StopWatch.h"
#include <random>

using namespace std;

struct Test {
    double time_test1;
    double result_test1;

    double time_test2;
    double result_test2;

    double time_test3;
    double result_test3;

    void Reset() {
        time_test1 = result_test1 = time_test2 = result_test2 = time_test3 = result_test3 = 0;
    }
};

void fill_encapsulated_vector(vector<double> &x, vector<double> &y, int n);
void fill_classic_vector(double *x, double *y, int n);

static inline double distance_naive_encapsulated_vector(vector<double> &x, vector<double> &y, int n);
static inline double distance_naive_classic_vector(double *x, double *y, int n);
static inline double distance_hypot_classic_vector(double *x, double *y, int n);

int main() {

    size_t size = 1000000;
    size_t real_size = size / 2;

    Test tt;
    StopWatch sw;

    tt.Reset();

    vector<double> encapsulated_vector_a;
    vector<double> encapsulated_vector_b;

    double *classic_vector_a = (double*) aligned_alloc(32, real_size * sizeof(double));
    double *classic_vector_b = (double*) aligned_alloc(32, real_size * sizeof(double));

    cout << "Filling vector for calculations..." << endl;

    fill_encapsulated_vector(encapsulated_vector_a, encapsulated_vector_b, real_size);
    fill_classic_vector(classic_vector_a, classic_vector_b, real_size);

    cout << "OK!" << endl;

    cout << "Starting calculations..." << endl;

    for (int i = 0; i < 100; i++) {

        sw.Restart();
        distance_naive_classic_vector(classic_vector_a, classic_vector_b, real_size);
        tt.time_test1 += sw.ElapsedUs();

        sw.Restart();

        distance_naive_encapsulated_vector(encapsulated_vector_a, encapsulated_vector_b, real_size);
        tt.time_test2 += sw.ElapsedUs();

        sw.Restart();

        distance_hypot_classic_vector(classic_vector_a, classic_vector_b, real_size);
        tt.time_test3+= sw.ElapsedUs();

        sw.Restart();

    }

    tt.result_test1 = distance_naive_classic_vector(classic_vector_a, classic_vector_b, real_size);
    tt.result_test2 = distance_naive_encapsulated_vector(encapsulated_vector_a, encapsulated_vector_b, real_size);
    tt.result_test3 = distance_hypot_classic_vector(classic_vector_a, classic_vector_b, real_size);

    cout << "     Naive with classic vector:   " << (tt.time_test1 / 100) << endl;
    cout << "                        Result:   " << (tt.result_test1)     << "\n" << endl;
    cout << "Naive with encapsulated vector:   " << (tt.time_test2 / 100) << endl;
    cout << "                        Result:   " << (tt.result_test2)     << "\n" << endl;
    cout << "     Hypot with classic vector:   " << (tt.time_test3 / 100) << endl;
    cout << "                        Result:   " << (tt.result_test3)     << "\n" << endl;

    tt.Reset();

    return 0;
}

static inline double distance_naive_encapsulated_vector(vector<double> &x, vector<double> &y, int n) {

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

static inline double distance_naive_classic_vector(double *x, double *y, int n) {

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

static inline double distance_hypot_classic_vector(double *x, double *y, int n) {

    double result = hypot(x[0], y[0]);

    for (int i = 1; i < n; ++i) {
        result += hypot(result, x[i] - y[i]);
    }
    return result;
}

static inline double distanceFast(double *v1, double *v2, int n) {
    return 0.0;
}

void fill_encapsulated_vector(vector<double> &x, vector<double> &y, int n) {

    random_device rd;

    mt19937 e2(rd());
    uniform_real_distribution<> dist(1, 101);

    for (int i = 0; i < n; ++i) {
        x.push_back(dist(e2));
        y.push_back(dist(e2));
    }
}

void fill_classic_vector(double *x, double *y, int n) {

    random_device rd;

    mt19937 e2(rd());
    uniform_real_distribution<> dist(1, 101);

    for (int i = 0; i < n; ++i) {
        x[i] = dist(e2);
        y[i] = dist(e2);
    }
}