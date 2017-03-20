@echo off
title The Sword of Fire DEVELOPER COPY
:titlescreen
echo The Sword of Fire, written by Knucklesfan and given as a preview for code on the Knucklesfan Videos channel.
echo WARNING: This game uses your computer clock to determine things such as time in game.
echo A little warning, if you are a programmer, viewing this build, please avoid messing with %tempadd% during battle sequences. 
echo This message will be removed once the game gets into beta.
echo Also, if you are reading this, please remeber to leave comments on the code in this format:
echo COMMENT> Knucklesfan: This is an example comment!
echo You are right now using a developer copy, and most of the things in here will most likely be cleaned up before release.
echo Enter Name
set /p name=
set pick=7
pause >nul
echo The save feature is not finished. Scraps of it may be seen in the code
echo COMMENT> Knucklesfan: I have noticed that the varibles are not setting up correctly. I am looking into it.
pause >nul
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
echo LEVEL SELECT
echo if you are getting here in the final game, that means that I messed up somewhere. Check line 69 for numbers. If you want the game to play normally, just press 1.
echo Select a level
set /p spd=choice1~20
if %spd%==1 goto check1
if %spd%==2 goto cont1
if %spd%==3 goto guard
if %spd%==4 goto give
if %spd%==5 goto attack1
if %spd%==6 set flee
if %spd%==7 goto unused
if %spd%==8 goto unused
if %spd%==9 goto unused
if %spd%==10 goto unused
if %spd%==11 goto unused
if %spd%==12 goto unused
if %spd%==11 goto unused
if %spd%==12 goto unused
if %spd%==13 goto unused
if %spd%==14 goto unused
if %spd%==15 goto unused
cls
echo CHAPTER 0: EPILOUGE
pause >nul
cls
echo Checkpoint!
set cpoint=unused
:check1
cls
echo You walk into a bar in the downtoun area of your hometown. There is a man behind the bar.
timeout %spd%
cls
echo [Man] The bar's closed.
timeout %spd%
cls
echo [You] But the door was open, so I reasoned that it would be open.
timeout %spd%
cls
echo [You] I just needed somewhere to sleep for the night. Do you have a room to stay in?
timeout %spd%
cls
echo [Man] Sadly not. Most of the upper area was destroyed during a fire years ago. Now there is nothing of the upstairs.
timeout %spd%
cls
echo [Man] However, I am quite sure that there is a room in the inn, down by March Island. It's only a few miles from here.
timeout %spd%
cls
echo CHOOSE:
echo 1. Bargain with man 
echo 2. Head to March Island
set /p man=choice1~2
if %man%==1 goto man
if %man%==2 goto horse
:man
cls
echo [You] I have a sleeping bag on my horse. May I please rest in your bar? I will not be a disturbance.
timeout %spd%
cls
echo [Man] I do not have much room, but I will allow you to join me for supper. In the morning you must leave. I cannot have visitors when my wife returns.
timeout %spd%
cls
echo You and the man eat dinner and rest. In the morning, you leave to head towards March Island.
timeout %spd%
cls
goto cont1
:horse
cls
echo [You] Well than, I best be off. I will head towards March Island. Thank you for your hospitality.
timeout %spd%
cls
echo You leave the bar, and mount your horse. You head towards the town of March Island. You are mildly hungry.
set hunger=90
timeout %spd%
cls
goto cont1
:cont1
echo Checkpoint!
set cpoint=cont1
timeout %spd%
cls
echo After a few hours of riding your horse, you come upon the bride to March Island. A guard keeper has beaten you to the location
timeout %spd%
cls
echo [Guard] Hello sir, please show some identification.
timeout %spd%
cls
echo You reach into your pocket. You retreve the IDENTIFICATION.
timeout %spd%
cls
echo [Guard] so your name is %name%, correct?
timeout %spd%
cls
echo [You] Correct.
timeout %spd%
cls
echo [Guard] Well, I am afraid to inform you, but you are wanted to a case of capital murder. I will need to take you to the king imedietly.
timeout %spd%
cls
echo You are clueless to what he is talking about. Has somebody stolen your identity?d
timeout %spd%
cls
echo CHOOSE:
echo 1. Fight Guard
echo 2. Give up.
set /p man=choice1~2
if %man%==1 goto give
if %man%==2 goto guard
:guard
echo You pull out your knife. The guard unsheives a sword.
timeout %spd%
cls
echo You are outnumbered, as more guards come in.
timeout %spd%
cls
echo More archers come from the edges of the walls.
timeout %spd%
cls
echo Still fight?
timeout %spd%
cls
echo CHOOSE:
echo 1. Fight Guard
echo 2. Give up.
set /p man=choice1~2
if %man%==1 goto death
if %man%==2 goto give
:death
echo You decide to fight to the death. You attack the guard.
timeout %spd%
cls
echo A guard comes running towards you at incredible speeds.
timeout %spd%
cls
echo You dodge his attacks, but as you avoid, another guard stabs you through the chest.
timeout %spd%
cls
echo You fall to the ground. Blood covers your body.
echo You scream in one last agonizing yell.
goto :gameover

