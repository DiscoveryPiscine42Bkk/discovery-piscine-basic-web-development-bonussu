#!/bin/bash

# Get the number of arguments passed
num_args=$#

# Check if no arguments were provided
if [ "$num_args" -eq 0 ]; then
  echo "no arguments supplied"
  exit 0
fi 

#Loop through and display up to the first 3 arguments
for i in $(seq 1 $(($num_args > 3 ? 3 : $num_args)) ); do
  eval "echo \$$i"
done