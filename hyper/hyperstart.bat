@ECHO off
:top
CLS
ECHO Choose a shell:
ECHO [1] cmd
ECHO [2] git
ECHO [3] bash
ECHO [4] PowerShell
ECHO [5] Python
ECHO.
ECHO [6] exit
ECHO.

CHOICE /N /C:1234567 /M "> "
CLS
IF ERRORLEVEL ==6 GOTO end
IF ERRORLEVEL ==5 python 
IF ERRORLEVEL ==4 powershell
IF ERRORLEVEL ==3 bash
IF ERRORLEVEL ==2 "C:\Program Files\Git\bin\bash.exe"
IF ERRORLEVEL ==1 cmd

CLS
ECHO Switch or exit?
ECHO [1] Switch
ECHO [2] Exit

CHOICE /N /C:12 /D 2 /T 5 /M "> "
IF ERRORLEVEL ==2 GOTO end
IF ERRORLEVEL ==1 GOTO top

:end
