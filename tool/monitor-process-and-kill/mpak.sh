#/bin/bash

TARGET_PROCESS=awk
THRESHOLD_PERCENT=90

total_usage=$(ps aux | grep ${TARGET_PROCESS} | awk 'BEGIN{total=0}{total+=$3}END{print total}')
echo "Currently, total CPU usage is ${total_usage}% for ${TARGET_PROCESS}"
if [[ ${total_usage} > ${THRESHOLD_PERCENT} ]];then
    echo "The usage is over threshold(${THRESHOLD_PERCENT}), killing the process."
    pkill -n ${TARGET_PROCESS}
fi

#EOF
