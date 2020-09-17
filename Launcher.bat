@echo off
color 09
MODE CON COLS=500 LINES=500
SetLocal EnableDelayedExpansion
SETLOCAL ENABLEEXTENSIONS
rem debug
if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )
:vars
pushd "%~dp0"
set car_ini=%~dp0
set kolor=%car_ini%tools\cecho.exe
reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" >nul && set OS=32BIT || set OS=64BIT
if %OS%==32BIT set vOS=x86
if %OS%==64BIT set vOS=x64
%kolor% white dark_blue "***************************************************"
%kolor% white dark_blue "*    WATCHFACES CONVERTER LAUNCHER by Saratoga    *"
%kolor% white dark_blue "***************************************************"
:updates
%kolor% white dark_blue "***************************************************"
%kolor% white dark_blue "*               Tool Update (%vOS%)                 *"
%kolor% white dark_blue "***************************************************"
%kolor% white dark_yellow "Checking for updates..."
%car_ini%tools\svn\%vOS%\svn cleanup %car_ini%
%car_ini%tools\svn\%vOS%\svn checkout https://github.com/Saratoga79/Stratos3_WFs_Converter/branches/Stratos3_WFs_Converter %car_ini%
%kolor% white dark_yellow "Updating if needed..."
%car_ini%tools\svn\%vOS%\svn update %car_ini%
%kolor% white dark_yellow "Launching Converter Tool..."
start /wait /max Stratos3_WFs_Converter.bat
exit