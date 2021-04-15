calcInsectCount() {
	i=1
	dailyCount=0
	totalCount=0
	while (( $i <= 7 ))
	do
		echo "Voer het aantal insecten in voor dag $i"
		read dailyCount
		totalCount=$(($dailyCount+$totalCount))

		i=$(($i+1))
	done

	echo "Totaal aantal gevonden insecten deze week: $totalCount"
}

calcInsectCount