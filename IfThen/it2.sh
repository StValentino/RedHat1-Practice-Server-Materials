#!/bin/bash
echo "Enter your GPA."
read gpa
if [ $gpa -ge 3 ]; then 
	echo "Congratulations"
	echo "You have made the Honor Roll list."
else 
	echo "You have not made the Honor Roll list this year."
fi
