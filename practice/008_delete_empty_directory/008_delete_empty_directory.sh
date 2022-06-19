#/bin/bash

# Check arguments
if [ $# -ge 2 ]; then
  echo "Specify only 1 argument."
  exit
fi

# Set target directory(will specify current dir, if no arguments)
DIR=${1:-"./"}

# Check if the directory is exist
if [ ! -d ${DIR} ]; then
  echo "The directory is not exist"
  exit
fi

# Delete empty directory
while read EMPTY_DIR
do
  rm -ri ${EMPTY_DIR} < /dev/tty
  if [ ! $? -eq 0 ]; then
    echo "Failed to delete directory: ${EMPTY_DIR}"
  fi
done < <(find ${DIR} -type d -empty)

