#! /bin/bash
echo "Welcome to the guess a number game! Let's get started"
read -p $"We will begin by establishing the range of numbers you want to guess beteween.
What is the minimum?" min
read -p "What about the maximum value?" max
while [ $max -lt $min ]; 
do
	read -p "Invalid: Max value cannot be less than min value. Enter a new value:" max
done
x=$(($RANDOM % ($max - $min +1) +$min))
read -p "Guess the number between $min and $max:" guess
until [ $guess -eq $x ]
do
	echo "Your guess is wrong..."
	if [[ $guess -gt $x && $guess -lt $max ]]; then
		echo "guess was too high"
	elif [[ $guess -lt $x && $guess -gt $min ]]; then
		echo "guess was too low"
	elif [[ $guess -lt $min || $guess -gt $max ]]; then
		echo "The guess is not in range"
	fi
	read -p "Try again: " guess
done

echo "Your guess was correct"