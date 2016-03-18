echo -n "Enter the number : "
read n

fact=1
count=1
while (( $count <= n ))
do
	fact=$(expr $fact \* $count)
	count=$(expr $count + 1)
done

echo -n "Factorial : $fact"