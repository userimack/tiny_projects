# Given N lines of input, print the 3rd character from each line as
#  a new line of output. It is guaranteed that each of the n lines of
#   input will have a 3rd character.

# Sample Input

# Hello
# World
# how are you

# Sample Output

# l
# r
# w


# here file is piped by the editr in hackerrank
#cut -c3


cut -c3 test.txt


#Display the 2nd and 7th character from each line of text.
#using cut command

cut -c2,7 test.txt


# Display a range of characters starting at the 2nd position of a string 
# and ending at the 7th position (both positions included).
cut -c2-7 test.txt