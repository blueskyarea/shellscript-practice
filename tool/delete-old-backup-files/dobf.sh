#!/bin/bash

target_ts=$(date -d '1 month ago' +"%Y%m%d%H%M")
echo "Target timestamp is ${target_ts}"

for file in /home/mh/django/itstudy/backup/*
do
  file_ts=$(echo ${file} | awk -F'/' '{print $NF}' | sed -e "s/^.*_\([0-9]*\).*$/\1/")
  if [[ ${file_ts} -lt ${target_ts} ]]; then
    echo "${file} is older than ${target_ts}, deleting."
    rm ${file}
  fi
done

#EOF
