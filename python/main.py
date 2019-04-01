from Benchmark import Benchmark


def main():
    # Hard Benchmark
    benchmark = Benchmark(11797, 100000)

    # Soft BenchMark
    # benchmark = Benchmark(10000, 10000)
    benchmark.setup()

    benchmark.euclidean()
    # benchmark.euclidean_numpy()
    # benchmark.euclidean_sci_py()

    # benchmark.manhattan()
    # benchmark.manhattan_numpy()

    # benchmark.cosine()
    # benchmark.cosine_sci_py()


main()
