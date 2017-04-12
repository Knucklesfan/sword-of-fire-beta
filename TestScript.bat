@echo off
echo Welcome to my test script!
pause
set /p save=<savetest.txt
pause
echo Would you like to load a save?
set /p chsc=choice1~6
if %chsc%==1 goto %save%
if %chsc%==2 timeout 0
echo Would you rather eat a taco or eat a pizza?
set /p taco=
if %taco%==pizza goto pizza
if %taco%==taco goto taco
:taco
echo Yeah. Me too.
echo taco> savetest.txt
pause
goto close
:pizza
echo Haters gonna hate.
echo pizza> savetest.txt
pause
:close