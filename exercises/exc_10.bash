#!/bin/bash

read expression
 
result=$(echo "scale=10; $expression" | bc)

formatted_result=$(printf "%.3f" "$result")

echo $formatted_result
