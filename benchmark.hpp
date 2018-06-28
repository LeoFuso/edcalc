#ifndef BENCHMARK_HPP
#define BENCHMARK_HPP

#include <iostream>
#include <random>
#include "euclidean_distance.hpp"
#include "StopWatch.hpp"

class Benchmark
{
private:
	static unsigned long size;
	static double *x;
	static double *y;

	static void
	fill_vector(double *, double *, unsigned long);

	static void
	print_results(EuclideanDistance *,double, double);

	static template<typename T>
	const char *
	getClassName(T);

public:
	~Benchmark(unsigned long);
	void
	perform(EuclideanDistance *);
};

#endif //BENCHMARK_HPP
