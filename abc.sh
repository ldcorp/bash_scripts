#!/bin/bash 
## Author: Shishir Bhandari 
## Usage: Check the ping status of the server using the first argument as filename

usage(){ 
printf "\n Usage is: ./abc.sh [filename that has servername or ip]\n"
}

if [ $# -eq 0 ]; then 
  usage
  exit
fi

if [ -e $1] 
then 
  printf "\n the file exists and working"
  for host in `cat $1`; do 
    ping -c 1 $host 
    if [ $? -eq 0 ]; then 
      echos "server pings" 
    else 
      echo "server faled" 
    fi
    if
    done 
else 
  echo "the file does not exist" 
fi 


