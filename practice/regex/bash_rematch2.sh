#!/bin/bash

string="--ABC--"

if [[ $string =~ -(A)(B)(C)- ]]; then
  echo ${BASH_REMATCH[0]}
  echo ${BASH_REMATCH[1]}
  echo ${BASH_REMATCH[2]}
  echo ${BASH_REMATCH[3]}
fi

# Original source
# https://qiita.com/taro373/items/262164e66d03160d9354
