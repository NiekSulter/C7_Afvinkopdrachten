stars() {
	k=8
	for i in $(seq 0 8); do
		j=0
		while (($j<=$k)); do
			printf "%0.s*" {1..$k}
			j=$(($j+1))
		done
		echo "\n"
		k=$(($k - 1))
	done
}

hashtags() {
	k=0
	for i in $(seq 0 8); do
		j=0
		printf "#"
		while (($j<=$k)); do
			if [[ ! $j == 0 ]]; then
				printf "%0.s " {1..$k}
			fi
			j=$(($j+1))
		done
		echo "#"
		echo "\n"
		k=$(($k + 1))
	done	
}

stars
hashtags