CFLAGS=-Wall -O2
CC=$(CROSS_COMPILE)gcc

all: $(SRC_NAME).o
	$(CC) $(SRC_NAME).o -o $(SRC_NAME)

%.o: %.c
	$(CC) -c $(CFLAGS) $<

clean:
	rm -f main *.o
