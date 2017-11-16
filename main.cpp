#include <iostream>
#include <vector>

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

int main() {

    size_t size = 1000000;

    vector<double> values;

    fill_vector(values);

    cout << "Starting calculations..." << endl;

    return 0;
}

static inline double distanceNaive(double *v1, double *v2, int n) {
    return 0.0;
}

static inline double distanceHypot(double *v1, double *v2, int n) {
    return 0.0;
}

static inline double distanceFast(double *v1, double *v2, int n) {
    return 0.0;
}

void fill_vector(vector<double> &values) {
    for (int i = 0; i < 1000000; ++i)
        values.push_back(i * 1.0);


}