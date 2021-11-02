#!/bin/bash

# Declare a function

SAMPLE() {
    a=100
    echo I am a function
    echo "Value of a in function = $a"
    b=20
    echo "First Argument in Functions = $1"
}

## Main Function

##  Access a function
a=10
SAMPLE xyz
b=200
echo "value of b in Main Program = $b"

echo "First Argument in Main Program = $1"
