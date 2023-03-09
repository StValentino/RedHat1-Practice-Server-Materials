#!/bin/bash
a=100
while (( $a >= 90 ));do
	echo $a
	a=`expr $a - 1`
done
