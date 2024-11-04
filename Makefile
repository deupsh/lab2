CC = gcc
CFLAGS = -Wall -fPIC -g
LIB_DIR = lib
SRC_DIR = src
OBJ_DIR = obj

SOURCES = $(wildcard $(SRC_DIR)/*.c)
OBJECTS = $(SOURCES:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

LIBRARY = $(LIB_DIR)/libcalculator.so

EXECUTABLE = main

all: $(LIBRARY) $(EXECUTABLE)

$(LIBRARY): $(OBJECTS)
	$(CC) -shared -o $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(EXECUTABLE): $(SRC_DIR)/main.c $(LIBRARY)
	$(CC) $(SRC_DIR)/main.c -o $@ -L$(LIB_DIR) -lcalculator

clean:
	rm-rf $(OBJ_DIR)/*.o $(LIBRARY) $(EXECUTABLE)
