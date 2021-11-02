#!/bin/bash

# Declare a function

SAMPLE() {
    echo I am a function
    echo "Value of a in function = $a"
    b=20
}

## Main Function

##  Access a function
a=10
SAMPLE
echo "value of b in Main Program = $b"
