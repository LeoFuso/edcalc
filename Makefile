SRC = main.cpp StopWatch.cpp
CXXFLAGS = -O3
CXX=g++

testbase:
    $(CXX) $(SRC)   ednaive.cpp $(CXXFLAGS) -D_BASELINE -o $@
test128:
    $(CXX) $(SRC)   ed128d.cpp $(CXXFLAGS)  -D_DOUBLE128 -o $@
test256:
	$(CXX) $(SRC)   ed256d.cpp $(CXXFLAGS)  -arch=native    -D_DOUBLE256    -o  $@

.PHONY: all

all: testbase test128 test256
