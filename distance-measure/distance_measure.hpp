#ifndef DISTANCE_MEASURE_HPP
#define DISTANCE_MEASURE_HPP

#include <typeinfo>
#include <math.h>
#include <cctype>

class DistanceMeasure
{
public:

	DistanceMeasure() = default;

	virtual ~DistanceMeasure() = default;

	virtual double
	euclidean(const double *p, const double *q, unsigned long n) = 0;

	virtual double
	manhattan(const double *p, const double *q, unsigned long n) = 0;

	/*
     * Returns the runtime name the object's class
     */
	const char *
	getClassName()
	{
		const char *dirt_name = nullptr;
		dirt_name = typeid(*this).name();

		/* Removing the ID from the Class name */
		while (dirt_name)
		{
			if (isdigit(dirt_name[0]))
				dirt_name++;
			else
				break;
		}

		return dirt_name;
	}
};

#endif //DISTANCE_MEASURE_HPP
