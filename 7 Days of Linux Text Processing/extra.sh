#using delimeter
cut -d' ' -f1 file.txt #here -d is a delimeter and -f is field selection we can select multiple field by giving range like -f1,3

# we can reverse the text in a file using
rev file.txt

# we can now apply the delimter on the reversed file using
rev file.txt | cut -d' ' -f1