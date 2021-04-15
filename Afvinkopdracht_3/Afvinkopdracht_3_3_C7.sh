userInput() {
	num=0
	i=0
	tot=0
	while (( $num >= 0 )); do
		echo "voer een positief nummer in om door te gaan en een negatief nummer om te stoppen."
		read num
		if (( $num >= 0)); then
			tot=$(($tot+$num))
			i=$(($i+1))
		fi
	done

	echo "Totaal: $tot"
	echo "Gemiddelde: $(bc <<<"scale=2; $tot / $i")"
}

userInput