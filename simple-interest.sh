#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3
    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "The Simple Interest is: $interest"
}

# Read inputs from the user
echo "Enter the Principal amount:"
read principal
echo "Enter the Rate of interest (in percentage):"
read rate
echo "Enter the Time period (in years):"
read time

# Validate inputs
if [[ ! $principal =~ ^[0-9]+(\.[0-9]+)?$ || ! $rate =~ ^[0-9]+(\.[0-9]+)?$ || ! $time =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid input. Please enter numeric values for Principal, Rate, and Time."
    exit 1
fi

# Call the function to calculate simple interest
calculate_simple_interest $principal $rate $time
