#!/bin/bash
case $1 in
	newuser)
		echo "Hello! What is your name?"
		read name
		echo "Welcome $name! Let's get started on creating a new user account for you on this server."
		echo "What is the username you want to use for this account?"
		read user
		echo "Hmm $user, okay let's use that."
		echo "Now creating a user account for $user ..."
		sudo useradd $user
		echo "User account $user created!"
		echo "You are now able to log in to your account and access the server.";;
	olduser)
		echo "You already have an account in this server please log in.";;
	*)
		echo "Option doesn't exist. Please try again."
esac
