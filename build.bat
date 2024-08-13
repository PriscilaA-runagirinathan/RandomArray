@echo off
 
REM Set the path to MSBuild.exe (adjust if necessary), it is generally at this location but can vary based on the version of VS. 
set MSBUILD_PATH="C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe"
 
REM Check if MSBuild exists
if not exist %MSBUILD_PATH% (
    echo MSBuild not found, please check the path.
    pause
    exit /b 1
)
 
REM Build the solution
%MSBUILD_PATH% RandomArray.sln /p:Configuration=Release /p:Platform=x64
if %errorlevel% neq 0 (
    echo Build failed.
    pause
    exit /b 1
)
 
REM Navigate to the output directory and run the executable
cd x64\Release
if exist randomarray.exe (
    randomarray.exe
) else (
    echo Executable not found.
)
 
pause