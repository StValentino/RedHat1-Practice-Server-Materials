#!/bin/bash
# This script will perform functions.

newuser(){
	echo "Enter the username for the account you'd like to create on this server."
	read user
	echo "Now creating user account for $user..."
	sudo adduser $user
	id $user
	echo "User account: $user created."
}

findfile(){
	echo "Please enter the name of the file you are searching for."
        read filename
        echo "Now searching for file..."
        if [ -e $filename ]; then
		echo "File found! Opening file now."
		sleep 3
		cat $filename
	else 
	echo "File doesn't exist."
	fi
}

packageupdate(){
	sudo yum update -y
	sudo yum install nano tree vim unzip -y
}

backup(){
	cp -r * /home/ec2-user/scripts/backup
}
echo "Please enter the name of the function you'd like to be performed."
read ans
case $ans in
	newuser)
		newuser;;
	findfile)
		findfile;;
	packageupdate)
		packageupdate;;
	backup)
		backup;;
	*)
		echo "Option does not exist please use 'newuser' 'findfile' 'packageupdate' or 'backup' as a response";;

esac
	
