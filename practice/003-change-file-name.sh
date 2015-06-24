#!/bin/bash

arg_count=$#

# check argument count.
if [ ! $arg_count -eq 2 ]; then
  echo "need 2 arguments. ex)this_script_file.sh present_file_name new_file_name"
  exit 1;
fi

present_file_name=$1
new_file_name=$2

# check present file is exists.
if [ ! -e $present_file_name ]; then
  echo "${present_file_name} is not exists."
  exit 1;
fi

# change file name.
mv $present_file_name $new_file_name
echo "changed file name!!"

