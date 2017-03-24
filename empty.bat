@echo off
title TEMPLATE GAME
:titlescreen
echo Replace me with the name of your game!
echo Enter Name
set /p name=
set pick=7
goto start
:start
cls
set hp=350
set /a pick=%pick% -1
set lvl=1
set attack=50
set armor=0
set hunger=100
set h=%TIME:~0,2%
set m=%TIME:~3,2%
set/a m2="m+5"
set t2=%h%:%m2%
set t=%h%:%m%
set /a ac=(10 +((%lvl% /2) +%armor%))
set setscore=%pick% +10
echo What will your %pick%th highest stat be?
echo 1 Strength
echo 2 Constitution
echo 3 Dexterity
echo 4 Intelligence
echo 5 Wisdom
echo 6 Charisma
set /p chsc=choice1~6
if %chsc%==1 set /a str=(%setscore% +(%lvl% /2))
if %chsc%==2 set /a con=(%setscore% +(%lvl% /2))
if %chsc%==3 set /a dex=(%setscore% +(%lvl% /2))
if %chsc%==4 set /a int=(%setscore% +(%lvl% /2))
if %chsc%==5 set /a wis=(%setscore% +(%lvl% /2))
if %chsc%==6 set /a cha=(%setscore% +(%lvl% /2))
if %pick%==0 goto charstats
if %pick%==0 cls
cls
echo Pick your text speed
set /p spd=choice1~20
if %spd%==1 set spd=1
if %spd%==2 set spd=2
if %spd%==3 set spd=3
if %spd%==4 set spd=4
if %spd%==5 set spd=5
if %spd%==6 set spd=6
if %spd%==7 set spd=7
if %spd%==8 set spd=8
if %spd%==9 set spd=9
if %spd%==10 set spd=10
if %spd%==11 set spd=11
if %spd%==12 set spd=12
if %spd%==11 set spd=11
if %spd%==12 set spd=12
if %spd%==13 set spd=13
if %spd%==14 set spd=14
if %spd%==15 set spd=15
pause >nul
rem Add your code here. Follow the tutorial for information on how to do it.
echo Write your code here!
timeout %spd%
cls
goto unused





































:attack1
set enemyhealth=100
set enemy1=Archer Brigrade
set enemy2=none
set enemy3=none
set enemy4=unused
set tempadd=0
set enemyattack=60
cls
:mainmenu1
echo %enemy1% attacks!
echo Enemy Health: %enemyhealth% Your health: %hp%
echo Moves
echo 1.Attack
echo 2.Magic or Special Attack
echo 3.Items
echo 4.Flee
set /p moves=choice1~4
if %moves%==1 goto attackenemy
if %moves%==2 goto nousable
if %moves%==3 goto nousable
if %moves%==4 goto noflee
:nousable
cls
echo No usable attacks!
timeout %spd%
cls
goto :mainmenu1
:noflee
cls
echo Cannot flee this battle!
timeout %spd%
cls
goto :mainmenu1
:attackenemy
cls
echo Attack which enenmy?
echo 1.%enemy1%
echo 2.%enemy2%
echo 3.%enemy3%
echo 4.Back
set /p asm=choice1~4
if %asm%==1 goto attackhit
if %asm%==2 goto attackhit2
if %asm%==3 goto attackhit3
if %asm%==4 goto mainmenu1
:attackhit
cls
set /a tempadd=%enemyhealth%-%attack%
set /a enemyhealth=%tempadd%
echo You attack %enemy1%.
echo Enemy now has %enemyhealth% remaining.
timeout %spd%
set /a tempadd=%hp%-%enemyattack%
set /a hp=%tempadd%
echo %enemy1% attacks! %enemyattack% damage dealt!
echo You now have %hp% remaining!
goto mainmenu1
:unused:
echo For now, this menu is unused. Sadly, this is an error, and I will have to send you back to the title screen. Sorry ):
pause
cls
goto titlescreen


















































:gameover
echo You died! Try again?
echo WARNING! Save feature is not completed yet. Please remeber that if you quit now, you cannot restore from the last checkpoint.
echo CHOOSE:
echo 1. Retry from Last save point.
echo 2. Give up.
set /p man=choice1~2
if %man%==1 goto %cpoint%
if %man%==2 goto exit
:exit
echo Thank you for playing! Game Over!
timeout %spd%
cls


