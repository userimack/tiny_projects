n = int(raw_input())
fact = i = 1
tot = 0
while (i<=n):
    fact = fact * i 
    i+=1
for i in str(fact):
    if i != '0':continue
    tot += 1
print tot