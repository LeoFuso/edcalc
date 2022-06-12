#include "DistanceMeasureFactory.hpp"

double
cosine(const double *x, const double *y, unsigned long n)
{
	auto *factory = new DistanceMeasureFactory();
	auto *d_measure = factory->produce();
	return d_measure->cosine(x, y, n);
}

double
manhattan(const double *x, const double *y, unsigned long n)
{
	auto *factory = new DistanceMeasureFactory();
	auto *d_measure = factory->produce();
	return d_measure->manhattan(x, y, n);
}

double
euclidean(const double *x, const double *y, unsigned long n)
{
	auto *factory = new DistanceMeasureFactory();
	auto *d_measure = factory->produce();
	return d_measure->euclidean(x, y, n);
}

const char *
class_name()
{
	auto *factory = new DistanceMeasureFactory();
	auto *d_measure = factory->produce();
	return d_measure->getClassSimpleName();
}