#!/bin/bash
a=1997 
while (( $a <= 2023 ));do
	echo $a
	a=`expr $a + 1`
done

