#!/bin/bash 
# This scripts is to demonstrate how if/then statements can be chained together 
echo "This is a bidding war for a Mercedes CLK GTR"
echo "Bidder 1 please enter your bid."
read bid1
echo "Bidder 2 please enter your bid."
read bid2
if [ $bid1 > $bid2 ];then
	echo "SOLD! The car goes to Bidder 1."
elif [ $bid1 < $bid2 ];then
	echo "SOLD! The car goes to Bidder 2."
else 
	echo "Bids are equal! Rebid!"
fi
