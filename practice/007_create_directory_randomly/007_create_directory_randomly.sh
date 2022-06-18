#/bin/bash

prefix=1
total_sub_dir=5

# check number of argment
if [ $# -ne 1 ]; then
  echo "Specify 1 argument."
  exit
fi

# create root directory
ROOT_DIR=$1
echo "ROOT_DIR name is ${1}."
if [ ! -e $ROOT_DIR ]; then
  mkdir $ROOT_DIR
else
  echo "The directory is already exist."
  exit
fi

function create_sub_dir () {
  parent_dir=$1
  # Decide non-empty or empty
  rnd=$(($RANDOM % 3))

  # Create the sub directory
  sub_dir=""
  if [[ $rnd -eq 0 ]]; then
    sub_dir="${prefix}_empty"
    mkdir -p $parent_dir/$sub_dir
  else
    sub_dir="${prefix}_non-empty"
    mkdir -p $parent_dir/$sub_dir
    touch $parent_dir/$sub_dir/dummy.txt
    create_sub_dir $parent_dir/$sub_dir
  fi
}

while [ $prefix -le $total_sub_dir ]
do
  create_sub_dir $ROOT_DIR
  prefix=$((++prefix))
done

# End
echo "Complete"
exit
