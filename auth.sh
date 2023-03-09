#!/bin/bash 
echo "CEO Authorization Script."
echo "Please enter your name."
read name 
n=$(echo $name | tr [:upper:] [:lower:]) 
if [ $n == valentino ];then
	echo "ACCESS GRANTED"
else
	echo "ACCESS DENIED" 
fi
