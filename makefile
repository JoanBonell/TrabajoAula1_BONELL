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


icono: icono.o visor.o xml.o tigr.o
	gcc -v -o icono icono.o visor.o tigr.o xml.o $(CFLAGS) $(LDFLAGS)
icono.o: icono.c
	gcc -c icono.c
#parser.o: parser.c
#	gcc -c parser.c -o parser
visor.o: visor.cpp
	gcc -c visor.cpp
xml.o: ./xml/src/xml.c ./xml/src/xml.h
	gcc -c ./xml/src/xml.c
tigr.o: ./tigr/tigr.c ./tigr/tigr.h
	gcc -c ./tigr/tigr.c
