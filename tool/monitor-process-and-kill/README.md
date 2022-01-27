# What
This tool monitors specific process and if the CPU usage is over theshold, kill the process.

# Usage
For example, execute in while roop.
$ while true;do ./mpak.sh ; sleep 1;  done

When the usage is over theshold, the process will be killed.

```
Currently, total CPU usage is 0% for awk
Currently, total CPU usage is 95% for awk
The usage is over threshold(50), killing the process.
Currently, total CPU usage is 0% for awk
Currently, total CPU usage is 0% for awk
```
