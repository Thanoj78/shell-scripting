#!/bin/bash

#If we assign a name to a set of data is called as variable 

#Plain Variable 
#Syntax : VAR=DATA

#NUMBER TYPE DATA 
a=10
#CHARACTER TYPE DATA 
b=xyz
#BOOLEAN TYPE DATA 
c=TRUE 
#STRING TYPE DATA 
d=abc123

# however shell will not consider that data , shell alwys consider that as a string.

#if your data is having any special character then use quotes , preferably double quotes.
x="1*2"

# to print variables
echo value of a = $a
echo value of b = ${b}

#Date :
#DATE= "28-SEPT-2021"
Date=$(date +%F)
echo welcome , Today Date is $Date

#Arthmeticals:
ADD=$((10+5))
echo TOTAL =$ADD

##Read Write variable 
a1=100
a1=200
#readonly a1
#a1=300

echo value of ABC = ${ABC}
# after above line executed we will get null value for ABC because we didn't gave value for ABC.  so type export ABC as command in editor , then excute it we will get the value of ABC
#Befor command you should give value of ABC in editor


##SCALAR VARABILE
#Plain Varable , value is single 
a2=10

#list variable , Variable holds multiple values , values are list 
b2=(100 100.0 200 abc)
echo ${b2[0]}
echo ${b2[1]}

#Named Index , Map , Dicyionary
declare -A new=( [Class]=DevOps [Name]=Thanoj [timings]=6AM )

echo ${new[Class]}
echo ${new[timings]}
echo ${new[Name]}
   
   