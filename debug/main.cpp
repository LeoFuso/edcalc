#include "../benchmark/benchmark.hpp"
#include "../euclidean_distance/ed_baseline.hpp"
#include "../euclidean_distance/ed_128d.hpp"
#include "../euclidean_distance/ed_256d.hpp"

int
main()
{
	auto * baseline = new Baseline;
	auto * double128 = new Double128;
	auto * double256 = new Double256;

	unsigned long array_size = 1000000;
	unsigned long num_tests = 100;

	Benchmark benchmark(array_size, num_tests);

	benchmark.perform(baseline);
	benchmark.perform(double128);
	benchmark.perform(double256);

	return 0;
}
