read option
lowercase=${option,,}

if [ $lowercase == "y" ]; then
    echo "YES"
else
    echo "NO"
fi
