#!/bin/bash
a=1
while (( $a <= 5 ));do
	echo $a
	a=`expr $a + 1`
done
