#!/bin/bash
# This script is to create new users on this server
echo "Hello! What is your name?"
read name
echo "Welcome $name, today we will be creating a new user account for you on this server."
echo "Are you ready to get started?"
read yn
ans=$(echo $yn | tr [:upper:] [:lower:])
if [ $ans == yes ];then
	echo "Okay great! Let's get started."
	echo "What is the username you want to use for this account?"
	read user
	echo "Hmmm $user, okay great let's go with that."
	sudo useradd $user
	echo "Okay an account for $user has been made"
	id $user
	echo "Now let's create a password for your account."
	sudo passwd $user
	echo "Okay great! DO NOT forget your password, you'll need it to access your account."
	echo "So it looks like you're all good to go! You now have an account in this server."
	echo "Feel free to log in your account and get started! Welcome to the server!"
elif [ $ans == no ];then 
	echo "Okay, some other time then."
else
	echo "Sorry what was that? Please try again"
	sh newuser.sh
fi
