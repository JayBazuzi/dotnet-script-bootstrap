@echo off
setlocal

call "%~dp0_tools\run_dotnet_script.cmd" "_%~n0.csx"
