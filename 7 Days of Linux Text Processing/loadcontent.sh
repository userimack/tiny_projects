#!/bin/bash

filecontent=( `cat "countries.txt"` )
for t in "${filecontent[@]}"
do
echo $t
done
echo "Read file content!"

