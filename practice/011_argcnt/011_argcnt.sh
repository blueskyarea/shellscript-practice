#!/bin/bash

echo "There are $# arguments"
i=1
for ARG in $@
do
  echo "arg$i: $ARG"
  i=$((i+1))
done

