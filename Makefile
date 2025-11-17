
CC = gcc

LIB_SOURCES = modulo.c \
              producto.c \
              resta.c \
              suma.c \
	      main.c

LIB_OBJECTS = modulo.o \
              producto.o \
              resta.o \
              suma.o \
	      main.o

#
#%.o: %.c 
#	$(CC) -c $(LIB_SOURCES) -o $(LIB_OBJECTS)
 
#$(LIB_OBJECTS):  $(LIB_SOURCES)
#	$(CC) -c $(LIB_SOURCES) # -o $(LIB_OBJECTS) 



main: $(LIB_SOURCES) main.c
	$(CC) $ -o main  $(LIB_SOURCES) 


clean:
	rm -v *.o
