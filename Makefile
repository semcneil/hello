# these are macros, text expansion (time savers)
CC = g++
CFLAGS = -Wall -g -std=c++11


# all compiles everything based on dependencies
all: hello

# $@ matches the target (what comes before the :)
# $< matches the first dependent (first after the :)
# The name on the left depends on the names on the right.

# This is the instruction to compile main.cpp. It should create a binary
# and linked output file named main. Note that compiled dependencies have to be 
# listed (task.o). If task.o doesn't exist the task.o rule below is run first.
hello: hello.cpp 
	$(CC) $(CFLAGS) hello.cpp -o $@

# This command deletes the binaries that all creates.
clean:
	rm -f *.o hello


