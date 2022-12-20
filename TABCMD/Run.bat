@echo off

echo ---------------------Python + TABCMD + BATCH PDF Generator---------------------------------

Call "C:\Program Files\Whereever\Python38\python.exe" "python_start.py"

echo ---------------------Clean Filenames and Email---------------------------------
Call "C:\Program Files\Whereever\Python38\python.exe" "python_clean&email.py"

pause 