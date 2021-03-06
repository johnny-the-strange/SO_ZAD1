CC = gcc
CFLAGS = -Wall -ansi --pedantic -c -std=c99 -v
LDFLAGS = -Wall -ansi --pedantic

OBJECTS = err.o
ALL = ToONP W

all: $(ALL)

%.o : %.c
	$(CC) $(CFLAGS) $<

$(ALL) : % : %.o $(OBJECTS)       
	$(CC) $(LDFLAGS) -o $@ $^

clean:
	rm -f *.o $(ALL) *~
