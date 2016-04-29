# If I have a list of strings for example:

# ["car", "tree", "boy", "girl", "arc"....]

# What should I do in order to find anagrams in that list? For example (car, arc). 
# I tried using for loop for each string and I used if in order to ignore strings in different 
# lengths but I can't get the right result. 


def isAnagram(s1,s2):
    return sorted(s1) == sorted(s2)


#isAnagram("car","arc")

def checkAnagram(lst):
    word= lst[0]
    for alt in lst[]:
        if word == sorted(alt):
            print alt