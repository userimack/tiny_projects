# Task
# You are given a file with four space separated columns containing the scores
#  of students in three subjects. The first column contains a single character 
#  (A−Z), the student identifier. The next three columns have three numbers each. 
#  The numbers are between 00 and 100100, both inclusive. These numbers denote the 
#  scores of the students in English, Mathematics, and Science, respectively.

# Your task is to identify those lines that do not contain all three scores for students. 

awk '{
if ($2=="" || $3 ==""|| $4=="")
    print "Not all scores are available for",$1;
}' day_6.txt






# Your task is to identify whether each of the students has passed or failed.
# A student is considered to have passed if (s)he has a score 5050 or more in each of the three subjects.

awk '{
if ($2 >=50 && $3>=50 && $4 >= 50)
	print $1,"=>","Pass";
else
	print $1,"=>","Fail";
}' day_6.txt



############
# You are given a list of countries, each on a new line. Your task is to read them into an array and then 
# transform them in the following way:

# The first capital letter (if present) in each element of the array should be replaced with a dot ('.').
#  Then, display the entire array with a space between each country's names.

sed 's/^[A-Z]/./'|paste -s