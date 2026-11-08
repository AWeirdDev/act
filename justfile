build:
    mkdir -p ./build
    act ./main.ac --std ./std > ./build/main.c
    cc ./build/main.c -o ./build/main

run: build
    ./build/main

test NAME:
    act test ./std/{{ NAME }}.ac --std ./std
