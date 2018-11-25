#include "../benchmark/benchmark.hpp"
#include "../adapter/cpp/DistanceMeasureFactory.hpp"

int
main()
{
	auto *factory = new DistanceMeasureFactory();
	auto *d_measure = factory->produce();

	unsigned long array_size = 10000;
	unsigned long num_tests = 100000;

	Benchmark benchmark(array_size, num_tests);
	benchmark.euclidean(d_measure);
	benchmark.manhattan(d_measure);

	return 0;
}
