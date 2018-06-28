#import "benchmark.hpp"
#import "ed_baseline.hpp"
#import "ed_128d.hpp"
#import "ed_256d.hpp"

int
main()
{
	EuclideanDistance baseline = Baseline();
	EuclideanDistance double128 = Double128();
	EuclideanDistance double256 = Double256();

	unsigned long size = 1000000;
	Benchmark benchmark(size);

	benchmark.perform(baseline);
	benchmark.perform(double128);
	benchmark.perform(double256);

	return 0;
}
