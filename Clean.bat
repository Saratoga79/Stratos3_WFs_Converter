@echo off
color 09
MODE CON COLS=500 LINES=500
SetLocal EnableDelayedExpansion
SETLOCAL ENABLEEXTENSIONS
::debug
if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )
:vars
pushd "%~dp0"
set ver=v0.1
set car_ini=%~dp0
set kolor=%car_ini%tools\cecho.exe
cd %car_ini%
%car_ini%tools\apktool\adb.exe kill-server >nul 2>&1
TITLE ***  STRATOS 3 WATCHFACES CONVERTER %ver% by Saratoga ***
:clean
cd %car_ini%
%kolor% white dark_blue "***************************************************"
%kolor% white dark_blue "*                     Cleaning                    *"
%kolor% white dark_blue "***************************************************"
%kolor% white dark_green "Cleaning folders... This will take a whilw..."
del /f /s /q %car_ini%comp >nul 2>&1
del /f /s /q %car_ini%decom >nul 2>&1
del /f /s /q %car_ini%conv >nul 2>&1
del /f /s /q %car_ini%wfs >nul 2>&1
rmdir %car_ini%comp /s /q >nul 2>&1
rmdir %car_ini%decom /s /q >nul 2>&1
rmdir %car_ini%conv /s /q >nul 2>&1
del /f /s /q %car_ini%comp >nul 2>&1
del /f /s /q %car_ini%decom >nul 2>&1
del /f /s /q %car_ini%conv >nul 2>&1
del /f /s /q %car_ini%wfs >nul 2>&1
rmdir %car_ini%comp /s /q >nul 2>&1
rmdir %car_ini%decom /s /q >nul 2>&1
rmdir %car_ini%conv /s /q >nul 2>&1
cd %car_ini%
:finish
%kolor% white dark_green "Finish"
pause
exit
