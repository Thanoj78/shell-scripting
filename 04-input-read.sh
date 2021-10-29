#!/bin/bash

##Input can be taken in two ways 
 # During execution 
 #After execution
 
 #During execution can be taken care by using read command
 
 read -p "Enter Your Name :" name 
 echo "Your Name = ${name}"
 
 #Problem with this approach is automation , Read command scripts are prefered to use if any scripts we are sure that run manully then only we prefer this , otherwise we do not
 