#include "../benchmark/benchmark.hpp"
#include "../distance-measure/baseline_distance.hpp"
#include "../distance-measure/__m128d__distance.hpp"
#include "../distance-measure/__m256d__distance.hpp"

int
main()
{
	auto * baseline = new BaselineDistance;
	auto * double128 = new __m128d__Distance;
	auto * double256 = new __m256d__Distance;

	unsigned long array_size = 5;
	unsigned long num_tests = 1;

	Benchmark benchmark(array_size, num_tests);

	benchmark.manhattan(baseline);
	benchmark.manhattan(double128);
	benchmark.manhattan(double256);

	benchmark.euclidean(baseline);
	benchmark.euclidean(double128);
	benchmark.euclidean(double256);

	return 0;
}
