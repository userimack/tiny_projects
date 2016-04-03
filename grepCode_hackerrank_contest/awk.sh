# Task
# You are provided a file with four space-separated columns containing the scores of students in three subjects. The first column, contains a single character (A-Z) - the identifier of the student. The next three columns have three numbers (each between 0 and 100, both inclusive) which are the scores of the students in English, Mathematics and Science respectively.

# Your task is to identify the performance grade for each student. If the average of the three scores is 80 or more, the grade is 'A'. If the average is 60 or above, but less than 80, the grade is 'B'. If the average is 50 or above, but less than 60, the grade is 'C'. Otherwise the grade is 'FAIL'.

# Input Format

# There will be no more than 10 rows of data.
# Each line will be in the format:
# [Identifier][Score in English][Score in Math][Score in Science] 

# Output Format

# For each row of data, append a space, a colon, followed by another space, and the grade. Observe the format showed in the sample output.

# Sample Input

# A 25 27 50
# B 35 37 75
# C 75 78 80
# D 99 88 76

# Sample Output

# A 25 27 50 : FAIL
# B 35 37 75 : FAIL
# C 75 78 80 : B
# D 99 88 76 : A

# Explanation

# A scored an average less than 50 => FAIL Same for B C scored an average between 60 and 80 => B
# D scored an average between 80 and 90 => A


awk '{

total=$2+$3+$4;
avg=total/3;

if ( avg >= 80 ) grade="A";
else if ( avg >= 60 ) grade="B";
else if ( avg >= 50 ) grade="C";
else grade="FAIL";


print $0,":",grade;
}'




# You are provided a file with four space-separated columns containing the scores of students in three subjects. The first column, contains a single character (A-Z) - the identifier of the student. The next three columns have three numbers (each between 0 and 100, both inclusive) which are the scores of the students in English, Mathematics and Science respectively.

# Input Format

# There will be no more than 10 rows of data. Each line will be in the format: [Identifier][Score in English][Score in Math][Score in Science]

# Output Format

# Concatenate every 2 lines of input with a semi-colon.

# Sample Input

# A 25 27 50
# B 35 37 75
# C 75 78 80
# D 99 88 76 

# Sample Output

# A 25 27 50;B 35 37 75
# C 75 78 80;D 99 88 76 


awk 'ORS=NR%2?";":"\n"'


# awk -2
# Task
# You are given a file with four space separated columns containing the scores of students in three subjects. The first column contains a single character (A−ZA−Z), the student identifier. The next three columns have three numbers each. The numbers are between 00 and 100100, both inclusive. These numbers denote the scores of the students in English, Mathematics, and Science, respectively.

# Your task is to identify whether each of the students has passed or failed.
# A student is considered to have passed if (s)he has a score 5050 or more in each of the three subjects.

# Input Format

# There will be no more than 1010 rows of data.
# Each line will be in the following format:
# [Identifier][English Score][Math Score][Science Score]

# Output Format

# Depending on the scores, display the following for each student:

# [Identifier]:[Pass] 

# or

# [Identifier]:[Fail]  

# Sample Input

# A 25 27 50
# B 35 37 75
# C 75 78 80
# D 99 88 76

# Sample Output

# A : Fail
# B : Fail
# C : Pass
# D : Pass


awk '{

total=$2+$3+$4;
avg=total/3;

if ( avg >= 50 ) grade="Pass";

else grade="Fail";


print $1,":",grade;
}'
