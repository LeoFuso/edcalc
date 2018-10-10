#include "Distance_C_Adapter.hpp"
#include "../../distance-measure/baseline_distance.hpp"

Distance_type
_init_()
{
	return new BaselineDistance;
}

void
_destroy_(Distance_type untyped_ptr)
{
	auto *typed_ptr = static_cast<BaselineDistance *>(untyped_ptr);
	delete typed_ptr;
}

double
_calculate_(Distance_type untyped_self, const double *x, const double *y, unsigned long n)
{
	auto *typed_ptr = static_cast<BaselineDistance *>(untyped_self);
	return typed_ptr->euclidean(x, y, n);
}