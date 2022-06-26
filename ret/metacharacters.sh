#!/bin/bash

# .
echo "====="
echo "I.n"
echo "====="
grep --color=always 'I.n' computerScienceBooks.txt
echo ""

# ?
echo "====="
echo "I.?n"
echo "====="
egrep --color=always 'I.?n' computerScienceBooks.txt
echo ""--color=always 

# *
echo "====="
echo "S.*o"
echo "====="
grep --color=always 'S.*o' computerScienceBooks.txt
echo ""

# +
echo "====="
echo "S.+o"
echo "====="
egrep --color=always 'S.+o' computerScienceBooks.txt
echo ""

# ()
echo "====="
echo "()"
echo "====="
egrep --color=always '(IEEE|ACM) S' computerScienceBooks.txt
echo ""

# -P '\d'
echo "====="
echo "-P '\d'"
echo "====="
grep --color=always -P '\d' computerScienceBooks.txt
echo ""

# -P '\D'
echo "====="
echo "-P '\D'"
echo "====="
grep --color=always -P '\D' computerScienceBooks.txt
echo ""

# [:lower:]
echo "====="
echo "[:lower:]"
echo "====="
grep --color=always 'I[[:lower:]]' computerScienceBooks.txt
echo ""

# [:upper:]
echo "====="
echo "[:upper:]"
echo "====="
grep --color=always 'I[[:upper:]]' computerScienceBooks.txt
echo ""

# -P '\b'
echo "====="
echo "-P '\b'"
echo "====="
grep --color=always -P '\bo[n|f]\b' computerScienceBooks.txt
echo ""

# {}
echo "====="
echo "{}"
echo "====="
egrep --color=always 'E{3}' computerScienceBooks.txt
echo ""

# ^
echo "====="
echo "^"
echo "====="
grep --color=always '^[4-6]' computerScienceBooks.txt
echo ""

# $
echo "====="
echo "$"
echo "====="
grep --color=always '[e|g]$' computerScienceBooks.txt
echo ""

# \1
echo "====="
echo "\1"
echo "====="
grep --color=always '<([a-zA-Z]*)>.*</\1>' htmltags.txt
echo ""

# \1
echo "====="
echo "\1"
echo "====="
egrep --color=always '<([a-zA-Z]*)>.*</\1>' htmltags.txt
echo ""

