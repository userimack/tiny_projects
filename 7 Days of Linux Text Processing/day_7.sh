# Task
# You are given a list of countries, each on a new line. Your task is to 
# read them into an array and then filter out (remove) all the names containing the letter 'a' or 'A'.

sed '/a/Id' countries.txt

grep -iv 'a'

grep -iv -e [Aa]

readarray array

for i in ${array[@]}; do
    echo $i
done


# Palindrome
# Task
# You are given a list of words with each word on a new line. Each word contains only lowercase 
# letters (a−za−z). Your task is to write a program to display only those words that are palindromes.
# Palindromes are strings that read the same when reversed.
cat | \
while read line;
do
line=$(echo $line | tr -d '\r')
revline=$(echo $line | rev)
if [ $line = $revline ]; then
echo $line
fi
done


awk ' { reverse = ""; orig = substr($0, 0, length($0)-1); for (i = length(orig); i>0; i--){ reverse = (reverse substr(orig, i, 1)); } if (reverse ~ orig){ print reverse;
} } '


while read line
do
[ echo$line | tr -d "\r"==echo -ne $line | rev | tr -d "\r" ] && echo $line
done < "${1:-/dev/stdin}" 




filecontent=( cat -)

for t in "${filecontent[@]}"

do

x=$(echo $t|tr -d '\r')

r=$(echo $x | rev)

if [ $x == $r ]

then

echo $t

fi

done





while read word; do
drow=`echo $word | rev | tr -d "\r"`
if [ $(echo $word | tr -d "\r") == $drow ]; then
echo "$word"
fi
done






# Factorial
# Task
# Write a bash or awk program to compute the factorial of a given set of integers. 
# The factorial of a number nn is defined as follows:
sed 1d|tr -d "\r"|xargs -n 1 seq -s'*'|bc




while read num; do
  echo "$num"
done





read cases

cases=$(echo $cases | tr -d "\r")




awk 'function f(x){if(x<2)return 1;return x*f(x-1)}NR>1{print f($0)}'



function f(x){
    if (x<2) {
        return 1;
    }
    return x * f(x-1)
}




awk 'function fact_r(n) { if ( n <= 1 ) return 1; return (n*fact_r(n-1)) } NR>1{print fact_r($0)}'



awk '{ if(NR != 1){ a = 1; for(i=$1;i>=1;i--){
a = a * i; } print a; }
}'



read
while read -r line || [[ -n "$line" ]]
do
    n=`echo $line|tr -d '[[:space:]]'`
    echo `seq -s "*" 1 $n | bc | tr -d '\\\r\n'`
done
