
# Lab 5

## Part 1
### Compile 1A
gcc -O0 -S fig1.c          ename fig1.s to fig1a.s
### Compile 1B
gcc -O4 -S fig1.c
Rename fig1.s to fig1b.s

## Part 2
### Compile HelloWorld
gcc -O0 -S HelloWorld.c
### Compile HelloWorldCpp
gcc -O0 -S HelloWorldCpp.cpp

## Part 3
### Compile Figure5
gcc -no-pie fig5.s fig5driver.c -o fig5
### Run
./fig5