:give
cls
echo You decide to give up.
timeout %spd%
cls
echo The guard puts handcuffs on you, and drags you towards City Square.
timeout %spd%
cls
echo [You] Why am I convicted of murder?
timeout %spd%
cls
echo [Guard] You honestly don't know?
timeout %spd%
cls
echo [You] No?
timeout %spd%
cls
echo [Guard] You killed the king.
timeout %spd%
cls
echo The guard continued to drag you along. And you remebered what you did.
timeout %spd%
cls
echo END OF CHAPTER!
echo STATS:
echo Health: %hp% - Not upgradable.
echo Level: %lvl% - Not upgradable.
echo Hunger: %hunger% - upgradable.
echo Armor: %armor% - Not upgradable.
echo Upgrade all upgradable stats?
echo 1.Yes
echo 2.No
set /p end1=choice1~2
if %end1%==1 set hunger=100
if %end1%==2 goto next1
:next1
echo Save?
echo 1.Yes
echo 2.No
set /p end2=choice1~2
if %end2%==1 echo "chap1" >> save.txt
if %end2%==2 goto chap1
:chap1
echo Chapter 1: An Unexpected Murder
pause >nul
cls
echo A few months earlier...
timeout %spd%
cls
echo You are walking down a dark road. As you walk, a man bumps into you. He is clearly drunk.
timeout %spd%
cls
echo He stumbles around for a bit, and nearly falls into a creek. You grab the man's hand, and pull him up from the creek in which he nearly fell into.
cls
timeout %spd%
echo [Drunken Man] You know something, I used to be *hic* a king. This little town called-
timeout %spd%
cls
echo The man cuts himself off and falls down. He is now unconsious, and you decide to haul his body to the bar, just up ahead, to see if anybody knew who he was.
timeout %spd%
cls
echo [You] Hello?
timeout %spd%
cls
echo [Man] Oh hello there. Is your friend dead or something.
timeout %spd%
cls
echo [Man] He was in here a minute ago, he drank, well, alot. Rambling on about how he was the king of some island called March Island. Sounds like a real lunatic to me.
timeout %spd%
cls
echo [You] Well, this man confronted me at the creek. Can I leave him here until he wakes up?
timeout %spd%
cls
echo [Man] Sorry, but I have to close up shop. We close at %t% and I need to clean the bar.
timeout %spd%
cls
echo [You] Oh. I am dearly sorry.
timeout %spd%
cls
echo You walk outside. You think about the attacks on your kingdom.
timeout %spd%
cls
echo Then, out of nowhere, You see archers hiding in the trees. They begin to shoot towards in your direction
timeout %spd%
cls
echo You are not outnumbered. You retrieve your pocket knife.
timeout %spd%
cls
echo Fight back or flee?
echo 1.Fight Back
echo 2.Drop that dead body, and get out of there!
set /p end1=choice1~2
if %end1%==1 goto attack1
if %end1%==2 goto flee
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
echo Enemy Health: %enemyhealth% Your health: %health%
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
echo 1.%eneny1%
echo 2.%eneny2%
echo 3.%eneny3%
echo 4.Back
set /p attack=choice1~4
if %asm%==1 goto attackhit
if %asm%==2 goto attackhit2
if %asm%==3 goto attackhit3
if %asm%==4 goto mainmenu1
:attackhit
cls
set tempadd=%enemyhealth%-%attack%
set enemyhealth=%tempadd%
echo You attack %enemy1%.
echo Enemy now has %enemyhealth% remaining.
timeout %spd%
set tempadd=%hp%-%enemyattack%
set hp=%tempadd%
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


