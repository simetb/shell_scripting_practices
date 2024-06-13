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
