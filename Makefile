
CC = gcc

LIB_SOURCES = modulo.c \
              producto.c \
              resta.c \
              suma.c 

LIB_OBJECTS = modulo.o \
              producto.o \
              resta.o \
              suma.o 

#
#%.o: %.c 
#	$(CC) -c $(LIB_SOURCES) -o $(LIB_OBJECTS)
 
#$(LIB_OBJECTS):  $(LIB_SOURCES)
#	$(CC) -c $(LIB_SOURCES) # -o $(LIB_OBJECTS) 

all: nolib lib stlib shlib


lib: $(LIB_OBJECTS)
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
	rm -v nolib
