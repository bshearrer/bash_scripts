#! /bin/sh
clear

SODA_BASE_PRICE=100
#Get random value of -15, -10, -5, 0, 5, 10, 15
random_soda_change=$(( ($RANDOM%7-3)*5 ))
#Set the full price of the soda
soda_full_price=$(($SODA_BASE_PRICE+$random_soda_change))

echo "Welcome to the soda machine. You can enter values of 5, 10, or 25 in payment"

read -p "What type of soda would you like? " user_soda

clear

echo "The current price of $user_soda is $soda_full_price cents"

while [ $soda_full_price -ge 0 ]
do
	read -p "Enter a coin: " coin_input

	#If input is a quater (.25)
	if [ $coin_input -eq 25 ] > /dev/null 2>&1 ;then
		soda_full_price=$(($soda_full_price-25))
		clear
		echo "You inserted a quarter"
		
		if [ $soda_full_price -lt 0 ];then
			refund=$(($soda_full_price*-1))
			echo "You have been refunded $refund cents"
			echo "Enjoy your $user_soda!"
			break
		elif [ $soda_full_price -eq 0 ];then
			echo "Enjoy your $user_soda!"
			break
		fi
	
		echo "You still owe $soda_full_price cents"

	elif [ $coin_input -eq 10 ] > /dev/null 2>&1 ;then
		soda_full_price=$(($soda_full_price-10))
		clear
		echo "You inserted a dime"

		if [ $soda_full_price -lt 0 ];then
			refund=$(($soda_full_price*-1))
			echo "You have been refunded $refund cents"
			echo "Enjoy your $user_soda!"
			break
		elif [ $soda_full_price -eq 0 ];then
			echo "Enjoy your $user_soda!"
			break
		fi

		echo "You still owe $soda_full_price cents"

	elif [ $coin_input -eq 5 ] > /dev/null 2>&1 ;then
		soda_full_price=$(($soda_full_price-5))
		clear
		echo "You inserted a nickel"

		if [ $soda_full_price -lt 0 ];then
			refund=$(($soda_full_price*-1))
			echo "You have been refunded $refund cents"
			echo "Enjoy your $user_soda!"
			break
		elif [ $soda_full_price -eq 0 ];then
			echo "Enjoy your $user_soda!"
			break
		fi

		echo "You still owe $soda_full_price cents"
	else
		clear
		echo "That is not a valid input! Enter 5, 10, or 25"
		echo "You still owe $soda_full_price"
	fi
done

echo
read -p "Press the enter key to close the script"
