#! /bin/sh
clear

function RandInsert
{
	dog=$(($RANDOM%10))
	echo "${1// /_} is at position $dog in the array"
	
	counter=0
	for i in ${staticArray[*]};
		do
			if [[ "$counter" == "$dog" ]]; then
				mArray+=(${1// /_})
			else
				mArray+=($i)
			fi
			counter=$(($counter+1))
		done
	echo "The array is now: ${mArray[*]}"
}

declare -a myArray=(dog cat -1 2.13 100 seven7 The_Incredible_Hulk APPLE zoom 566)
declare -a staticArray=()
declare -a mArray=()
declare -a sortedArray=()

#counter=1
#
#while [ $counter -le 10 ];
#do
#	read -p "Enter an item: " item
#	myArray+=(${item// /_})	
#	counter=$(($counter+1))
#done

staticArray=("${myArray[@]}")

#Check the length of the array to ensure there are 10 entries
arrayLength = ${#staticArray[*]}
echo "This array has 10 items. $arrayLength"
echo

#Print the array. Dont loop through it just print it out
echo "This is the array:"
echo ${staticArray[*]}
echo

#Swap the first item with the last item in the array the print
firstItem=${staticArray[0]}
lastItem=${staticArray[$(($arrayLength-1))]}

staticArray[0]=$lastItem
staticArray[$(($arrayLength-1))]=$firstItem

echo "This is the array after swapping the first and last items:"
echo ${staticArray[*]}
echo

#Print the first 3 items in the array with the last three items
echo "These are the first three and last three items in the array:"
echo "${staticArray[*]:0:3} ${staticArray[*]: -3}"
echo

#Loop through and print all items in the array
for i in ${staticArray[*]};
	do
		echo $i
	done
echo

#Check to see if cat exists in the array
flag=0
for i in ${staticArray[*]};
	do
		if [[ "$i" == "cat" ]]; then
			flag=1			
		fi
	done

if [[ "$flag" == "1" ]]; then
	echo "There is a cat in my array"
else
	echo "There is not a cat in my array"
fi

#Insert a marvel name randomly into the array
read -p "Please insert the name of a Marvel character: " marvelName
RandInsert "$marvelName"
echo

#Print the integers sorted in the original array
sortedArray=("${myArray[@]}")

sortedArray=($(for i in ${sortedArray[*]}; do echo $i; done | sort))

echo "The integers in the original array, sorted, are: "
