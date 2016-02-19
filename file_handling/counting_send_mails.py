name = raw_input("Enter file:")
if len(name) < 1 : name = "mbox-short.txt"
fh = open(name)

for line in fh:
    if not line.startswith("From "): continue
    lst = line.split()
    print lst[1]
    count+=1
