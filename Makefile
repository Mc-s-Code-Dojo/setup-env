CC        = gcc
BIN       = first
OBJ       = write_42.o
SRC       = write_42.c

$(OBJ):
	$(CC) -c $(SRC)

build: $(OBJ)
	$(CC) $(OBJ) -o $(BIN)

clean:
	rm -f $(BIN) $(OBJ)

test: build
	./test_out.sh

.PHONY: clean

