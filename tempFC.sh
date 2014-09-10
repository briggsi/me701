#!/bin/bash

# check for arguments and get Tf
if (( $# == 0 )); then
	echo "Temperature in Fahrenheit:" && read
	let Tf=$REPLY
else 
	Tf=$1
fi

# pipe the expression into a calculator with 1 decimal precision
Tc=$(echo "scale = 1; ($Tf - 32) * 5 / 9" | bc)

echo "Temperature in Celcius: $Tc"
