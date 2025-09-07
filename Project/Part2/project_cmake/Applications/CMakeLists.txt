cmake_minimum_required(VERSION 3.10)
project(myApp)
set( SOURCES app.c)

add_executable(output ${SOURCES})

add_subdirectory(../Modules/caesar_cipher ${CMAKE_BINARY_DIR}/caesar_build)
add_subdirectory(../Modules/xor_cipher ${CMAKE_BINARY_DIR}/xor_build)

target_link_libraries(output
    CAESAR_CIPHER_op
    XOR_CIPHER_op
)

