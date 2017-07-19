#!/bin/bash

if [ -z $1 ]; then
msg="
Please specify filename for output.
./take-capture.sh [OPTION...] filename

Ex)./take-capture.sh -d 30 filename
-d Duration of animation (default: 10 seconds)

For more options, please execute 'byzanz-record --help'
"
  echo "${msg}"
  exit 0
fi

echo "Please click window that target of capture."
byzanz-record $(xwininfo | awk '
  /Absolute upper-left X/ { x = $4 }
  /Absolute upper-left Y/ { y = $4 }
  /Width/                 { w = $2 }
  /Height/                { h = $2 }
  END                     { print "-x", x, "-y", y, "-w", w, "-h", h }
') -v "$@"

