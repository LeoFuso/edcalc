#include "../benchmark/benchmark.hpp"
#include "../distance-measure/baseline_distance.hpp"
#include "../distance-measure/__m128d__distance.hpp"
#include "../distance-measure/__m256d__distance.hpp"
#include "../adapter/cpp/DistanceMeasureFactory.hpp"

int
main()
{
	auto * baseline = new BaselineDistance;
	auto * double128 = new __m128d__Distance;
	auto * double256 = new __m256d__Distance;

	unsigned long array_size = 1000000;
	unsigned long num_tests = 10;

	Benchmark benchmark(array_size, num_tests);

	benchmark.perform(baseline);
	benchmark.perform(double128);
	benchmark.perform(double256);

	auto *factory = new DistanceMeasureFactory();
	auto *d_measure = factory->produce();
	benchmark.perform(d_measure);

	return 0;
}
