cmake_minimum_required(VERSION 3.10)
project(XOR_CIPHER)
add_library(XOR_CIPHER_op SHARED src/xor_encrypt.c src/xor_decrypt.c)
target_include_directories(XOR_CIPHER_op PUBLIC inc)

