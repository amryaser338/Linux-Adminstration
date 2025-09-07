XOR_INCLUDE_DIR = ../Modules/xor_cipher/inc
XOR_SOURCE_DIR  = ../Modules/xor_cipher/src
XOR_DECRYPT_OBJ = out/gen/xor_decrypt.o
XOR_ENCRYPT_OBJ = out/gen/xor_encrypt.o
XOR_OBJ = $(XOR_DECRYPT_OBJ) $(XOR_ENCRYPT_OBJ)
XOR_LIB= out/libs/libxor.so

$(XOR_LIB): $(XOR_OBJ)
	$(CC) -shared $(XOR_OBJ) -o $(XOR_LIB) -lm

$(XOR_DECRYPT_OBJ): $(XOR_SOURCE_DIR)/xor_decrypt.c
	$(CC) -c $(XOR_SOURCE_DIR)/xor_decrypt.c -fPIC $(CFLAGS) -o $(XOR_DECRYPT_OBJ)

$(XOR_ENCRYPT_OBJ): $(XOR_SOURCE_DIR)/xor_encrypt.c
	$(CC) -c $(XOR_SOURCE_DIR)/xor_encrypt.c -fPIC $(CFLAGS) -o $(XOR_ENCRYPT_OBJ)
