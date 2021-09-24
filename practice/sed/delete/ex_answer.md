1.
$ sed '/^#/d' delete1.txt

2.
$ sed '/^$/d' delete2.txt

3.
$ sed '2,5d' delete3.txt

4.
$ sed '2,5s:^#::' delete4.txt

