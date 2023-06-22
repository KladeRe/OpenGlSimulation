CXX = g++
CXXFLAGS = -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl

SRC = $(wildcard src/*.c) $(wildcard src/*.cpp)
BIN = bin

.PHONY: all clean

all: dirs simulation

run: all
	$(BIN)/simulation

dirs:
	mkdir -p ./$(BIN)

simulation: $(SRC)
	$(CXX) -o $(BIN)/$@ $(SRC) $(CXXFLAGS)


clean:
	rm -rf $(BIN)