userInput() {
	echo "Geef een tijd in seconden:"
	read input
	echo "Je hebt $input seconden ingevoerd"
}

calcMinutes() {
	minutes=$(($input / 60 | $input % 60))
	modMinutes=$(($input % 60))

	echo "Aantal minuten: $minutes met $modMinutes seconden"

}

calcHours() {
	hours=$(($minutes / 60))
	modHours=$(($minutes % 60))
	
	echo "Aantal uren: $hours met $modHours minuten en $modMinutes seconden"

}

calcDays() {
	days=$(($hours / 24))
	modDays=$(($hours % 24))

	echo "D:$days H:$modDays M:$modHours S:$modMinutes"

	values=($((days)) $((modDays)) $((modHours)) $((modMinutes)))

}

printOp2() {
	printf '%8.8s dagen\n' ${values[0]}
	printf '%8.8s uren\n' ${values[1]}
	printf '%8.8s minuten\n' ${values[2]}
	printf '%8.8s seconden\n' ${values[3]}  
}

userInput 
calcMinutes
calcHours
calcDays
printOp2
