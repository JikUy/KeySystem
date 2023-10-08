@echo off
REM By ------- JikUy. KEY SYSTEM. -------
title Key_System
color 03
:sets
REM ------- Change key HERE. ONLY CHANGE key2. But you can change title and color too. -------
set "key2=MyKey876"
set "try=3"
REM ------- Do not change anything else. -------
:verification
if exist "data\block" (
    set b=2
    goto :blocked2
) else (
    goto :verification2
)
:verification2
if exist "%temp%\dy676fm.png" (
    set b=6
    goto :blocked2
) else (
    goto :verification67
)
:verification67
if exist "%appdata%\c0jm5d.beb7m" (
    set b=10
    goto :blocked2
) else (
    goto :verification38
)
:verification38
if exist "data\try3" (
    set b=10
    goto :locked3
) else (
    goto :verification39
)
:verification39
if exist "data\try2" (
    set b=10
    goto :locked2
) else (
    goto :verification40
)
:verification40
if exist "data\try1" (
    set b=10
    goto :locked
) else (
    goto :verification3
)
:verification3
if exist "data" (
    goto :verification4
) else (
    mkdir data
    attrib +h data
    goto :verification4
)
:verification4
if exist "data\key" (
    goto :x
) else (
    goto :locked
)

:rs
cls
echo Wrong key!
goto :locked
:locked
    cls
echo This program is locked.
REM ------- You can delete the message that says what the key is. -------
echo The key is: %key2%
echo %try% Tries left.
set /p key=
if "%key%"=="%key2%" (
    echo Succes! Logged. > data\key
    echo.
    echo Good key. When you will start the game you won't get this message again.
    echo.
    pause
    goto :x2
) else (
    echo 3 tries left. > data\try1
    echo Wrong key: %key%. Restarting.
    goto :locked2
)
:locked2
    cls
set "try=2"
echo This program is locked.
REM ------- You can delete the message that says what the key is. -------
echo The key is: %key2%
echo %try% Tries left.
set /p key=
if "%key%"=="%key2%" (
    if exist "data\block" (
    del block
    ) else (
    goto :nextStep2
    )
    :nextStep2
    echo Succes! Logged. > data\key
    echo.
    echo Good key. When you will start the game you won't get this message again.
    echo.
    pause
    goto :x2
) else (
    echo 2 tries left. > data\try2
    echo Wrong key: %key%. Restarting.
    goto :locked3
)
:locked3
    cls
set "try=1"
echo This program is locked.
REM ------- You can delete the message that says what the key is. -------
echo The key is: %key2%
echo %try% Tries left.
set /p key=
if "%key%"=="%key2%" (
    echo Succes! Logged. > data\key
    echo.
    echo Good key. When you will start the game you won't get this message again.
    echo.
    pause
    goto :x2
) else (
    echo 1 tries left. > data\try3
    echo Wrong key: %key%. Restarting.
    goto :blocked
)
:blocked
echo Blocked. > %temp%\dy676fm.png
echo Blocked. > data\block
cls
echo The KeySystem is blocked.
echo Tries left: 0
pause
exit
:blocked2
echo Blocked. > %appdata%\c0jm5d.beb7m
echo Blocked. > %temp%\block
echo Blocked. > data\block
cls
echo The KeySystem is blocked.
echo Tries left: 0
echo Bypass detected. %b%/10
pause
exit
:x
:x2
REM ------------ YOUR MAIN SCRIPT HERE ------------
REM ------------ DO NOT DELETE THE :x -------------
REM ------------ DO NOT DELETE THE :x2 ------------
cls
echo YOUR MAIN SCRIPT HERE
pause
