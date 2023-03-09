#!/bin/bash
echo "Who shed blood so that we may be saved from our sin?"
read name
n=$(echo $name | tr '[:upper:]' '[:lower:]')
if [ $n == jesus ];then
	echo "Amen!"
else
	echo "Sorry, try again."
fi
