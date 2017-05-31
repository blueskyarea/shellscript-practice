#!/bin/bash

declare INPUT_NAME=""
declare ROW_NAME=""
declare OUTPUT_NAME=""
declare FILTER_BY=""
declare GREPS=""

while getopts i:k:o:f: OPT
do
  case $OPT in
    "i" ) INPUT_NAME="$OPTARG";;
    "k" ) KEY_NAME="$OPTARG";;
    "o" ) OUTPUT_NAME="$OPTARG";;
    "f" ) FILTER_BY="$OPTARG";;
  esac
done

IFS=$','
for VAL in ${FILTER_BY}
do
  GREPS=${GREPS}"grep ${VAL} | "
done

echo -n "${KEY_NAME}," >> ${OUTPUT_NAME}
less ${INPUT_NAME} | eval "${GREPS}" wc -l >> ${OUTPUT_NAME}
