#include <iostream>
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

double
BaselineDistance::cosine(const double *p, const double *q, unsigned long n)
{
	double a = 0;
	double b = 0;
	double c = 0;

	for (int i = 0; i < n; ++i)
	{
		const double a_local = p[i] * q[i];
		a += a_local;
		const double b_local = p[i] * p[i];
		b+= b_local;
		const double c_local = q[i] * q[i];
		c+= c_local;
	}
	const double top = a;
	const double bottom = sqrt(b) * sqrt(c);

	return top / bottom;
}
