CAESAR_INCLUDE_DIR = ../Modules/caesar_cipher/inc
CAESAR_SOURCE_DIR = ../Modules/caesar_cipher/src
CAESAR_DECRYPT_OBJ = out/gen/caesar_decrypt.o
CAESAR_ENCRYPT_OBJ = out/gen/caesar_encrypt.o
CAESAR_OBJ = $(CAESAR_DECRYPT_OBJ) $(CAESAR_ENCRYPT_OBJ)
CAESAR_LIB= out/libs/libcaesar.a

$(CAESAR_LIB): $(CAESAR_OBJ)
	ar rcs $(CAESAR_LIB) $(CAESAR_OBJ)

$(CAESAR_DECRYPT_OBJ): $(CAESAR_SOURCE_DIR)/caesar_decrypt.c
	$(CC) -c $(CAESAR_SOURCE_DIR)/caesar_decrypt.c -fPIC $(CFLAGS) -o $(CAESAR_DECRYPT_OBJ)

$(CAESAR_ENCRYPT_OBJ): $(CAESAR_SOURCE_DIR)/caesar_encrypt.c
	$(CC) -c $(CAESAR_SOURCE_DIR)/caesar_encrypt.c -fPIC $(CFLAGS) -o $(CAESAR_ENCRYPT_OBJ)


