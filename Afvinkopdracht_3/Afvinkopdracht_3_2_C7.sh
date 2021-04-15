kmh=0
h=0

userInput() {
	echo "Voer het aantal kilometers in in km/h:"
	read kmh
	echo "Voer het aantal uur in"
	read h
}

calcDist() {
	i=1
	afstand
	echo "Uurafstand"
	while ((i <= $h)); do
		afstand=$(($afstand + $kmh))
		echo "$i.	$afstand"
		i=$(($i+1))
	done
}

userInput
calcDist