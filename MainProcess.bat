@echo off
set "arg1=%~1"
if not "%arg1%"=="confirmed" goto error

set msg_dns=DNS cache flushed successfully.
set msg_kill=Background applications terminated.
set msg_temp=Temporary files cleared.
set msg_perf=High performance mode activated.

:start
cls
echo ===========================================
echo            SYSTEM OPTIMIZER TOOL
echo                 Version 1.0
echo ===========================================
echo 1. Flush DNS            (Clears network cache)
echo 2. Terminate background  (Ends heavy processes)
echo 3. Clear temporary files (Deletes junk files)
echo 4. Enable High Performance (Optimizes power plan) (Use at own responsibility)
echo 5. Exit
echo.
echo For detailed information on each feature 
echo please check the README.txt file.
echo.

set /p choice=Select an option (1-5): 
if "%choice%"=="1" goto dns
if "%choice%"=="2" goto kill
if "%choice%"=="3" goto temp
if "%choice%"=="4" goto perf
if "%choice%"=="5" exit
goto start

:dns
echo Flushing DNS...
ipconfig /flushdns >nul & ipconfig /release >nul & ipconfig /renew >nul
echo %msg_dns%
pause
goto start

:kill
echo Terminating processes...
taskkill /f /im chrome.exe /t >nul 2>&1
taskkill /f /im msedge.exe /t >nul 2>&1
taskkill /f /im OneDrive.exe /t >nul 2>&1
echo %msg_kill%
pause
goto start

:temp
echo Clearing temporary files...
del /s /f /q %temp%\*.* >nul 2>&1
for /d %%x in (%temp%\*) do rd /s /q "%%x" >nul 2>&1
echo %msg_temp%
pause
goto start

:perf
echo Applying high performance settings...
powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
echo %msg_perf%
pause
goto start

:error
echo [ERROR] Please launch 'SystemOptimizer' (VBScript File) first.
pause
exit