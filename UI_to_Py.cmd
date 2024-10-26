@echo off
if not exist "%1" (
 echo No file selected! Quitting...
 timeout /t 3 /nobreak > nul
 exit /b
)
py -m PyQt5.uic.pyuic -x "%1" -o "%~dp1%~n1.py"
pause
