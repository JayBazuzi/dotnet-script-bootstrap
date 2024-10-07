@echo off
setlocal

REM Define script directory
set "SCRIPT_DIR=%~dp0"

REM Download and install .NET
powershell -Command "Invoke-WebRequest -Uri https://dot.net/v1/dotnet-install.ps1 -OutFile %SCRIPT_DIR%dotnet-install.ps1"
powershell -ExecutionPolicy Bypass -File "%SCRIPT_DIR%dotnet-install.ps1" -InstallDir "%SCRIPT_DIR%.dotnet" -JsonFile global.json >nul

REM Update PATH
set "PATH=%SCRIPT_DIR%.dotnet;%PATH%"

REM Install dotnet-script tool
%SCRIPT_DIR%.dotnet\dotnet.exe tool install dotnet-script --tool-path %SCRIPT_DIR%.dotnet >nul

REM Run the dotnet script
%SCRIPT_DIR%.dotnet\dotnet.exe script %*
