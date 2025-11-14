
CC = gcc

LIB_SOURCES = division.c \
              product.c \
              resta.c \
              suma.c

%.o: %.c $(LIB_SOURCES)
	$(CC) -c -o $@ $< $(CFLAGS)

main: main.c
	$(CC) main.c -o main
