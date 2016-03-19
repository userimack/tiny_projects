echo -n "Enter the number : "
read n

rev=0
while (( $n > 0 ))
do
	rem=$(expr $n % 10)
	rev=$(expr $rem + '(' $rev \* 10 ')' )
	n=$(expr $n / 10)
done

echo "Reversed No : $rev"