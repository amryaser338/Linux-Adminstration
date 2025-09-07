cmake_minimum_required(VERSION 3.10)
project(CAESAR_CIPHER)
add_library(CAESAR_CIPHER_op STATIC src/caesar_encrypt.c src/caesar_decrypt.c)
target_include_directories(CAESAR_CIPHER_op PUBLIC inc)
