#!/bin/bash
# Shell program to read a number and find the sum of digits
# -----------------------------------------------

echo -n "Enter number : "  # -n is used for taking same line input
read no

rem=0
sum=0

# while [ $no -gt 0 ]
# do
#     rem=$(( $no % 10 )) # get Remainder
#     no=$(( $no / 10 ))  # get next digit
#     sum=$(( $sum + $rem )) # calculate sum of digit
# done

while [ $no -gt 0 ]
do
	rem=`expr $no % 10`
	no=`expr $no / 10`
	sum=`expr $sum + $rem`
done 

echo  "Sum of all digit  is $sum"

Output:
$sh sum_digits.sh 
Enter number : 123
Sum of all digit  is 6
