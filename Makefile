CC=gcc
RM=rm -f
CFLAGS=-Wl,-rpath,/usr/lib -Wall -fPIC -O3
LDFLAGS=
LDLIBS=`cups-config --image --libs`

SRCS=rastertoxp58.c
OBJS=$(subst .c,.o,$(SRCS))

all: rastertoxp58

rastertoxp58: $(OBJS)
	gcc $(LDFLAGS) -o rastertoxp58 rastertoxp58.o $(LDLIBS)

rastertoxp58.o: rastertoxp58.c
	gcc $(CFLAGS) -c rastertoxp58.c