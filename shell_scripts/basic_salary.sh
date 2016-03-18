echo -n "Enter the basic salary: "
read bs

da=$(expr $bs \* 60 / 100 )
hra=$(expr $bs \* 20 / 100 )
gs=$(expr $bs + $hra + $da )

echo "The Gross Salary is $gs"