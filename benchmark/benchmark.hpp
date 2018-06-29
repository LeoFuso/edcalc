#ifndef BENCHMARK_HPP
#define BENCHMARK_HPP

#include <iostream>
#include <random>
#include "../euclidean_distance/euclidean_distance.hpp"
#include "StopWatch.hpp"

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
	print_results(EuclideanDistance *, double, double);

	static const char *
	getClassName(EuclideanDistance*);

public:
	Benchmark(unsigned long, unsigned long);

	void
	perform(EuclideanDistance *);
};

#endif //BENCHMARK_HPP
