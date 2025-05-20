CC = clang
TARGET = a.out
SRC = single_linked_list.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) -o $(TARGET) $(SRC)

clean:
	rm -rf $(TARGET)

run: $(TARGET)
	./$(TARGET)
