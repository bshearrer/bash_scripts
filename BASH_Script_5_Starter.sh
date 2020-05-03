#! /bin/bash

clear

name_array=('Constance_Castillo' 'Kerry_Goodwin' 'Dorothy_Carson' 'Craig_Williams' 
'Daryl_Guzman' 'Sherman_Stewart' 'Marvin_Collier' 'Javier_Wilkerson' 'Lena_Olson' 
'Claudia_George' 'Erik_Elliott' 'Traci_Peters' 'Jack_Burke' 'Jody_Turner' 'Kristy_Jenkins' 
'Melissa_Griffin' 'Shelia_Ballard' 'Armando_Weaver' 'Elsie_Fitzgerald' 'Ben_Evans' 'Lucy_Baker' 
'Kerry_Anderson' 'Kendra_Tran' 'Arnold_Wells' 'Anita_Aguilar' 'Earnest_Reeves' 'Irving_Stone' 
'Alice_Moore' 'Leigh_Parsons' 'Mandy_Perez' 'Rolando_Paul' 'Delores_Pierce' 'Zachary_Webster' 
'Eddie_Ward' 'Alvin_Soto' 'Ross_Welch' 'Tanya_Padilla' 'Rachel_Logan' 'Angelica_Richards' 
'Shelley_Lucas' 'Alison_Porter' 'Lionel_Buchanan' 'Luis_Norman' 'Milton_Robinson' 'Ervin_Bryant' 
'Tabitha_Reid' 'Randal_Graves' 'Calvin_Murphy' 'Blanca_Bell' 'Dean_Walters' 'Elias_Klein' 
'Madeline_White' 'Marty_Lewis' 'Beatrice_Santiago' 'Willis_Tucker' 'Diane_Lloyd' 'Al_Harrison' 
'Barbara_Lawson' 'Jamie_Page' 'Conrad_Reynolds' 'Darnell_Goodman' 'Derrick_Mckenzie' 
'Erika_Miller' 'Tasha_Todd' 'Aaron_Nunez' 'Julio_Gomez' 'Tommie_Hunter' 'Darlene_Russell' 
'Monica_Abbott' 'Cassandra_Vargas' 'Gail_Obrien' 'Doug_Morales' 'Ian_James' 'Jean_Moran' 
'Carla_Ross' 'Marjorie_Hanson' 'Clark_Sullivan' 'Rick_Torres' 'Byron_Hardy' 'Ken_Chandler' 
'Brendan_Carr' 'Richard_Francis' 'Tyler_Mitchell' 'Edwin_Stevens' 'Paul_Santos' 
'Jesus_Griffith' 'Maggie_Maldonado' 'Isaac_Allen' 'Vanessa_Thompson' 'Jeremy_Barton' 
'Joey_Butler' 'Randy_Holmes' 'Loretta_Pittman' 'Essie_Johnston' 'Felix_Weber' 'Gary_Hawkins' 
'Vivian_Bowers' 'Dennis_Jefferson' 'Dale_Arnold' 'Joseph_Christensen' 'Billie_Norton' 
'Darla_Pope' 'Tommie_Dixon' 'Toby_Beck' 'Jodi_Payne' 'Marjorie_Lowe' 'Fernando_Ballard' 
'Jesse_Maldonado' 'Elsa_Burke' 'Jeanne_Vargas' 'Alton_Francis' 'Donald_Mitchell' 'Dianna_Perry' 
'Kristi_Stephens' 'Virgil_Goodwin' 'Edmund_Newton' 'Luther_Huff' 'Hannah_Anderson' 'Emmett_Gill' 
'Clayton_Wallace' 'Tracy_Mendez' 'Connie_Reeves' 'Jeanette_Hansen' 'Carole_Fox' 'Carmen_Fowler' 
'Alex_Diaz' 'Rick_Waters' 'Willis_Warren' 'Krista_Ferguson' 'Debra_Russell' 'Ellis_Christensen' 
'Freda_Johnston' 'Janis_Carpenter' 'Rosemary_Sherman' 'Earnest_Peters' 'Kelly_West' 
'Jorge_Caldwell' 'Moses_Norris' 'Erica_Riley' 'Ray_Gordon' 'Abel_Poole' 'Cary_Boone' 
'Grant_Gomez' 'Denise_Chapman' 'Vernon_Moran' 'Ben_Walker' 'Francis_Benson' 'Andrea_Sullivan' 
'Wayne_Rice' 'Jamie_Mason' 'Jane_Figueroa' 'Pat_Wade' 'Rudy_Bates' 'Clyde_Harris' 'Andre_Mathis' 
'Carlton_Oliver' 'Merle_Lee' 'Amber_Wright' 'Russell_Becker' 'Natalie_Wheeler' 'Maryann_Miller' 
'Lucia_Byrd' 'Jenny_Zimmerman' 'Kari_Mccarthy' 'Jeannette_Cain' 'Ian_Walsh' 'Herman_Martin' 
'Ginger_Farmer' 'Catherine_Williamson' 'Lorena_Henderson' 'Molly_Watkins' 'Sherman_Ford' 
'Adam_Gross' 'Alfred_Padilla' 'Dwayne_Gibson' 'Shawn_Hall' 'Anthony_Rios' 'Kelly_Thomas' 
'Allan_Owens' 'Duane_Malone' 'Chris_George' 'Dana_Holt' 'Muriel_Santiago' 'Shelley_Osborne' 
'Clinton_Ross' 'Kelley_Parsons' 'Sophia_Lewis' 'Sylvia_Cooper' 'Regina_Aguilar' 
'Sheila_Castillo' 'Sheri_Mcdonald' 'Lynn_Hodges' 'Patrick_Medina' 'Arlene_Tate' 'Minnie_Weber' 
'Geneva_Pena' 'Byron_Collier' 'Veronica_Higgins' 'Leo_Roy' 'Nelson_Lopez')

