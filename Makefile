.PHONY: all clean

all: libstopwatch.so

libstopwatch.so: libstopwatch.o
	$(CXX) -shared $^ -o $@

libstopwatch.o: Stopwatch.cpp Stopwatch.hpp stopwatch.h
	$(CXX) -c -fPIC Stopwatch.cpp -o $@

example: example.c libstopwatch.so
	$(CC) example.c ./libstopwatch.so -o example

clean:
	rm -f *.o *.so example
