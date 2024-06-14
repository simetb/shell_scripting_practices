# String
string_v="This is a string"

# Integers
number_one=1
number_two=10

# If you want to do arithmetic operations use let expr o $(()) expressions
# let
let plus=number_one+number_two
echo "$plus"

# expr
plus=$(expr $number_one + $number_two)
echo "$plus"

# $(())
plus=$(( $number_one + $number_two))
echo "$plus"

# Define an environment variable
export MY_VARIABLE="IM AN ENVIRONMENT VARIABLE"
echo "$MY_VARIABLE"
unset "$MY_VARIABLE"

# Operators
# + PLUS
# - SUSTRAC
# * MULTIPLY
# / DIVISIONi
# % MODULE
# Examples...
a=10
b=5

echo $(( a + b ))
echo $(( a - b ))
echo $(( a * b ))
echo $(( a / b ))
echo $(( a % b ))

# Comparisson operators
# -eq (same as)
# -ne (not same as)
# -lt (lower than)
# -le (lower or equally to)
# -gt (bigger than)
# -ge (bigger or equally to)
# Examples...

if [ $a -eq $b ]; then
	echo "a and b has the same value"
else
	echo "a and b doesn't has the same value"
fi

if [ $a -gt $b ] then
	echo "a it's bigger than b"
fi

# Logical operators
# && (AND)
# || (OR)
# ! (NOT)
# Examples...

# AND
if [ $a -gt 0 ] && [ $b -gt 0 ]; then
	echo "a and b are bigger than 0"
fi

# OR 
if [ $a -gt 0 ] || [ $b -gt 0 ]; then
	echo "a or b are bigger than 0"
fi

# NOT
if ! [ $a -lt 0]; then
	echo "a it's not lower than 0"
fi


















