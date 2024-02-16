#!/bin/bash

# Set input file name
input_file="Suicide_Detection.csv"

# Set output prefix
output_prefix="suicide_detection"

lines_per_part=35000

# Split the file into parts
split -l $lines_per_part "$input_file" "$output_prefix"

# Rename the parts with .csv extension and alphabetical suffixes
for file in $output_prefix*; do
    mv "$file" "$file.csv"
done
