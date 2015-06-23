#!/bin/bash

echo -n "Is it OK to create file? [yes(y)/no(n)]"
read answer
if [ "$answer" == "yes" -o "$answer" == "y" ]; then
  `touch script_test`
  echo "Create file."
elif [ "$answer" == "no" -o "$answer" == "n" ]; then
  echo "Cancel to create file."
else
  echo "Invalid input."
fi

