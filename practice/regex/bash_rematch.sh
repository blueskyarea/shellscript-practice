#!/bin/bash

TARGET_FILE="data.txt"
while read LINE
do
  if [[ $LINE =~ ^.*(DATA[0-9]{4}).*$ ]]; then
    echo "${BASH_REMATCH[1]}"
  fi
done < $TARGET_FILE

# Original source
# https://qiita.com/taro373/items/262164e66d03160d9354
