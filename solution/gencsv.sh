#!/bin/bash

# Create an empty 'inputFile'
touch inputFile

# Generate a random number seed
RANDOM=$$

# Prompt the user to enter the start and end indices
echo "Enter the start index: "
read start_index
echo "Enter the end index: "
read end_index

# Validate input
if [[ ! "$start_index" =~ ^[0-9]+$ || ! "$end_index" =~ ^[0-9]+$ || "$start_index" -gt "$end_index" ]]; then
    echo "Invalid input. Please enter valid start and end indices."
    exit 1
fi

# Loop to generate and append entries to 'inputFile'
for i in `seq $start_index $end_index`
do
	{
		# Print the index, a comma, and a tab
		printf  "$i," && printf  "\t $RANDOM " 
	    printf "\n"
	}
done > inputFile

# Display the contents of 'inputFile'
cat inputFile
