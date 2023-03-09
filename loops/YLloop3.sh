#!/bin/bash
a=10000
while (( $a <= 90000 ));do
	echo $a
	a=`expr $a + 10000`
done
