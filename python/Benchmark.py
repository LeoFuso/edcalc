import random
import math
from timeit import default_timer as timer
from scipy.spatial import distance
import numpy as np
import PyDistance as pd


class Benchmark:
    def __init__(self, size, n_tests):
        self.size = size
        self.n_tests = n_tests
        self.x = []
        self.y = []

    def setup(self):
        random.seed(math.pi)
        self.x = [random.randint(1, 151) for _ in range(self.size)]
        self.y = [random.randint(1, 151) for _ in range(self.size)]

    def euclidean_numpy(self):
        start = timer()
        for i in range(0, self.n_tests):
            np.linalg.norm(np.array(self.x) - np.array(self.y))
        end = timer()
        time = end - start
        res = np.linalg.norm(np.array(self.x) - np.array(self.y))
        print("\nUSING METHOD:    EUCLIDEAN")
        print("USING CLASS:     NumPy")
        self.print_results(time, res)

    def euclidean_sci_py(self):
        start = timer()
        for i in range(0, self.n_tests):
            distance.euclidean(self.x, self.y)
        end = timer()
        time = end - start
        res = distance.euclidean(self.x, self.y)
        print("\nUSING METHOD:    EUCLIDEAN")
        print("USING CLASS:    SciPy")
        self.print_results(time, res)

    def euclidean(self):
        start = timer()
        for i in range(0, self.n_tests):
            pd.euclidean(self.x, self.y)
        end = timer()
        time = end - start

        res = pd.euclidean(self.x, self.y)
        print("\nUSING METHOD:    EUCLIDEAN")
        print("USING CLASS:    " + pd.getClassName())
        self.print_results(time, res)

    def manhattan(self):
        start = timer()
        for i in range(0, self.n_tests):
            pd.manhattan(self.x, self.y)
        end = timer()
        time = end - start

        res = pd.manhattan(self.x, self.y)
        print("\nUSING METHOD:    MANHATTAN")
        print("USING CLASS:    " + pd.getClassName())
        self.print_results(time, res)

    def manhattan_numpy(self):
        start = timer()
        for i in range(0, self.n_tests):
            np.sum(np.abs(np.array(self.x) - np.array(self.y)), axis=0)
        end = timer()
        time = end - start
        res = np.sum(np.abs(np.array(self.x) - np.array(self.y)), axis=0)
        print("\nUSING METHOD:     MANHATTAN")
        print("USING CLASS:     NumPy")
        self.print_results(time, res)

    def cosine(self):
        start = timer()
        for i in range(0, self.n_tests):
            pd.cosine(self.x, self.y)
        end = timer()
        time = end - start

        res = pd.cosine(self.x, self.y)
        print("\nUSING METHOD:      COSINE")
        print("USING CLASS:    " + pd.getClassName())
        self.print_results(time, res)

    def cosine_sci_py(self):
        start = timer()
        for i in range(0, self.n_tests):
            1 - distance.cosine(self.x, self.y)
        end = timer()
        time = end - start
        res = 1 - distance.cosine(self.x, self.y)
        print("\nUSING METHOD:     COSINE")
        print("USING CLASS:     SciPy")
        self.print_results(time, res)

    def print_results(self, time, result):
        if len(self.x) < 20:
            print("x -> ", self.x)
            print("y -> ", self.y)

        print("ELAPSED TIME:    ", time, "s")
        print("      RESULT:    ", result)
