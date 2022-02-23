#/bin/bash

#TARGET_PROCESS=awk
declare -a TARGET_PROCESSES=("awk" "sed")
declare -r THRESHOLD_PERCENT=90

for p in ${TARGET_PROCESSES[@]}; do
  total_usage=$(ps aux | grep ${p} | awk 'BEGIN{total=0}{total+=$3}END{print total}')
  echo "Currently, total CPU usage is ${total_usage}% for ${p}"
  if [[ ${total_usage} > ${THRESHOLD_PERCENT} ]];then
    echo "The usage is over threshold(${THRESHOLD_PERCENT}), killing the process."
    pkill -n ${p}
  fi
done

#EOF
