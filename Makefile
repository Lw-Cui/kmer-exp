SRC := $(wildcard *.cpp)
OBJ := $(patsubst %.cpp, %.o, $(SRC))
HEAD := $(wildcard *.hpp)
TARGET := Graph.out

CC := clang++-3.5
CFLAG := -g -Wall -c

all: $(TARGET)
	
$(TARGET): $(OBJ)
	$(CC) $^ -o $@

$(OBJ): %.o: %.cpp $(HEAD)
	$(CC) $^ -o $@ $(CFLAG)

clean:
	rm -rf $(OBJ) $(TARGET)

rebuild: clean all

.PHONY: all clean rebuild
