#!/bin/bash
# ARRAYS
# Array definition in bash
my_array=(1 2 3 4 5)

# Another way to define an array in bash
my_array=([0]=1 [1]=2 [2]=3 [3]=4 [4]=5)

# Accesing a single element
echo ${my_array[0]}

# Accessing all elements
echo ${my_array[@]}

# Adding a new element
my_array+=(6)

# Iterating using a for loop
for element in "${my_array[@]}"; do
    echo $element
done

# Array length
echo ${#my_array[@]}

# MATRIX
# Using an associative array
declare -A matrix
matrix[1]=1 2 3 4 5
# Or
matrix[0,0]=1
matrix[0,1]=2
matrix[1,0]=3
matrix[1,1]=4

# Accessing elements
echo ${matrix[0,0]}  # Outputs: 1
echo ${matrix[1,1]}  # Outputs: 4

# Define a 2x2 matrix
matrix=(
  1 2
  3 4
)

# Accessing elements (manual calculation of indices)
rows=2
cols=2

# Access element at row 1, column 0
row=1
col=0
index=$((row * cols + col))
echo ${matrix[$index]}  # Outputs: 3

# Define matrix dimensions
rows=2
cols=2

# Iterate over matrix elements
for ((i=0; i<rows; i++)); do
  for ((j=0; j<cols; j++)); do
    index=$((i * cols + j))
    echo -n "${matrix[$index]} "
  done
  echo
done
# Outputs:
# 1 2 
# 3 4 

# Define a 3x3 matrix
matrix=(
  1 2 3
  4 5 6
  7 8 9
)

# Matrix dimensions
rows=3
cols=3

# Function to print matrix
print_matrix() {
  for ((i=0; i<rows; i++)); do
    for ((j=0; j<cols; j++)); do
      index=$((i * cols + j))
      echo -n "${matrix[$index]} "
    done
    echo
  done
}

# Print the matrix
print_matrix
# Outputs:
# 1 2 3 
# 4 5 6 
# 7 8 9 

# Update an element
matrix[4]=55  # Update element at row 1, column 1

# Print the updated matrix
print_matrix
# Outputs:
# 1 2 3 
# 4 55 6 
# 7 8 9 
