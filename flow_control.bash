#!/bin/bash
# Using if, elif, else
x=25

if [ $x -eq 25 ]; then
	echo "The value of x is 25"
elif [ $x -gt 25 ]; then
	echo "The value of x is bigger than 25"
else
	echo "The value of x is lower than 25"
fi	

# Loops For while and until
# for
for i in {1..5}; do
	echo "Iteration $i"

# while
count=1
while [ $count -le 5 ]; do
	echo "Count is $count"
	((count++))
done

# until
until [ $count -gt 5 ]; do
	echo "Count is $count"
	((++count))
done

# Loops control break and countinue
# Using break
for i in {1..5}; do
	if [ $i -eq 3 ]; then
		break
	fi
	echo "Iteration $i"
done

# Using continue
for i in {1..5}; do
	if [ $i -eq 3 ]; then
		continue
	fi
	echo "Iteration $i"
done

# Functions
# Defining a function
greet() {
	echo "Hello, $1"
}

# Using the function
greet "Alice"

add() {
	local sum=$(( $1 + $2 ))
	echo $sum
}

result = $(add 5 3)
echo "Sum is $result"

multiply() {
	local product=$(( $1 + $2 ))
	return $product
}

multiply 4 5
echo "Product is $?"
