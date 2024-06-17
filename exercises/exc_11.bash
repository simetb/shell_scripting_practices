#!/bin/bash

read n_numbers

full_value=0

for (( i=1; i<=$n_numbers; i++ ))
do
    read number
    full_value=$((full_value + number))
done

average=$(echo "scale=10; $full_value / $n_numbers" | bc)

formatted_average=$(printf "%.3f" "$average")
echo $formatted_average
