@echo off
if not exist "%1" (
 echo No file selected! Quitting...
 timeout /t 3 /nobreak > nul
 exit /b
)
cd %~dp1
python -m PyQt5.uic.pyuic -x "%1" -o "%~n1.py"
pause
