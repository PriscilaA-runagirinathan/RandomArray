#!/bin/bash
 
# Function to check if a command exists
command_exists () {
    command -v "$1" >/dev/null 2>&1
}
 
# Check for gcc
if ! command_exists gcc; then
    echo "Error: gcc is not installed."
    exit 1
fi
 
# Check for OpenSSL
if ! command_exists openssl; then
    echo "Error: OpenSSL is not installed."
    exit 1
fi
 
# Build the solution
echo "Building the solution, please wait..."
gcc -o randomarray RandomArray.c -lssl -lcrypto
if [ $? -ne 0 ]; then
    echo "Build failed. Please check the solution for errors."
    exit 1
fi
 
# Run the executable
if [ -f "./randomarray" ]; then
    echo "Build successful, running the program..."
    ./randomarray
else
    echo "Build successful, but randomarray not found."
fi
