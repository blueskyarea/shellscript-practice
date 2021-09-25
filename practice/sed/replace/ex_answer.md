1
$ sed -e 's/$/\r/' replace.txt | cat -e

2
$ sed -e 's/\r//' replace2.txt | cat -e

3
$ sed -e 's/abc/ABC/' replace3.txt

4
$ sed -e 's/abc/ABC/3' replace4.txt

5
$ sed -e 's/abc/ABC/g' replace5.txt

