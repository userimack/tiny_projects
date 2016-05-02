# If I have a list of strings for example:

# ["car", "tree", "boy", "girl", "arc"....]

# What should I do in order to find anagrams in that list? For example (car, arc). 
# I tried using for loop for each string and I used if in order to ignore strings in different 
# lengths but I can't get the right result. 


# def isAnagram(s1,s2):
#     return sorted(s1) == sorted(s2)


# #isAnagram("car","arc")

# def checkAnagram(lst):
#     word= lst[0]
#     for alt in lst[]:
#         if word == sorted(alt):
#             print alt



###################################### Geeks for geeks

# A Python program to print all anagarms together
 
# structure for each word of duplicate array
class Word(object):
    def __init__(self, string, index):
        self.string = string
        self.index = index
 
# Create a DupArray object that contains an array
# of Words
def createDupArray(string, size):
    dupArray = []
 
    # One by one copy words from the given wordArray
    # to dupArray
    for i in xrange(size):
        dupArray.append(Word(string[i], i))
 
    return dupArray
 
# Given a list of words in wordArr[]
def printAnagramsTogether(wordArr, size):
    # Step 1: Create a copy of all words present in
    # given wordArr.
    # The copy will also have orignal indexes of words
    dupArray = createDupArray(wordArr, size)
 
    # Step 2: Iterate through all words in dupArray and sort
    # individual words.
    for i in xrange(size):
        dupArray[i].string = ''.join(sorted(dupArray[i].string))
 
    # Step 3: Now sort the array of words in dupArray
    dupArray = sorted(dupArray, key=lambda k: k.string)
 
    # Step 4: Now all words in dupArray are together, but
    # these words are changed. Use the index member of word
    # struct to get the corresponding original word
    for word in dupArray:
        print wordArr[word.index],
 
# Driver program
wordArr = ["cat", "dog", "tac", "god", "act"]
size = len(wordArr)
printAnagramsTogether(wordArr, size)