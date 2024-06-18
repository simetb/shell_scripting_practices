#!/bin/bash
read -p "Fractal iterations: " iter

# Dimension of the matrix
rows=100
cols=65

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
	echo "Im doing a stem"

	# Do the branches
	echo "Im doing the branches"
}

initialize_matrix

display_matrix
