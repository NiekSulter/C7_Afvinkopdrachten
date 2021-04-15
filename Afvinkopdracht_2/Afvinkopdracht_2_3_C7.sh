userInput() {
	echo "Geef een dag (1-31)"
	read inputDag
	echo "Geef een maand (1-12)"
	read inputMaand
	echo "Geef een jaartal (xxxx of xx)"
	read inputJaar
	length=${#inputJaar}
	
	if [[ $length > 2 ]]
	then
		inputJaar=${inputJaar: -2}
	fi

	echo $inputJaar
}

checkMagischJaar() {
	if [[ $inputDag*$inputMaand==$inputJaar ]]
	then
		echo "MAGISCH JAAR: $inputDag/$inputMaand/$inputJaar"
	else
		echo "geen magisch jaar $inputDag/$inputMaand/$inputJaar"
	fi

}

userInput
checkMagischJaar