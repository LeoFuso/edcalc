#include <iostream>
#include <vector>
#include <math.h>

using namespace std;

struct Test {
    double test1;
    double test2;
    double test3;

    void Reset() {
        test1 = test2 = test3 = 0;
    }
};

void fill_vector(vector<double> &values);
static inline double distanceNaive(vector<double> &values, int n);

int main() {

    size_t size = 1000000;

    vector<double> values;

    cout << "Filling vector for calculations..." << endl;
    fill_vector(values);
    cout << "OK!" << endl;
    cout << "Starting calculations..." << endl;
    cout << distanceNaive(values, 699000) << endl;

    return 0;
}

static inline double distanceNaive(vector<double> &values, int n) {
    double result = 0;

    int distance = n/2;
    double pn = 0;
    double qn = 0;
    for (int i = 0; i < n; ++i) {
        pn = values[i];
        qn = values[i+distance];
        result += (pn - qn)*(pn - qn);
    }
    return sqrt(result);
}

static inline double distanceHypot(double *v1, double *v2, int n) {
    return 0.0;
}

static inline double distanceFast(double *v1, double *v2, int n) {
    return 0.0;
}

void fill_vector(vector<double> &values) {
    for (int i = 0; i < 1000000; ++i)
        values.push_back(i + 1.0);
}