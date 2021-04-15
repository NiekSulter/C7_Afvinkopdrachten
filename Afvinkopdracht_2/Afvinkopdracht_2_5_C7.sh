userInput() {
	num1=""
	num2=""
	num3=""
	num4=""
	num5=""
	it=0
	while [[ ! $num1 =~ ^[1-99]+$ ]] || [[ ! $num2 =~ ^[1-99]+$ ]] || [[ ! $num3 =~ ^[1-99]+$ ]] || [[ ! $num4 =~ ^[1-99]+$ ]] || [[ ! $num5 =~ ^[1-99]+$ ]]
	do 
		if (( it>0 ))
		then
			echo "Incorrecte invoer gevonden, vul nogmaals twee hele nummers in"
		fi

		echo "Vul vijf getallen in tussen de 0 en 100"
		read num1
		read num2
		read num3
		read num4
		read num5

		it=$((it+1))
		
	done
}

calcAverage() {
	tot=$(($num1 + $num2 + $num3 + $num4 + $num5))
	avgInt=$(($tot/5))
	avg=$(bc <<<"scale=1; $tot / 5")
	r="${avg: -1}"

	if [[ $r -ge 5 ]]
	then
		avgInt=$(($avgInt+1))
	fi

	echo "Gemiddelde score: $avgInt"
}

userInput
calcAverage