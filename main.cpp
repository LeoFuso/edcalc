#include "benchmark.hpp"
#include "ed_baseline.hpp"
#include "ed_128d.hpp"
#include "ed_256d.hpp"

int
main()
{
	EuclideanDistance * baseline = new Baseline;
	EuclideanDistance * double128 = new Double128;
	EuclideanDistance * double256 = new Double256;

	unsigned long size = 1000000;
	Benchmark benchmark(size);

	benchmark.perform(baseline, 100);
	benchmark.perform(double128, 100);
	benchmark.perform(double256, 100);

	return 0;
}
