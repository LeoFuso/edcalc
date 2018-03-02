CXXFLAGS := -O3 -std=c++11
CXXFLAGS_NOOPT := -O1 -std=c++11
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
	$(CXX) $(CXXFLAGS_NOOPT) $^ -D_BASELINE -o $@

$(OBJ_DIR)/ed128: main.cpp ed128d.cpp.o StopWatch.cpp.o
	mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) $^ -D_DOUBLE128 -o $@

$(OBJ_DIR)/ed256: main.cpp ed256d.cpp.o StopWatch.cpp.o
	mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) -mavx2 $^ -D_DOUBLE256 -o $@
