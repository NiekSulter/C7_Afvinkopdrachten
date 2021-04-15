#!/bin/bash


userInput() {
	naam=""

	echo "Voer je naam in:"
	read naam
	naamArray=( $naam )

	voornaam=${naamArray[0]}

	if echo $voornaam | grep -iqF jacob || echo $voornaam | grep -iqF said || echo $voornaam | grep -iqF tom;
	then
		echo "Welkom geachte docent: $voornaam"
	else
		echo "Welkom gast: $voornaam"
	fi

}

userInput