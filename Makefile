CC = g++
CFLAGS = -Wall -Werror `pkg-config --cflags glfw3 gl glew`
LDFLAGS =`pkg-config --libs glfw3 gl glew`

all: game 

game: game.o
	$(CC) $(CFLAGS) $(LDFLAGS) -o game game.o 

.PHONY: clean

clean:
	rm -f game *.o
