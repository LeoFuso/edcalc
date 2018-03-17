//
// Created by Leonardo Fuso on 17/03/18.
//

#include <iostream>

void print_result(double result);
double sqrt(double t);

using namespace std;

int main() {


    print_result(sqrt(1000555555));

    return 0;
}

void print_result(double result)
{
    cout.precision(20);
    cout << "      RESULT:   " << result << "\n" << endl;
    cout << "\n" << endl;
}

double sqrt(double t) {

    double r = t/2;
    int precision = 25;

    for (; precision > 1; precision -= 1)

        r = (r+t/r)/2;


    return r;
}
