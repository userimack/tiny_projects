# Task
# You are given a CSV file where each row contains the name 
# of a city and its state separated by a comma. Your task is 
# to replace the newlines in the file with semicolons as demonstrated in the sample.

# ref : http://www.theunixschool.com/2012/07/10-examples-of-paste-command-usage-in.html

paste -d';' -s test.csv


# You are given a CSV file where each row contains the name of a city and its state
#  separated by a comma. Your task is to restructure the file so that three consecutive 
#  rows are folded into one line and are separated by semicolons. 

 paste -d';' - - - <  test.csv