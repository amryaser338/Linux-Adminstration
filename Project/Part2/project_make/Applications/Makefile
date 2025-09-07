CC = gcc

# Main Directories
ROOT_DIR = #.
APP_DIR = #$(ROOT_DIR)/Application 
MODULES_DIR = #$(ROOT_DIR)/Modules

# Modules Directories
CAESAR_CIPHER_DIR = ../Modules/caesar_cipher
XOR_CIPHER_DIR = ../Modules/xor_cipher

CFLAGS = -Wall -I$(CAESAR_CIPHER_DIR)/inc -I$(XOR_CIPHER_DIR)/inc

# Application Directories
APP_OUT_DIR  = out
APP_OBJ_DIR  = $(APP_OUT_DIR)/gen
APP_LIB_DIR  = $(APP_OUT_DIR)/libs
APP_BIN      = output

# Modules Source files
CAESAR_CIPHER_SRC = $(CAESAR_CIPHER_DIR)/src/caesar_encrypt.c $(CAESAR_CIPHER_DIR)/src/caesar_decrypt.c
XOR_CIPHER_SRC    = $(XOR_CIPHER_DIR)/src/xor_encrypt.c $(XOR_CIPHER_DIR)/src/xor_decrypt.c

# Modules Object files
CAESAR_CIPHER_OBJ = $(APP_OBJ_DIR)/caesar_encrypt.o $(APP_OBJ_DIR)/caesar_decrypt.o
XOR_CIPHER_OBJ    = $(APP_OBJ_DIR)/xor_encrypt.o $(APP_OBJ_DIR)/xor_decrypt.o

# Modules Library files
CAESAR_CIPHER_LIB = $(APP_LIB_DIR)/libcaesar.a
XOR_CIPHER_LIB    = $(APP_LIB_DIR)/libxor.so

# Application Source files
APP_SRC = app.c

# Application Object files
APP_OBJ = $(APP_OBJ_DIR)/main.o

include $(CAESAR_CIPHER_DIR)/caesar_cipher.mk
include $(XOR_CIPHER_DIR)/xor_cipher.mk

all: dirs $(CAESAR_CIPHER_LIB) $(XOR_CIPHER_LIB) $(APP_OBJ) $(APP_BIN)

dirs:
	mkdir out
	mkdir $(APP_OBJ_DIR)
	mkdir $(APP_LIB_DIR)

$(APP_OBJ): $(APP_SRC)
	$(CC) -c $(APP_SRC) $(CFLAGS) -o $(APP_OBJ)

$(APP_BIN): $(APP_OBJ) $(CAESAR_CIPHER_LIB) $(XOR_CIPHER_LIB)
	$(CC) -o $(APP_BIN) $(APP_OBJ) $(CAESAR_CIPHER_LIB) -L$(APP_LIB_DIR) -lxor -Wl,-rpath=$(APP_LIB_DIR)

clean:
	rm -rf $(APP_OUT_DIR) $(APP_BIN)
