#!/bin/bash
echo "Enter your GPA."
read gpa
honor=$( echo "scale=2;36.0/10" | bc )
if (( $gpa >= $honor )); then 
	echo "Congratulations"
	echo "You have made the Honor Roll list."
else
	echo "You have not made the Honor Roll list this year."
fi