# ----- Convert First Name to Title Case ----- #
function toTitleFirstName
{
	read -p "Enter the first name, or a partial start of the first name: " dog
	dog=$(echo $dog | tr [:upper:] [:lower:])
	first_name=$(echo $dog | cut -d " " -f 1)
	
	first_initial=$(echo ${first_name:0:1} | tr [:lower:] [:upper:])
	first_remaining=${first_name:1}
	first_name="$first_initial$first_remaining"
	
}


# ----- Convert Last Name to Title Case ----- #
function toTitleLastName
{
	read -p "Enter the last name, or a partial start of the last name: " cat
	cat=$(echo $cat | tr [:upper:] [:lower:])
	last_name=$(echo $cat | cut -d " " -f 1)
	
	last_initial=$(echo ${last_name:0:1} | tr [:lower:] [:upper:])
	last_remaining=${last_name:1}
	last_name="$last_initial$last_remaining"
	
}


# ----- Convert First Name to Title Case ----- #
function addNameFTitle
{
	echo
	while true;
	do
		read -p "Enter the new first name: " hair
		if [[ $hair =~ " " ]];then
			echo "Just the first name, please. No spaces."
		else
			break
		fi
	done

	hair=$(echo $hair | tr [:upper:] [:lower:])
	f_name=$(echo $hair | cut -d " " -f 1)
	
	f_initial=$(echo ${f_name:0:1} | tr [:lower:] [:upper:])
	f_remaining=${f_name:1}
	f_name="$f_initial$f_remaining"
}


# ----- Convert Last Name to Title Case ----- #
function addNameLTitle
{
	echo
	read -p "Enter the new last name: " yum
	yum=$(echo $yum | tr [:upper:] [:lower:])
	l_name=$(echo $yum | cut -d " " -f 1)
	
	l_initial=$(echo ${l_name:0:1} | tr [:lower:] [:upper:])
	l_remaining=${l_name:1}
	l_name="$l_initial$l_remaining"
}

# ----- Option 1 ----- #
function optOne
{
	nameFound=0
	echo

	toTitleFirstName
	
	echo	
	
	for i in ${name_array[*]};
		do
			if [[ $i == $first_name* ]];then
				echo "${i//_/ }"
				nameFound=1
			fi
		done
	if [[ $nameFound -eq 0 ]];then
		echo "No first name was found starting with $first_name"
	fi
	echo
}

# ----- Option 2 ----- #
function optTwo
{
	nameFound=0
	echo

	toTitleLastName

	echo

	for i in ${name_array[*]};
		do
			mouse=$(echo $i | sed 's/.*_//')
		
			if [[ $mouse == $last_name* ]];then
				echo "${i//_/ }"
				nameFound=1		
			fi
		done
	if [[ $nameFound -eq 0 ]];then
		echo "No last name was found starting with $last_name"
	fi
	echo
}

# ----- ADD A NAME ----- #
function addName
{
	addNameFTitle
	addNameLTitle
	echo
	echo "$f_name $l_name has been added!"
	echo	
	finalName=${f_name}_${l_name}
	name_array+=($finalName)	
}

# ---- DELETE NAME ---- #
function delName
{
	nameFound=0
	while true;
	do
		echo
		echo "Delete a name by entering the full name ie: John Smith"
	
		read -p "Enter the full name (Q to return to the main menu, 1 to search first names): " dName	

		if [[ $dName == 1 ]];then
			optOne

		elif [[ $dName == "Q" ]];then
			break
		
		else
			dName=`echo "$dName" | sed 's/[^ ]\+/\L\u&/g'`
			
			counter=0
			for i in ${name_array[*]};
			do
				if [[ $i = *$dName* ]];then
					echo "$dName removed from list."
					name_array=(${name_array[*]:0:$counter} ${name_array[*]:$(($counter+1))})
					nameFound=1
					break
				fi
			counter=$(($counter+1))
			done

			if [[ $nameFound -eq 0 ]];then
				echo "${dName//_/ } not found in list!"
			fi
		fi
	done
	echo
}

# ----- MAIN MENU ----- #
while true;
do	

	echo "Please select from the following options:"
	echo "
	1. List all names starting with one or more letters of the first name
	2. List all names starting with one or more letters of the last name
	3. Add a name
	4. Delete a name
	5. Exit
	"
	read -p "Option #: " userChoice

	if [ $userChoice -eq 1 ] > /dev/null 2>&1 ;then
		optOne		

	elif [ $userChoice -eq 2 ] > /dev/null 2>&1 ;then
		optTwo
	
	elif [ $userChoice -eq 3 ] > /dev/null 2>&1 ;then
		addName

	elif [ $userChoice -eq 4 ] > /dev/null 2>&1 ;then
		delName

	elif [ $userChoice -eq 5 ] > /dev/null 2>&1 ;then
		break

	else
		echo "Invalid input"

	fi
done
