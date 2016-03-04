#!/bin/bash

# Shell script which print usual date as output with options to show only time, only day-month-year and day of the week
#----------------------------------------------------------------------------------------------------------------------

echo "DATE: $(date)"

echo -e "\n1. Show Time"
echo "2. Show Day-Month-Year"
echo "3. Show Day of the week"

echo -n -e "\nChoose any option: "
read input

case $input in
	1)date "+TIME: %H:%M:%S";;
	2)date "+DATE: %d/%m/%y";;
	3)date "+DAY: %A";;
	*)echo "Sorry Wrong Input";;
esac

Output:
$sh show_date.sh 
DATE: Fri Mar  4 23:28:35 IST 2016

1. Show Time
2. Show Day-Month-Year
3. Show Day of the week

Choose any option: 2
DATE: 04/03/16


