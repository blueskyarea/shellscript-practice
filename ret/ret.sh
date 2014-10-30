#!/bin/bash

SOURCE="012hello345"
TARGET="hello"
echo -n ${SOURCE} から ${TARGET} を抽出する正規表現は？：
read answer
if [[ "${answer}" = "${TARGET}" ]] ; then
  echo "IT'S NOT REGULAR EXPRESSION."
  exit
fi
if [[ "${SOURCE}" =~ ${answer} ]] ; then
  echo "${BASH_REMATCH[0]}"
  if [[ "${BASH_REMATCH[0]}" = "${TARGET}" ]] ; then
    echo "NICE MATCH!!"
  else
    echo "BAD MATCH."
  fi
else
  echo "NO MATCH..."
fi

