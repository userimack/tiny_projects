#!/bin/bash

# Calculate the area and perimeter of rectangle and area and circumference of circle
#------------------------------------------------------------------------------------

echo "1. Rectangle"
echo "2. Circle"

echo -n -e "\nChoose any option: "
read input

case $input in
	1)
	  echo "Enter length and breadth of Rectangle"
	  read length breadth
	  echo "AREA: $(expr $length \* $breadth)" 
	  echo "PERIMETER: $(expr 2 \* '(' $length + $breadth ')' )" ;;
	2)
      echo "Enter the radius of Circle: "
      read radius
      echo "AREA: $(expr '(' 22 / 7 ')' \* $radius \* $radius ) "
      echo "CIRCUMFERENCE: $(expr 2 \* '(' 22 / 7 ')' \* $radius ) "
	   ;;
	
	*)echo "Sorry Wrong Input";;
esac


Output:
$sh rec_circle.sh 
1. Rectangle
2. Circle

Choose any option: 2
Enter the radius of Circle: 
5
AREA: 75 
CIRCUMFERENCE: 30 
