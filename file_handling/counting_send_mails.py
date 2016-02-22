# Write a program to read through the mbox-short.txt and figure 
# out who has the sent the greatest number of mail messages. 
# The program looks for 'From ' lines and takes the second word 
# of those lines as the person who sent the mail. The program creates 
# a Python dictionary that maps the sender's mail address to a count 
# of the number of times they appear in the file. After the dictionary 
# is produced, the program reads through the dictionary using a maximum
#  loop to find the most prolific committer.

name = raw_input("Enter file:")
if len(name) < 1 : name = "mbox-short.txt"

try :
    fh = open(name)
except :
    print 'Could not open',name
    exit()

school = dict()


for line in fh :
    if not line.startswith('From ') : continue
    words = line.split()
    print 'words: ', words
    #words = words[1].split('@')
    #print 'words: ', words
    addr = words[1]
    print 'addr: ', addr
    school[addr] = school.get(addr, 0) + 1

print school
#max_key=max(school.iterkeys(), key=lambda k: school[k]) #one method

v=list(school.values()) #2nd method
k=list(school.keys())
max_key = k[v.index(max(v))]

max_value=school[max_key]
print max_key , max_value 




   