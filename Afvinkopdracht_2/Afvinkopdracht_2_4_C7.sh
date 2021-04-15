userInput() {
	num1=""
	num2=""
	it=0
	while [[ ! $num1 =~ ^[1-9]+$ ]] || [[ ! $num2 =~ ^[1-9]+$ ]]
	do 
		if (( it>0 ))
		then
			echo "Incorrecte invoer gevonden, vul nogmaals twee hele nummers in"
		fi

		echo "Vul twee hele nummers in tussen de 1 en 9"
		read num1
		read num2

		it=$((it+1))
		
	done
}

calculate() {
	add=$(($num1 + $num2))
	sub=$(($num1 - $num2))
	mul=$(($num1 * $num2))
	squ=$(($num1 ** $num2))

	val=($((add)) $((sub)) $((mul)) $(bc <<<"scale=1; $num1 / $num2") $((squ)))
	ops=("+:" "-:" "x:" "/:" "^:")
}

printVal() {
	for i in $(seq 0 4);
	do
		printf '%s %s\n' ${ops[i]} ${val[i]}
	done
}

userInput
calculate
printVal