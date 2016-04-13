#Write a shell script to find out the odd & even number from a list of numbers supplied as command line arguments.
if [ -z "$*" ]
	then
	echo  "Enter some arguments from command prompt"
fi

for i in $*
do
	if (( $(expr $i % 2 )==0 ))
	then
		echo "$i is even"
	else
		echo "$i is odd"
	fi
done
