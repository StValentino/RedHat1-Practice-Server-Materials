#!/bin/bash
# This script is to show an example of If/Then statements

echo "Please enter your pin"
read pin
if [ $pin == 5587 ];then
	echo "ACCESS GRANTED"
else
	echo "ACCESS DENIED"
fi
