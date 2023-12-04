CC = g++
CCFLAGS = -c -Wall

LIBSOURCES = calculator.cpp
LIBOBJECTS = $(LIBSOURCES:.cpp=.o)

MAIN=main.cpp
MAINOBJECT=$(MAIN:.cpp=.o)

STATICLIB=libloader.a

TARGET = Lab4

all:
	$(CC) $(CFLAGS) $(MAIN) $(LIBSOURCES)
	$(CC) $(MAINOBJECT) $(LIBOBJECTS) -o $(TARGET)

static:
	ar rcs $(STATICLIB) $(LIBOBJECTS)
	$(CC) $(MAINOBJECT) -L. -lloader -o $(EXECUTABLE)

clean:
	rm $(LIBOBJECTS) $(MAINOBJECT) $(TARGET) $(STATICLIB)
