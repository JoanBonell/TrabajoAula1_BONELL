CFLAGS = -I../..
ifeq ($(OS),Windows_NT)
	LDFLAGS = -s -lopengl32 -lgdi32
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		LDFLAGS = -framework OpenGL -framework Cocoa
	else ifeq ($(UNAME_S),Linux)
		LDFLAGS = -s -lGLU -lGL -lX11
	endif
endif


icono: visor.o tigr.o
	gcc -o visor visor.o tigr.o $(CFLAGS) $(LDFLAGS)
visor.o: visor.cpp
	gcc -c visor.cpp
tigr.o: ../tigr/tigr.c ../tigr/tigr.h
	gcc -c ../tigr/tigr.c