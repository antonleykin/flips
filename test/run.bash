#!/bin/bash

# Assign the argument to a variable
n=$1

# Check if the directory n exists
if [ ! -d "$n" ]; then
    echo "Error: Directory $n not found."
    exit 1
fi

# Loop until there are 1000 files in n-1
while [ $(find "$((n-1))" -maxdepth 1 -type f | wc -l) -lt 1000 ]; do
    # Select a random file from the directory n
    random_file=$(find "$n" -type f | shuf -n 1)

    # Run the ./flip script with the selected file
    result=$(../code/flip $random_file $2 $3 $4 $5 0)
    # $5 = lengths of the path
    
    # Extract the filename g from the result
    g=$(echo "$result" | cut -d',' -f1)

    # Check if g is not empty
    if [ -n "$g" ]; then
        # Move the file g to the directory n-1
        mv "$g" "$((n-1))"
    fi
done

