act := "act"

init:
    mkdir -p ./build
    cp -r ./vendor ./build/

build:
    {{ act }} ./main.ac --std ./std --declare-feature debug --feature debug --compiler clang > ./build/main.c
    cc ./build/main.c -o ./build/main --std c11 -Wextra -Wall -Wno-unused-function

run: build
    ./build/main

test NAME:
    {{ act }} test ./std/{{ NAME }}.ac --std ./std  --declare-feature debug --feature debug --compiler clang

check NAME:
    {{ act }} check ./std/{{ NAME }}.ac --std ./std --declare-feature debug --feature debug --compiler clang
