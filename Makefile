
CC = gcc

LIB_SOURCES = division.c \
              product.c \
              resta.c \
              suma.c

%.o: %.c $(LIB_SOURCES)
	$(CC) -c -o $@ $< $(CFLAGS)

LIB_OBJECTS	   = $(LIB_SOURCES:.c=.o) 

main: main.o suma.o
	$(CC) -o main main.o $(LIB_OBJECTS)

