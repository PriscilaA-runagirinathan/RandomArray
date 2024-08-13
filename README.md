Prerequisites

----------------------------------------

Unix-like Systems (Linux/macOS)
gcc: A C compiler must be installed.
OpenSSL: The OpenSSL library and development headers must be installed.

Windows
gcc: A C compiler (such as MinGW) must be installed.
OpenSSL: The OpenSSL library and development headers must be installed.

Files Included

----------------------------------------

build.sh: Shell script for Unix-like systems.
build.bat: Batch script for Windows.

Usage
----------------------------------------

Unix-like Systems (Linux/macOS)
Open a terminal and navigate to the project directory.
Make the script executable (if necessary):
run the build.sh
The script will:
Check if gcc and OpenSSL are installed.
Compile the C program (randomarray.c) using gcc.
Run the compiled program.

Windows
Open a command prompt and navigate to the project directory.
Prior to running the build.bat make sure that the path to MSBuild.exe is provided. Modify the given path in the .bat if requried. 
Run the script build.bat after the required changes are made. 
This will look for MSBuild path and if found would create the .exe
Then this will run to generate the random array followed by the sorted array. 

References

https://docs.openssl.org/1.1.1/man3/RAND_bytes/
