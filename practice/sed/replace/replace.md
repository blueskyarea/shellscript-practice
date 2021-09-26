# 1. Replace LF to CR+LF

```
sed -e ? replace1.txt | cat -e
```

Expected result)

```
1st line^M$
2nd line^M$
3rd line^M$
```

# 2. Replace CR+LF to LF

```
sed ? replace2.txt | cat -e
```

Expected result)

```
1st line$
2nd line$
3rd line$
```

# 3. Replace first of abc to ABC

```
sed -e ? replace3.txt
```

Expected result)

```
ABC abc abc abc abc
ABC abc abc abc abc
```

# 4. Replace third of abc to ABC

```
sed -e ? replace4.txt
```

Expected result)

```
abc abc ABC abc abc
abc abc ABC abc abc
```

# 5. Replace all abc to ABC

```
sed -e ? replace5.txt
```

Expected result)

```
ABC ABC ABC ABC ABC
ABC ABC ABC ABC ABC
```

# 6. Replace 'aaa bbb ccc' to 'xxx'

```
sed -e ? replace6.txt
```

Expected result)

```
xxx
xxx
xxx
xxx xxx xxx
```

# 7. Replace x to y if the line starts with '!'

```
sed -e ? replace7.txt
```

Expected result)

```
xxx
!yyy
!zzz
xxx
```

# 8. Replace x to y if the line does not start with '!'

```
sed -e ? replace8.txt
```

Expected result)

```
yyy
!xxx
!zzz
yyy
```
