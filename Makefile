CXXFLAGS := -O3 -std=c++11
OBJ_DIR := build

.PHONY: all clean

all: $(OBJ_DIR)/test256 $(OBJ_DIR)/test128 $(OBJ_DIR)/testbase

clean:
	$(RM) -rf $(OBJ_DIR)
	$(RM) -f *.cpp.o

%.cpp.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

ed256d.cpp.o: ed256d.cpp
	$(CXX) $(CXXFLAGS) -mavx2 -c $< -o $@

$(OBJ_DIR)/testbase: main.cpp ednaive.cpp.o StopWatch.cpp.o
	mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) $^ -D_BASELINE -o $@

$(OBJ_DIR)/test128: main.cpp ed128d.cpp.o StopWatch.cpp.o
	mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) $^ -D_DOUBLE128 -o $@

$(OBJ_DIR)/test256: main.cpp ed256d.cpp.o StopWatch.cpp.o
	mkdir -p $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) -mavx2 $^ -D_DOUBLE256 -o $@
