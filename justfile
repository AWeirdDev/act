build:
    mkdir -p ./build
    act ./main.ac --lib ./std > ./build/main.c
    cc ./build/main.c -o ./build/main --std c11 -Wextra -Wall -Wno-unused-function

run: build
    ./build/main

test NAME:
    act test ./std/{{ NAME }}.ac --std ./std
