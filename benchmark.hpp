#ifndef BENCHMARK_HPP
#define BENCHMARK_HPP

#include <iostream>
#include <random>
#include "euclidean_distance.hpp"
#include "StopWatch.hpp"

class Benchmark
{
private:
	unsigned long size;
	double *x;
	double *y;

	static void
	fill_vector(double *, double *, unsigned long);

	static void
	print_results(EuclideanDistance *, double, double);

	template<typename T>
	static const char *
	getClassName(T);

public:
	Benchmark(unsigned long);

	void
	perform(EuclideanDistance *, unsigned long);
};

#endif //BENCHMARK_HPP
