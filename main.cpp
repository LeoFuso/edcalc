#include <iostream>
#include <vector>
#include <math.h>
#include "StopWatch.h"
#include <random>

using namespace std;

struct Test {
    double test1;
    double test2;
    double test3;

    void Reset() {
        test1 = test2 = test3 = 0;
    }
};

void fill_encapsulated_vector(vector<double> &x, vector<double> &y, int n);

void fill_classic_vector(double *x, double *y, int n);

static inline double distance_naive_encapsulated_vector(vector<double> &x, vector<double> &y, int n);

static inline double distance_naive_classic_vector(double *x, double *y, int n);

int main() {

    size_t size = 1000000;
    size_t real_size = size / 2;

    Test tt;
    StopWatch sw;

    tt.test1 = 0;
    tt.test2 = 0;
    tt.test3 = 0;


    vector<double> encapsulated_vector_a;
    vector<double> encapsulated_vector_b;

    double *classic_vector_a = (double*) aligned_alloc(32, real_size * sizeof(double));
    double *classic_vector_b = (double*) aligned_alloc(32, real_size * sizeof(double));

    cout << "Filling vector for calculations..." << endl;

    fill_encapsulated_vector(encapsulated_vector_a, encapsulated_vector_b, real_size);
    fill_classic_vector(classic_vector_a, classic_vector_b, real_size);

    cout << "OK!" << endl;

    cout << "Starting calculations...\n" << endl;

    for (int i = 0; i < 100; i++) {

        sw.Restart();

        distance_naive_classic_vector(classic_vector_a, classic_vector_b, real_size);
        tt.test1 += sw.ElapsedUs();

        sw.Restart();

        distance_naive_encapsulated_vector(encapsulated_vector_a, encapsulated_vector_b, real_size);
        tt.test2 += sw.ElapsedUs();

        sw.Restart();
    }

    cout << "     Naive with classic vector:   " << (tt.test1 / 100) << endl;
    cout << "Naive with encapsulated vector:   " << (tt.test2 / 100) << endl;

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

static inline double distanceHypot(double *v1, double *v2, int n) {
    return 0.0;
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