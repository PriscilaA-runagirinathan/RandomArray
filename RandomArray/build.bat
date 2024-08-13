@echo off

REM Function to check if a command exists
:check_command
where %1 >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: %1 is not installed.
    exit /b 1
)
goto :eof

REM Check for gcc
call :check_command gcc.exe

REM Check for OpenSSL
call :check_command openssl.exe

REM Detect the operating system
ver | findstr /i "windows" >nul
if %errorlevel%==0 (
    echo Detected Windows OS
    gcc -o randomarray.exe randomarray.c -lssl -lcrypto
    randomarray.exe
) else (
    echo Unsupported OS
    exit /b 1
)
