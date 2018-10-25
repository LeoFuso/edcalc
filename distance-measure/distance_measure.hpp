#ifndef DISTANCE_MEASURE_HPP
#define DISTANCE_MEASURE_HPP

#include <typeinfo>
#include <cctype>

class DistanceMeasure
{
public:

	DistanceMeasure() = default;

	virtual ~DistanceMeasure() = default;

	virtual double
	euclidean(const double *p, const double *q, unsigned long n) = 0;

	/*
	 * Newton's method (also known as the Newton–Raphson method)
	 * to euclidean the square root of a positive number
	 */
	double
	sqrt(double t)
	{
		double r = t / 2;
		int precision = 25;

		for (; precision > 1; precision -= 1)

			r = (r + t / r) / 2;

		return r;
	}

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
