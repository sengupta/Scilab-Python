CC=gcc
CFLAGS= -I/usr/include/python2.6/ -lpython2.6

all: libscipython.so

libscipython.so: scipython.o
	$(CC) -fPIC scipython.o --shared -o libscipython.so $(CFLAGS)

scipython.o: scipython.c
	$(CC) -fPIC -c scipython.c $(CFLAGS)

test: 
	scilab-cli -f python.sci 

clean: 
	rm -r libscipython.so scipython.o sbhs.pyc
