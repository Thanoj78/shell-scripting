##!/bin/bash

read -p "Enter some input:" input
if [ -z "$input"]; then
  echo "Hey . You have not provided any input"
exit 1
fi

if[ $input == "ABC" ]; then
  echo "input you provided is ABC"
fi

 echo "Input - $input"
 if [$? -eq 0 ]; then
  echo Success
else
 echo Failure
 fi

read -p 'Enter filename : ' file
if [ -f $file ]; then
  echo "File Exist"
else 
  echo "File does not exist"
  fi
  
  ##http://linux.die.net/man/1/bash