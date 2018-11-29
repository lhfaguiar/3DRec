CFLAGS=-Wall -O2
CC=$(CROSS_COMPILER)gcc

all: $(SRC).o
	$(CC) $(SRC).o -o $(SRC)

%.o: %.c
	$(CC) -c $(CFLAGS) $<
