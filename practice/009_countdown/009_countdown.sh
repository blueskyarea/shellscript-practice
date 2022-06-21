#/bin/bash

if [ $# -eq 0 ];then
  echo "Required argument."
  echo "$0 -t YYYYMMDDHHMMSS"
  exit
fi

if [ $1 = "-t" ];then
  if [ ! ${#2} -eq 14 ];then
    echo "$0 -t YYYYMMDDHHMMSS"
    exit
  fi
  YEAR=$(echo $2 | cut -c 1-4)
  MONTH=$(echo $2 | cut -c 5-6)
  DAY=$(echo $2 | cut -c 7-8)
  HOUR=$(echo $2 | cut -c 9-10)
  MIN=$(echo $2 | cut -c 11-12)
  SEC=$(echo $2 | cut -c 13-14)
  START_UNIX_TIME=$(date +%s)
  END_UNIX_TIME=$(date -d "${YEAR}/${MONTH}/${DAY} ${HOUR}:${MIN}:${SEC}" +%s)
  COUNTDOWN_TIME=$(expr ${END_UNIX_TIME} - ${START_UNIX_TIME})
else
  COUNTDOWN_TIME=$1
fi

TMP_DIR=.
TMPFILE=$(mktemp ${TMP_DIR}/countdown.tmp_XXXX})
PGM_STOP_TIME=$(expr ${COUNTDOWN_TIME} + 3)

# Logic for delete TMPFILE
#trap "rm -f ${TMPFILE}" 0 1 2 3 4 5 6 8 9 11 15

# Initial value to TMPFILE
#echo ${COUNTDOWN_TIME} > $TMPFILE

# Execute process kill on background
$(sleep ${PGM_STOP_TIME}; PID=$(ps -ef | grep "watch -n 1 -t" | grep -v grep | awk '{print $2}');kill ${PID}) &

# Execute watch command
temp=$(mktemp ${TMP_DIR}/countdown.tmp_XXXX})

# trap command, but does not work
trap "rm -f ${temp}" 0 1 2 3 4 5 6 8 9 11 15
# export your variable of a parent shell (the one where you type) to its subshells
export temp
echo ${COUNTDOWN_TIME} > "$temp"
watch -n 1 -t 'read var < "$temp" ; echo "$((var-=1))" ; echo "$var" > "$temp"'

