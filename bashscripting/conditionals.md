#!/bin/bash

value="guessme"
guess=$1

if [ $value = $guess ]
	# or "$value" = "$guess"
	then
echo "You are right!"
	
	else

echo "You are wrong."

fi
