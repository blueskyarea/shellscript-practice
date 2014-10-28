#!/bin/bash

if [[ "012hello345" =~ [a-z]+ ]] ; then
  echo ${BASH_REMATCH[0]}
fi

