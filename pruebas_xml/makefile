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


icono: parser.o xml.o
	gcc -o visor parser.o xml.o $(CFLAGS) $(LDFLAGS)
parser.o: parser.c
	gcc -c parser.c
xml.o: ../xml/src/xml.h ../xml/src/xml.c
	gcc -c ../xml/src/xml.c
