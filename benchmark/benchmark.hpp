#ifndef BENCHMARK_HPP
#define BENCHMARK_HPP

#include <iostream>
#include <random>
#include "StopWatch.hpp"
#include "../distance-measure/distance_measure.hpp"

class Benchmark
{
private:
	unsigned long size;
	unsigned long n_tests;
	double *x;
	double *y;

	static void
	fill_vector(double *, double *, unsigned long);

	static void
	print_results(DistanceMeasure *, double, double);

public:
	Benchmark(unsigned long, unsigned long);

	void
	euclidean(DistanceMeasure *);

	void
	manhattan(DistanceMeasure *);
};

#endif //BENCHMARK_HPP
