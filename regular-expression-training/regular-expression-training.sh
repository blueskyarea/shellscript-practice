#!/bin/bash

SOURCE="012hello345"
TARGET="hello"
echo ${SOURCE} から ${TARGET} を抽出する正規表現は？：
read answer
if [[ "${SOURCE}" =~ ${answer} ]] ; then
  echo ${BASH_REMATCH[0]}
fi

