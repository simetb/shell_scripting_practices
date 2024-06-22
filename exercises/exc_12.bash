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
	# Get the parameters
	local base_parameter=$1
	
	# Variables
	local position=0

	# Start position process
	if [ $base_parameter -ne 16 ]; then
		for ((i=16; i>$base_parameter; i=$(( i / 2 )))); do
			position=$((position + (i * 2)))
			echo "$i"
		done
		start_position=$((rows - 1 - position))
	else
		local start_position=$((rows - 1))
	fi

	# Stem process
	for((row=0; row<$base_parameter; row++)); do
		# First iteration
		if [ $1 -eq 16 ]; then
			local cols_center=$((cols / 2))
			local index=$(((start_position - row) * cols + cols_center))
			matrix[$index]="x"
		
		# Others iterations
		else
			for((col=0; col<$cols; col++)); do
				local index=$(((start_position - row + 1) * cols + col))
				if [ matrix[$index] = "x" ]; then
					local index_stem_position=$(((start_position - row) * cols + col))
					matrix[$index_stem_position]="x"
				fi
			done
		fi
	done

	# Branches process
	# Subtract the stem position 
	local start_position_branch=$((start_position - base_parameter))
	# local finish_position=$((start_position - (base_parameter * 2)))
	local finish_position_branch=$((start_position - (base_parameter * 2) + 1))


	# Control variables
	local first_branch=1
	local branch_direction=1

	echo "$start_position_branch"
	echo "$finish_position_branch" 
	# Loop through each row from start_position to finish_position
	for ((row=$start_position_branch; row>$finish_position_branch; row--)); do
		for ((col=0; col<=$cols; col++)); do
			local index=$(((start_position_branch + (row) * cols + col)))
			# Check if there is a stem at the current position
			if [ "${matrix[$index]}" = "x" ]; then

				local index_left=$(((start_position_branch + (row - 1) * cols + col - 1)))
				local index_right=$(((start_position_branch + (row - 1) * cols + col + 1)))

				if [ $first_branch -eq 1 ]; then
					matrix[$index_left]="x"
					matrix[$index_right]="x"
					local first_branch=0
				elif [ $branch_direction -eq 1 ]; then
					matrix[$index_left]="x"
					local branch_direction=0
				else
					matrix[$index_right]="x"
					local branch_direction=1
				fi
				
			fi
		done
	done


	display_matrix

	# Preparing the base for the next iteration
	base=$(( base_parameter / 2 ))
}

# Dimension of the matrix
rows=100
cols=65
base=16

read -p "Fractal iterations: " iter

initialize_matrix

for((k=0; k<iter; k++)); do
	do_fractals "$base"
done	
