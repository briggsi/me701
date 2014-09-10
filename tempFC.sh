#!/bin/bash

# check for arguments and get Tf
if (( $# == 0 )); then
	echo -n "Temperature in Fahrenheit: " && read
	Tf=$REPLY
else 
	Tf=$1
fi

# pipe the expression into a calculator with 1 decimal precision
Tc=$(echo "scale = 1; ($Tf - 32) * 5 / 9" | bc)

# pipe the found temperature back into the calculator for Kelvin
Tk=$(echo "scale = 1; $Tc + 273.15" | bc)

echo "Temperature in Celcius: $Tc"
echo "Temperature in Kelvin: $Tk"
