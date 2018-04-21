CXXFLAGS := -std=c++11
CXXFLAGS_NO_SSE := $(CXXFLAGS) -O2 -finline-functions -funswitch-loops -fpredictive-commoning -fgcse-after-reload -fno-tree-loop-vectorize -ftree-loop-distribute-patterns -fsplit-paths -fno-tree-slp-vectorize -fno-vect-cost-model -ftree-partial-pre -fpeel-loops -fipa-cp-clone
CXXFLAGS_SSE2 := $(CXXFLAGS) -O3 -march=native
CXXFLAGS_AVX2 := $(CXXFLAGS) -O3 -march=native -mavx2

OBJ_DIR := build

.PHONY: all clean

all: $(OBJ_DIR)/ed256 $(OBJ_DIR)/ed128 $(OBJ_DIR)/baseline

clean:
	$(RM) -rf $(OBJ_DIR)
	$(RM) -f *.cpp.o

ednaive.cpp.o: ednaive.cpp
	$(CXX) $(CXXFLAGS_NO_SSE) -c $< -o $@

ed128d.cpp.o: ed128d.cpp
	$(CXX) $(CXXFLAGS_SSE2) -c $< -o $@

ed256d.cpp.o: ed256d.cpp
	$(CXX) $(CXXFLAGS_AVX2) -c $< -o $@

StopWatch.cpp.o: StopWatch.cpp
	$(CXX) -c $< -o $@

$(OBJ_DIR)/baseline: main.cpp ednaive.cpp.o StopWatch.cpp.o
	mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS_NOOPT) $^ -D_BASELINE -o $@

$(OBJ_DIR)/ed128: main.cpp ed128d.cpp.o StopWatch.cpp.o
	mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) $^ -D_DOUBLE128 -o $@

$(OBJ_DIR)/ed256: main.cpp ed256d.cpp.o StopWatch.cpp.o
	mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) $^ -D_DOUBLE256 -o $@
