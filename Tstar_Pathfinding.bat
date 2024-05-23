@echo off
title T* Pathfinding
REM List of Vectors
set "account1=Go to B within 0 Meters"
set "account2=Go to B within 100 Meters"
set "account3=Roam around"

REM Main menu
:menu
cls
echo T* Pathfinding for Deep Space Travel
echo.
echo Please select a Point:
echo 1. %account1%
echo 2. %account2%
echo 3. %account3%
echo Q. Quit
echo.

set /p choice=Enter your choice: 

REM Process user choice
if "%choice%"=="1" (
    call :displayAccount %account1%
) else if "%choice%"=="2" (
    call :displayAccount %account2%
) else if "%choice%"=="3" (
    call :displayAccount %account3%
) else if /i "%choice%"=="Q" (
    echo Goodbye!
    exit /b
) else (
    echo Invalid choice. Please try again.
    pause
    goto :menu
)

REM Display account details
:displayAccount
cls
echo Travel details for %1:
echo You are changing trajectory...

REM Simulate changing trajectory for 3 seconds at 30 FPS
set "duration=3"   REM Duration in seconds
set "fps=30"       REM Frames per second
set /a frames=%duration%*%fps%
set /a distance=0

REM Loop to simulate trajectory change
for /l %%i in (1,1,%frames%) do (
    set /a distance+=3  REM Simulated trajectory change
    echo - Current distance: %distance% meters
    timeout /t 1 /nobreak >nul  REM Wait for 1 second (1000 milliseconds)
)

echo.
echo Trajectory change complete!
pause
goto :menu
