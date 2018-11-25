#include "baseline_distance.hpp"

double
BaselineDistance::euclidean(const double *p, const double *q, unsigned long n)
{
	double result = 0;
	for (int i = 0; i < n; ++i)
	{
		const double num = q[i] - p[i];
		result += num * num;
	}
	return sqrt(result);
}

double
BaselineDistance::manhattan(const double *p, const double *q, unsigned long n)
{
	double result = 0;
	for (int i = 0; i < n; ++i)
	{
		const double num = fabs(p[i] - q[i]);
		result += num;
	}
	return result;
}
