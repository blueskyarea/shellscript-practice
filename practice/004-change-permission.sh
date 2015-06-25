#!/bin/bash

for arg in $@
do
  echo $arg
  if [ -e $arg ]; then
    if [ -w $arg ]; then
      chmod u-w $arg
      echo "delete write permission."
    else
      chmod u+w $arg
      echo "add write permission."
    fi
  else
    echo "${arg} is nothing."
  fi
done

