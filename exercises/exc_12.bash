#!/bin/bash
initialize_matrix() {
	for ((i=0; i<rows; i++)); do
		for ((j=0; j<cols; j++)); do
			matrix[$((i * cols + j))]=0
		done
	done
}

display_matrix() {
	for ((i=0; i<rows; i++)); do
		for ((j=0; j<cols; j++)); do
			printf "${matrix[$((i * cols + j))]} "
		done
		echo
	done
}

do_fractals(){
	# Do the stem
	# echo "Im doing a stem $1"
	local input=$1
	if [ $1 -eq 16 ]; then
		echo "First iteration $base"
	fi

	base=$(( input / 2 ))

	# Do the branches
	# echo "Im doing the branches"
}

# Dimension of the matrix
rows=100
cols=65
base=16

read -p "Fractal iterations: " iter


initialize_matrix

#display_matrix

for((k=0; k<iter; k++)); do
	do_fractals "$base"
	echo "Base after iterations $((k+1)): $base"
done	
