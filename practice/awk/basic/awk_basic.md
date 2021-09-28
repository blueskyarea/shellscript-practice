# 1. Show entire of row

```
awk ? awk_basic1.txt
```

Expected output

```
1 tom 10
2 kate 11
3 ken 8
```

# 2. Show with twice of third column

```
awk ? awk_basic2.txt
```

Expected output

```
1 tom 20
2 kate 22
3 ken 16
```

# 3. Show only second column

```
awk ? awk_basic3.txt
```

Expected output

```
tom
kate
ken
```

# 4. Show row in every 2 rows

```
awk ? awk_basic4.txt
```

Expected output

```
2 kate 11
4 mei 9
```

# 5. Show sum and average of third column

```
awk ? awk_basic5.txt
```

Expected output

```
sum=38 ave=9.5
```

# 6. Output "Foo" instead of first row

```
awk ? awk_basic6.txt
```

Expected output

```
Foo
2 kate 11
3 ken 8
4 mei 9
```
