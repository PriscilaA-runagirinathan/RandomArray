#!/bin/bash

OS="$(uname)"

# Function to check if a command exists
command_exists() {
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

# Compile and run based on linux or macOS or unsupported for win
if [ "$OS" == "Linux" ]; then
    echo "Detected Linux OS"
    gcc -o randomarray randomarray.c -lssl -lcrypto
    ./randomarray
elif [ "$OS" == "Darwin" ]; then
    echo "Detected macOS"
    gcc -o randomarray randomarray.c -lssl -lcrypto
    ./randomarray
else
    echo "Unsupported OS: $OS"
    exit 1
fi
