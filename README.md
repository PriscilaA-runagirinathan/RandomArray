Prerequisites

===================================

Unix-like Systems (Linux/macOS)
gcc: A C compiler must be installed.
OpenSSL: The OpenSSL library and development headers must be installed.

Windows
gcc: A C compiler (such as MinGW) must be installed.
OpenSSL: The OpenSSL library and development headers must be installed.

Files Included

======================================

build.sh: Shell script for Unix-like systems.
build.bat: Batch script for Windows.
These scripts are located in the root directory of the Visual Studio project.

Usage

=====================================
Unix-like Systems (Linux/macOS)
Open a terminal and navigate to the project directory.
Make the script executable (if necessary):
bash
chmod +x build.sh
Run the script:
bash
./build.sh
The script will:
Check if gcc and OpenSSL are installed.
Compile the C program (randomarray.c) using gcc.
Run the compiled program.

Windows
Open a command prompt and navigate to the project directory.
Run the script:
cmd
Copy code
build.bat
The script will:
Check if gcc and OpenSSL are installed.
Compile the C program (randomarray.c) using gcc.
Run the compiled program.
