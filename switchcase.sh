#!/bin/bash
echo "Hello what is your name?"
read name
echo "Welcome $name, we will now create a user account for you in this server."
echo "Are you ready to get started?"
read yn
ans=$( echo $yn | tr [:upper:] [:lower:] )
case $ans in
	yes)
		echo "Okay great! Let's get started."
		echo "What is the username you want to use for this account?"
		read user
		echo "Hmm $user, okay let's use that."
		echo "Now creating a user account for $user ..."
		sudo useradd $user
		echo "User account $user created!"
		echo "You are now able to log in to your account and access the server.";;
	no)
		echo "Okay, some other time then.";;
	*)
		echo "Sorry what was that? Please try again."
		sh switchcase.sh
esac
