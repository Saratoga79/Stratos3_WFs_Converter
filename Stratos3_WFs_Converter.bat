@echo off
color 09
MODE CON COLS=500 LINES=500
SetLocal EnableDelayedExpansion
SETLOCAL ENABLEEXTENSIONS
::debug
if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )
:vars
pushd "%~dp0"
set ver=v0.3
set SUP=4.0.21.0
set car_ini=%~dp0
set kolor=%car_ini%tools\cecho.exe
%kolor% white dark_blue "***************************************************"
%kolor% white dark_blue "*      WATCHFACES CONVERTER %ver%  by Saratoga    *"
%kolor% white dark_blue "***************************************************"
:con_ini
%kolor% white dark_green "Creating working folders if needed..."
mkdir %car_ini%comp >nul 2>&1
mkdir %car_ini%conv >nul 2>&1
mkdir %car_ini%decom >nul 2>&1
mkdir %car_ini%decom\app >nul 2>&1
mkdir %car_ini%decom\decom >nul 2>&1
mkdir %car_ini%wfs >nul 2>&1
%kolor% white dark_green "Done"
:java
%kolor% white dark_blue "***************************************************"
%kolor% white dark_blue "*                       Java                      *"
%kolor% white dark_blue "***************************************************"
%kolor% white dark_green "Java path if exists..."
where java.exe
%kolor% white dark_green "Java version if exists..."
java.exe -version
:wfs_check
%kolor% white dark_blue "***************************************************"
%kolor% white dark_blue "*                      Check                      *"
%kolor% white dark_blue "***************************************************"
dir /s /b %car_ini%wfs\*apk | findstr /v .txt. >nul 2>&1
if %errorlevel% neq 0 goto err_wfs
%kolor% white dark_green "Reading WFs in wfs folder..."
dir %car_ini%wfs /b
:dec
%kolor% white dark_blue "***************************************************"
%kolor% white dark_blue "*                    Decompile                    *"
%kolor% white dark_blue "***************************************************"
%kolor% white dark_green "Cleaning folder. It may take some time..."
del /f /s /q %car_ini%decom\decom >nul 2>&1
del /f /s /q %car_ini%decom\app >nul 2>&1
del /f /s /q %car_ini%decom >nul 2>&1
rmdir %car_ini%decom\decom /s /q >nul 2>&1
rmdir %car_ini%decom\app /s /q >nul 2>&1
mkdir %car_ini%decom\app >nul 2>&1
mkdir %car_ini%decom\decom >nul 2>&1
for /r "%car_ini%wfs" %%x in (*apk) do copy "%%x" %car_ini%decom\app\ /y >nul 2>&1
if %errorlevel% neq 0 goto err_dec
:dec_dec
cd %car_ini%
%kolor% white dark_green "Deleting framework..."
java -Xmx1024m -jar %car_ini%tools\apktool\apktool.jar empty-framework-dir --force >nul 2>&1
%kolor% white dark_green "Decompiling WFs..."
for /r %car_ini%decom\app %%x in (*apk) do (
%kolor% white dark_green "Decompiling %%~nx..."
java -Xmx1024m -jar %car_ini%tools\apktool\apktool.jar d -f -k -m "%%x" -o "%car_ini%decom\decom\app\%%~nx"
if %errorlevel% neq 0 goto err_com
cd %car_ini%
%kolor% white dark_yellow "Adding Stratos 3 support to %%~nx..."
xcopy %car_ini%tools\support\%SUP% "%car_ini%decom\decom\app\%%~nx" /y /h /e /i >nul 2>&1
)
)
cd %car_ini%
%kolor% white dark_blue "***************************************************"
%kolor% white dark_blue "*                      Compile                    *"
%kolor% white dark_blue "***************************************************"
%kolor% white dark_green "Cleaning folder. It may take some time..."
del /f /s /q %car_ini%comp >nul 2>&1
rmdir %car_ini%comp /s /q >nul 2>&1
mkdir %car_ini%comp >nul 2>&1
cd %car_ini%decom\decom\app
for /d %%x in (*) do (
cd %car_ini%
%kolor% white dark_green "Compiling %%x..."
cd %car_ini%decom\decom\app
cd %car_ini%
java -Xmx1024m -jar %car_ini%tools\apktool\apktool.jar b -f "%car_ini%decom\decom\app\%%x" -o "%car_ini%comp\%%x\%%x.apk"
if %errorlevel% neq 0 pause
cd %car_ini%decom\decom\app
if %errorlevel% neq 0 goto err_com
)
)
cd %car_ini%
%kolor% white dark_blue "***************************************************"
%kolor% white dark_blue "*                      Signing                    *"
%kolor% white dark_blue "***************************************************"
cd %car_ini%comp
for /d %%x in (*) do (
cd %car_ini%comp
%kolor% white dark_green "Signing %%x..."
cd %car_ini%comp
cd %car_ini%comp
java -Xmx1024m -jar "%car_ini%tools\apktool\apksigner.jar" sign --key "%car_ini%tools\apktool\apkeasytool.pk8" --cert "%car_ini%tools\apktool\apkeasytool.pem" --in "%car_ini%comp\%%x\%%x.apk" --out "%car_ini%comp\%%x\S3-%%x.apk"
copy %car_ini%comp\%%x\S3-%%x.apk %car_ini%conv /y >nul 2>&1
del /f /s /q %car_ini%comp\%%~nx\S3-%%x.apk >nul 2>&1
if %errorlevel% neq 0 pause
cd %car_ini%
if %errorlevel% neq 0 goto err_com
)
)
cd %car_ini%
:con_check
%kolor% white dark_blue "***************************************************"
%kolor% white dark_blue "*              Checking connection                *"
%kolor% white dark_blue "***************************************************"
%car_ini%tools\adb.exe -d kill-server >nul 2>&1
%car_ini%tools\adb.exe -d start-server >nul 2>&1
%car_ini%tools\adb.exe -d get-state >nul 2>&1
if %errorlevel%==0 goto install
if %errorlevel%==1 goto open
:install
cd %car_ini%
%kolor% white dark_blue "***************************************************"
%kolor% white dark_blue "*                   Installing                    *"
%kolor% white dark_blue "***************************************************"
cd %car_ini%decom\decom\app
for /d %%x in (*) do (
%kolor% white dark_green "Installing %%x..."
%car_ini%tools\adb.exe -d install -r "%car_ini%conv\S3-%%x.apk"
)
)
cd %car_ini%
::%kolor% white dark_yellow Rebooting..."
::%car_ini%tools\adb.exe -d reboot
%car_ini%tools\adb.exe -d wait-for-device >nul 2>&1
%car_ini%tools\adb.exe -d kill-server >nul 2>&1
goto finish
:open
cd %car_ini%
start %car_ini%conv
goto finish
:finish
%kolor% white dark_green "Finish!"
pause
exit
:err_java
%kolor% white red "Java is not correctly installed"
pause
exit
:err_wfs
%kolor% white red "No WFs found in wfs folder"
pause
exit
:err_dec
%kolor% white red "Decompile error"
pause
exit