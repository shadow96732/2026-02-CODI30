#!/bin/bash

echo 'single quotes don not allow variable expansion'
variable_expansion_example='the ability to use variables!'
printf "double quotes enable $variable_expansion_example"
echo -e "printf has format options built in \n using echo, you have to add flags \n a backslash (\) is an escape character. 
This allows text to be interpreted as a string, removing the special meaning or function that is typically possessed
ex. i could write \$variable_expansion_example and it does not display the value of the variable 
--> it shows the literal string as i have used a \ "

read -p "read is used to take user input, with the -p flag prompting the user for a response/input. 
You can enter data here
:" user_input

echo -e "using input from the user like \" $user_input \" you can insert it for things like conditional statements "

read -p 'we can use user input and conditional statements to create different outcomes. For example, we can have different outputs for entering different numbers between 1 and 10
Try it out! Enter a number between 1 and 10: ' user_input

if [ $user_input -lt 5 ]; then
	echo "your input was less than 5"

	elif [[ $user_input == 5 ]]; then
		echo 'your input was equal to 5
		double [[]] brackets were used for regular expression'

	else 
		echo 'your input was greater than 5'

fi

#note to self: look at command injection bc that will be interesting!