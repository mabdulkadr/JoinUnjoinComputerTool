@ECHO OFF
TITLE Join Unjoin Computer Tool
ECHO Select a build:
ECHO   1 = Enhanced (v2, recommended)
ECHO   2 = Classic  (v1)
CHOICE /C 12 /N /M "Enter 1 or 2: "
IF ERRORLEVEL 2 GOTO CLASSIC
POWERSHELL.EXE -NoProfile -ExecutionPolicy Bypass -STA -File "%~dp0JoinUnjoinComputerTool-v2.ps1"
GOTO END
:CLASSIC
POWERSHELL.EXE -NoProfile -ExecutionPolicy Bypass -STA -File "%~dp0JoinUnjoinComputerTool-v1.ps1"
:END
IF ERRORLEVEL 1 ECHO The script exited with an error.
PAUSE
