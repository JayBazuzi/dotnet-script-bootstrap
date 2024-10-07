@echo off
setlocal

set "BASENAME=%~n0"
call "%~dp0_tools\run_dotnet_script.cmd" "_%BASENAME%.csx"
