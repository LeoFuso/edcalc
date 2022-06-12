### C++ Vector Distance Study
### VectorDistance

I've built this lib to benchmark different distance measures operations using different vector implementations.

So far you can build this lib using:
* a baseline strategy;
* a baseline strategy with no compiler optimizations;
* Vectors of 128 bits (**SSE2**)
* Vectors of 256 bits (**AVX2**)

There's a simple benchmark that can be run after the **make** execution:
```
$ ./build/bin/main
```

## Build process

``` bash
$ mkdir build
$ cd build
$ cmake -DVECTOR_SIZE={{VECTOR-SIZE}} ..
$ make
```

Where __VECTOR_SIZE__ can be either **auto**, **auto-no-opt**, **128**, **256**


_The original purpose of these libraries was to integrate with Python, to benchmark against other native solutions._

_I'm dropping the support in favor of Java's Project Panama._

