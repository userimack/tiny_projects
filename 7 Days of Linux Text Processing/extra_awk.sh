#to ue BEGIN and END

awk 'BEGIN {print "Name\tDestination\tDepartment\tSalary"}
{print $2, "\t",$3,"\t",$4,"\t",$NF;}
END {print "Report Generated\n-----------------";
}' emp.txt



#####
awk 'BEGIN {count=0;}
$4 ~ /Technology/ { count++; }
END { print "Number of employyes in Technology Dept=",count;}' emp.txt


############# Mising marks
awk '{
if ($3 =="" || $4 == "" || $5 =="")
	print "Some score for the student", $1 ,"is missing";
}' marks.txt

# report card
awk '{
if ($3 >=35 && $4>=35 && $5 >= 35)
	print $0,"=>","Pass";
else
	print $0,"=>","Fail";
}' marks.txt
