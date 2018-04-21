CXXFLAGS := -std=c++11
CXXFLAGS_NO_SSE := $(CXXFLAGS) -O0
CXXFLAGS_SSE2 := $(CXXFLAGS) -O3 -march=native
CXXFLAGS_AVX2 := $(CXXFLAGS) -O3 -march=native -mavx2

OBJ_DIR := build

.PHONY: all clean

all: $(OBJ_DIR)/ed256 $(OBJ_DIR)/ed128 $(OBJ_DIR)/baseline

clean:
	$(RM) -rf $(OBJ_DIR)
	$(RM) -f *.cpp.o

%.cpp.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(OBJ_DIR)/baseline: main.cpp ednaive.cpp.o StopWatch.cpp.o
	mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) $^ -D_BASELINE -o $@

$(OBJ_DIR)/ed128: main.cpp ed128d.cpp.o StopWatch.cpp.o
	mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) $^ -D_DOUBLE128 -o $@

$(OBJ_DIR)/ed256: main.cpp ed256d.cpp.o StopWatch.cpp.o
	mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) -mavx2 $^ -D_DOUBLE256 -o $@
