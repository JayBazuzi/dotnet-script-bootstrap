@echo off
setlocal

for /f "delims=" %%o in ('hello_world.cmd') do set "output=%%o"

if "%output%"=="hello world" (
  echo Test passed
) else (
  echo Test failed
  exit /b 1
)
