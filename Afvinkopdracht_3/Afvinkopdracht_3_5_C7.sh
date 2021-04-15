getRows() {
	inp=""
	echo "Enter file:"
	read inp
	i=1
	while IFS= read -r line; do echo "Regel $i:	${#line} tekens" 
	i=$(($i+1)); done < $inp
}

getRows