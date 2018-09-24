#ifndef EUCLIDEAN_DISTANCE_HPP
#define EUCLIDEAN_DISTANCE_HPP

class EuclideanDistance
{
public:
	EuclideanDistance() = default;

	virtual ~EuclideanDistance() = default;

	virtual double
	calculate(const double *x, const double *y, unsigned long n) = 0;

	/*
	 * Newton's method (also known as the Newton–Raphson method)
	 * to calculate the square root of a positive number
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
};

#endif //EUCLIDEAN_DISTANCE_HPP
