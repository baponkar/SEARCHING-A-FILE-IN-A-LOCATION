#!/bin/bash

#This script finding a file exists or not in specified directory


location=$1     #searching location
file_name=$2    #specified file name



if [ $# -lt  2 ]
then
  echo -e " \t\e[1;31m Usage: command location file-name \e[0m"
  echo -e " \t\e[1;31m root Usage: sudo command file-name \e[0m"

else

 if [ -e $location/$file_name ]
 then
 
   echo -e "\n\e[1;32m\tThe file '$file_name' exists in $location\n\e[0m"

   if [ -f $location/$file_name ]
   then
    echo -e "\e[32m\t\tThis is a file\n\e[0m"
   elif [ -d $location/$file_name ]
   then
    echo -e "\e[32m\t\tThis is a directory\n\e[0m"
   else
    echo -e "\t\e[1;32m This is a link\n\e[0m"
   fi
 else

   echo "Sorry no such type file exist in the $location"

 fi


fi
