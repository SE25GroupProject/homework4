#!/bin/bash

grep "banana" sample.txt # lines containing banana
echo ""
grep -v "banana" sample.txt # lines w/o banana
echo ""
sort sample.txt | uniq # unique lines only
echo ""
sort sample.txt | uniq -c # count occurance of words
echo ""
grep "banana" sample.txt | uniq -c # occrence of banaa
