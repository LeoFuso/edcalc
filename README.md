### C++ / Python Integration
### PyDistance

## Build process

``` bash
$ mkdir build
$ cd build
$ cmake -DATA_TYPE={{DATA_TYPE}} ..
$ make
$ cp lib/PyDistance.so ../python/
$ python3 ../python/main.py
```

Where __DATA_TYPE__ can be either **auto**, **128**, **256**

### Python 3.6^
It appears that Python 3.6^is the recommend way of building this library.

However _CMake_ only appears to found the latest _Python3.6_ version after
installing the _python3-dev_ packages.

```bash
$ sudo apt install python-dev python3-dev
```