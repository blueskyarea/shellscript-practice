#!/bin/bash

echo "Match if Decimal"
grep --color=always '[0-9]*\.[0-9]*' practice.txt
echo ""

echo "Match if same number(This is not perfect)"
egrep --color=always '([0-9]+).*=.*\1' practice.txt
echo ""

echo "Match if start with number and end with number"
grep --color=always '^[0-9].*[0-9]$' practice.txt
echo ""

echo "Match if 10.0.0.25 or 10.0.0.134"
egrep --color=always '(10.0.0.25|10.0.0.134)' practice.txt
echo ""

echo "Match if appear 0x90 more than 3 times"
egrep --color=always '(0x90.*){3,}' practice.txt
echo ""
