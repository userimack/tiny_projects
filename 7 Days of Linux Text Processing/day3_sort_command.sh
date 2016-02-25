# # The sort command is frequently used for sorting input in text or TSV formats in various different ways. These ways may be either lexicographical, case insensitive, based on the numeric field only, based on a particular column, etc.

# Sort Options

#     The vanilla sort command simply sorts the lines of the input file in lexicographical order.
#     The -n option sorts the file on the basis of the numeric fields available if the first word or column in the file is a number.
#     The -r option reverses the sorting order to either the reverse of the usual lexicographical ordering or descending order while sorting in numerical mode.
#     The -k option is useful while sorting a table of data (tsv, csv etc.) based on a specified column (or columns).
#     The -t option is used while specifying a delimiter in a particular file where columns are separated by tabs, spaces, pipes etc.

# A few useful resources to study different variants as well as working examples of the sort command are:
	
# How to Sort Files in Linux using Sort Command : http://www.thegeekstuff.com/2013/04/sort-files/

# Given a text file, order the lines in lexicographical order. 
sort test_sort.txt


# Given a text file, order the lines in reverse lexicographical order (i.e. Z-A instead of A-Z).

sort -r test_sort.txt

# A text file where each line contains a positive number (less than 100) as described above.
