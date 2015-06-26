#!/bin/bash

# setup test case
arg=$1

if [ $# -eq 0 ]; then
  echo "need argument 1 or 2 or other."
  exit 1
fi

firstConf=~/.sample
secondConf=/usr/local/share/sample

if [ $arg -eq 1 ]; then
  touch $firstConf 
elif [ $arg -eq 2 ]; then
  sudo touch $secondConf
fi

# read configuration file
if [ -f $firstConf ]; then
  echo "firstConf exists."
  . $firstConf
  rm $firstConf
elif [ -f $secondConf ]; then
  echo "secondConf exists."
  . $secondConf
  sudo rm $secondConf
else
  echo "no configration file."
fi

