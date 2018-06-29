#include "benchmark.hpp"


Benchmark::Benchmark(unsigned long size, unsigned long n_tests)
{

	Benchmark::size = size;
	Benchmark::n_tests = n_tests;
	Benchmark::x = (double *) aligned_alloc(32, Benchmark::size*sizeof(double));
	Benchmark::y = (double *) aligned_alloc(32, Benchmark::size*sizeof(double));

	fill_vector(Benchmark::x, Benchmark::y, Benchmark::size);
}

void
Benchmark::perform(EuclideanDistance * ed)
{
	StopWatch sw;

	double *x = Benchmark::x;
	double *y = Benchmark::y;
	unsigned long n = Benchmark::size;

	double time = 0.0;
	double result = 0.0;
	unsigned long toDivide = Benchmark::n_tests;
	unsigned long do_tests = Benchmark::n_tests;

	sw.Restart();
	while (do_tests--)
	{
		ed->calculate(x, y, n);
	}
	time = sw.ElapsedUs();

	result = ed->calculate(x, y, n);
	time /= toDivide;

	print_results(ed, time, result);
}

void
Benchmark::fill_vector(double *x, double *y, unsigned long n)
{
	std::mt19937 e2;
	std::uniform_real_distribution<> dist(1, 151);

	while (n--)
	{
		x[n] = dist(e2);
		y[n] = dist(e2);
	}
}

void
Benchmark::print_results(EuclideanDistance * ed, double time, double result)
{

	std::cout << "\n" << std::endl;
	std::cout << " USING CLASS:   " << Benchmark::getClassName(ed) << std::endl;
	std::cout.precision(12);
	std::cout << "ELAPSED TIME:   " << time/1000000 << "s" << std::endl;
	std::cout.precision(12);
	std::cout << "      RESULT:   " << result << "\n" << std::endl;
	std::cout << "\n" << std::endl;
}

const char *
Benchmark::getClassName(EuclideanDistance * object)
{
	return typeid(object).name();
}
