#include "Distance_C_Adapter.hpp"
#include "../../euclidean-distance/ed_baseline.hpp"

Distance_type
_init_()
{
	return new Baseline;
}

void
_destroy_(Distance_type untyped_ptr)
{
	auto *typed_ptr = static_cast<Baseline *>(untyped_ptr);
	delete typed_ptr;
}

double
_calculate_(Distance_type untyped_self, const double *x, const double *y, unsigned long n)
{
	auto *typed_ptr = static_cast<Baseline *>(untyped_self);
	return typed_ptr->calculate(x, y, n);
}