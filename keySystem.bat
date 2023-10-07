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
    goto :blocked
) else (
    goto :verification2
)
:verification2
if exist "data" (
    goto :verification3
) else (
    mkdir data
    goto :verification3
)
:verification3
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
echo The key is: %key2%
echo %try% Tries left.
set /p key=
if "%key%"=="%key2%" (
    echo Succes! Logged. > data\key
    echo.
    echo Good key. When you will start the game you won't get this message again.
    echo.
    pause
    goto :x
) else (
    echo Wrong key: %key%. Restarting.
    goto :locked2
)
:locked2
    cls
set "try=2"
echo This program is locked.
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
    goto :x
) else (
    echo Wrong key: %key%. Restarting.
    goto :locked3
)
:locked3
    cls
set "try=1"
echo This program is locked.
echo The key is: %key2%
echo %try% Tries left.
set /p key=
if "%key%"=="%key2%" (
    echo Succes! Logged. > data\key
    echo.
    echo Good key. When you will start the game you won't get this message again.
    echo.
    pause
    goto :x
) else (
    echo Wrong key: %key%. Restarting.
    goto :blocked
)
:x
cls
echo Your key exist already!
pause
exit
:blocked
echo Blocked. > data\block
cls
echo The KeySystem is blocked.
echo Tries left: 0
pause