### What
This script is for specifying target of window to take capture.  
Actual capture function is presented by byzanz.

### Install
Required byzanz.

##### For debian
sudo apt install byzanz

##### For Redhat
sudo yum install byzanz

### How to use
Please specify filename for output.  
"./take-capture.sh [OPTION...] filename"

Ex) ./take-capture.sh -d 30 filename  
"-d Duration of animation (default: 10 seconds)"

For more options, please execute 'byzanz-record --help'

