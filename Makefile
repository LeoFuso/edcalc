CXXFLAGS := -O2 -std=c++11 -S
CXXFLAGS := $(CXXFLAGS) -finline-functions -funswitch-loops -fpredictive-commoning -fgcse-after-reload -fno-tree-loop-vectorize -ftree-loop-distribute-patterns -fsplit-paths -fno-tree-slp-vectorize -fno-vect-cost-model -ftree-partial-pre -fpeel-loops -fipa-cp-clone
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
