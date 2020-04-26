#! /bin/bash

clear

lyrics_string="Quisiera:Ayer:cambiarle:conocí:el:un:final
:cielo:al:sin:cuento|Las:sol|Y:barras:un:y:hombre:los:sin
:tragos:suelo|Un:han:santo:sido:en:testigo|De:prision|Y:el
:una:dolor:canción:que:triste:me:sin:causaste:dueño|Y:y
:conocí:to':tus:lo:ojos:que:negros|Y:hciste:ahora:conmigo|Un
:sí:infeliz:que:en:no:el:puedo:amor,:vivir:que:sin:aun
:ellos:no:yo|Le:te:pido:supera|Que:al:ahora:cielo:camina
:solo:solo:un:sin:deseo|Que:nadie:en:por:tus:todas:ojos
:las:yo:aceras|Preguntándole:pueda:a:vivir|He:Dios:recorrido
:si:el:en:mundo:verad:entero|te:el:vengo:amor:a:existe|:decir|"

lyrics_string=$( echo $lyrics_string | tr ":" " ")

declare -a songArray=()
declare -a songOneArray=()
declare -a songTwoArray=()
declare -a sameWordArray=()

songArray=($(echo $lyrics_string | cut -d " " -f 1-))
len=${#songArray[@]}
index=0
for (( i=0; i<$len; i++ ));
do
	songOneArray[$index]=${songArray[$i]}
	i=$(($i+1))
	songTwoArray[$index]=${songArray[$i]}
	index=$(($index+1))
done

f=$(echo ${songOneArray[*]} | sed 's/|/\\n/g')
echo -e $f
end="te un y"
s=$(echo ${songTwoArray[*]} | sed 's/|/\\n/g')
echo -e $s

#echo "Words that are in both songs:"

for i in ${songOneArray[*]}
do
	if [[ " ${songTwoArray[@]} " =~ " $i " ]]; then
		if [[ ! " ${sameWordArray[@]} " =~  " $i " ]]; then
			sameWordArray+=($i)
		fi
	fi
done


sameWordArray=($(for i in ${sameWordArray[*]}; do echo $i; done | sort))
echo "Words that are in both songs: ${sameWordArray[*]} $end"
echo
read -p "Press enter to exit the script: "
