read x
read y
read z

if [[ $x -eq $y && $y -eq $z ]]; then
    echo "EQUILATERAL"
elif [[ $x -eq $y || $x -eq $z || $y -eq $z ]]; then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi
