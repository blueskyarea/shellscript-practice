1

```
$ sed -e 's/$/\r/' replace.txt | cat -e
```

2

```
$ sed -e 's/\r//' replace2.txt | cat -e
```

3

```
$ sed -e 's/abc/ABC/' replace3.txt
```

4

```
$ sed -e 's/abc/ABC/3' replace4.txt
```

5

```
$ sed -e 's/abc/ABC/g' replace5.txt
```

6

```
$ sed -e 's/aaa\|bbb\|ccc/xxx/g' replace6.txt
```

7

```
$ sed -e '/^!/s/x/y/g' replace7.txt
```

8

```
$ sed -e '/^!/!s/x/y/g' replace8.txt
```

9

```
sed -e 's/\(xxx\)/\1!/g' replace9.txt
```

10

```
sed -n 's/xxx/XXX/p' replace10.txt
```

11

```
sed -e 's/xxx/XXX/g' -e 's/yyy/YYY/g' replace11.txt
```

12

```
sed -e '3,8 s/AAA/BBB/g' replace12.txt
```
