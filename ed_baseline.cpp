#include "edbaseline.hpp"

double
Baseline::calculate(const double *x, const double *y, unsigned long size)
{
	double result = 0;
	for (; size > 0; --size)
	{
		const double num = x[size] - y[size];
		result += num*num;
	}
	return sqrt(result);
}
