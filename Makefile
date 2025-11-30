
CC = gcc

LIB_SOURCES = modulo.c \
              producto.c \
              resta.c \
              suma.c 

LIB_OBJECTS = $(LIB_SOURCES:.c=.o)
             

 

all: nolib stlib shlib


libtest.a: $(LIB_OBJECTS)
	$(CC) -c $(LIB_SOURCES) # -o $(LIB_OBJECTS) 
	ar rcs libtest.a $(LIB_OBJECTS)  

stlib: libtest.a
	gcc -static main.c -L. -ltest -o stlib




nolib: $(LIB_SOURCES) main.c
	$(CC) $ -o $@ main.c  $(LIB_SOURCES) 


libsh.so: $(LIB_OBJECTS)
	gcc -shared -o libsh.so  $(LIB_OBJECTS)
	#gcc -shared -Wl,-soname,libmean.so.1 -o libmean.so.1.0.1  calc_mean.o


shlib: libsh.so
	gcc main.c -o shlib  -L. -lsh




clean:
	rm -v *.o
	rm -v *.so
	rm -v *.a
	rm -v nolib

#$ gcc -L/home/username/foo -Wl,-rpath=/home/username/foo -Wall -o test main.c -lfoo
