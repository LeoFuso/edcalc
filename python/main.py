from Benchmark import Benchmark


def main():
    benchmark = Benchmark(11111, 100000)
    benchmark.setup()

    # benchmark.euclidean()
    # benchmark.euclidean_numpy()
    # benchmark.euclidean_sci_py()

    # benchmark.manhattan()
    # benchmark.manhattan_numpy()

    # benchmark.cosine()
    benchmark.cosine_sci_py()


main()
