1.
$ sed -e '/^#/d' delete1.txt

2.
$ sed -e '/^$/d' delete2.txt

3.
$ sed -e '2,5d' delete3.txt

4.
$ sed -e '2,5s:^#::' delete4.txt

