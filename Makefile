CXXFLAGS := -std=c++11
CXXFLAGS_O0 := $(CXXFLAGS) -O0
CXXFLAGS_O2 := $(CXXFLAGS) -O2 -finline-functions -funswitch-loops -fpredictive-commoning -fgcse-after-reload -fno-tree-loop-vectorize -ftree-loop-distribute-patterns -fsplit-paths -fno-tree-slp-vectorize -fno-vect-cost-model -ftree-partial-pre -fpeel-loops -fipa-cp-clone
CXXFLAGS_SSE2 := $(CXXFLAGS) -O3 -march=native
CXXFLAGS_AVX2 := $(CXXFLAGS) -O3 -march=native -mavx2

OBJ_DIR := build

.PHONY: all clean

all: $(OBJ_DIR)/ed256 $(OBJ_DIR)/ed128 $(OBJ_DIR)/naive0 $(OBJ_DIR)/naive2

clean:
	$(RM) -rf $(OBJ_DIR)
	$(RM) -f *.cpp.o

ednaive_O0.cpp.o: ed_baseline.cpp
	$(CXX) $(CXXFLAGS_O0) -c $< -o $@

ednaive_O2.cpp.o: ed_baseline.cpp
	$(CXX) $(CXXFLAGS_O2) -c $< -o $@

ed128d.cpp.o: ed_128d.cpp
	$(CXX) $(CXXFLAGS_SSE2) -c $< -o $@

ed256d.cpp.o: ed_256d.cpp
	$(CXX) $(CXXFLAGS_AVX2) -c $< -o $@

StopWatch.cpp.o: StopWatch.cpp
	$(CXX) -c $< -o $@

$(OBJ_DIR)/naive0: main.cpp ednaive_O0.cpp.o StopWatch.cpp.o
	mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) $^ -D_BASELINE -o $@

$(OBJ_DIR)/naive2: main.cpp ednaive_O2.cpp.o StopWatch.cpp.o
	mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) $^ -D_BASELINE -o $@

$(OBJ_DIR)/ed128: main.cpp ed128d.cpp.o StopWatch.cpp.o
	mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) $^ -D_DOUBLE128 -o $@

$(OBJ_DIR)/ed256: main.cpp ed256d.cpp.o StopWatch.cpp.o
	mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) -mavx2 $^ -D_DOUBLE256 -o $@
