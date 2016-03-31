echo -n "Enter how many numbers you want: "
read n

a=0
b=1

echo -ne "$a\t$b"

while (( $n > 2 ))
do
	c=$(expr $a + $b)
	a=$b
	b=$c
	echo -ne "\t$c"
	((n--))
done