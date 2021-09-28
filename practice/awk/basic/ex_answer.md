1

```
awk '{print $0}' awk_basic1.txt
```

2

```
awk '{$3=$3*2;print $0}' awk_basic2.txt
```

3

```
awk '{print $2}' awk_basic3.txt
```

4

```
awk 'NR%2==0' awk_basic4.txt
```

5

```
awk 'BEGIN {sum=0} {sum+=$3} END {print "sum="sum, "ave="sum/NR}' awk_basic5.txt
```

6

```
awk 'NR==1{print "Foo"} NR>1{print $0}' awk_basic6.txt
```
