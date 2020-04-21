#! /bin/sh
clear

function doMath
{
	userNumber=$(($1*$1+$1))
}

while true;
do
	read -p "Please enter an integer between 1 and 10 (q to quit): " userInput
	echo

	if [[ $(($userInput)) != $userInput || $(($userInput)) -lt 1 || $(($userInput)) -gt 10 ]]; then
		
		if [ $userInput == "q" ]; then
			echo "Quitting..."
			echo
			break	
		else
			echo "That is not an integer between 1 and 10. Try again."
			echo
		fi
	else
		doMath $userInput
		echo "The result is $userNumber"
		echo
	fi
done
