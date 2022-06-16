#include "distance_measure_adapter.hpp"
#include "distance_measure_factory.hpp"

Distance_type
_init_()
{
    auto *factory = new DistanceMeasureFactory();
    return factory->produce();
}

void
_destroy_(Distance_type untyped_ptr)
{
	auto *typed_ptr = static_cast<Distance_type *>(untyped_ptr);
	delete typed_ptr;
}

double
_calculate_(Distance_type untyped_self, const double *x, const double *y, unsigned long n)
{
	auto *typed_ptr = static_cast<DistanceMeasure *>(untyped_self);
	return typed_ptr->euclidean(x, y, n);
}