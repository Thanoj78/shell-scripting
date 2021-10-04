#!/bin/bash

#Printing a message in a screen can be done by two commands 
#1. echo command 
#2. printf command 

# we choose echo because of user friendlyness , yet it does all the the job done by printf 

# syntax : echo message 

echo Hello World 

#in case we need to print multiple lines with single vommand , printsome tab spaces , print some colors 

# All the above can be done with folling esc sequences
# \n - New line 
# \t - New tab 
# \e - New color 

# Syntax : echo -e "Message"
## NOTE : to enable ecs seq we need -e option in echo , also the message has to be quoted , Preferable double quotes.

echo -e "Line1\nLine2"
echo -e "Word1\t\t\tWord2"

#Coloured Syntax
# echo -e "\e[COLCODEmMessage"

## COLOUR CODE 
#RED          31
#GREEN        32
#YELLOW       33 
#BLUE         34 
#MAGENTA      35
#CYAN         36

echo -e "\e[31mText in red color"
echo -e "\e[32mText in green color"

#we can increase brightness and boldness of text by using code "1"
echo -e "\e[1;33mText in yellow color"
echo -e "\e[1;34mText in blue color"

# when echo enables color , it does not disable color by default. we have to exclusively disable the enabled color . This is done by the color code 0

echo -e "\e[1;36mMessage in color , but disable after ending \e[0m"
echo text in no color 
























