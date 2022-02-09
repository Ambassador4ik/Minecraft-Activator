@echo off
@echo Minecraft for Windows 10 Activator by Ambassador4ik
@echo Attempting to kill Microsoft Store...
taskkill /IM "WinStore.App.exe" /F

IF EXIST "backup" goto :backupfound
IF NOT EXIST "backup" goto :backupnotfound

:backupnotfound
mkdir backup
mkdir backup\System32\
mkdir backup\SysWOW64\

:backupfound
IF EXIST "backup\System32\Windows.ApplicationModel.Store.dll" goto :32exist
IF NOT EXIST "backup\System32\Windows.ApplicationModel.Store.dll" goto :32notexist

:32notexist
TAKEOWN /F %windir%\System32\Windows.ApplicationModel.Store.dll
ICACLS %windir%\System32\Windows.ApplicationModel.Store.dll /grant %username%:F
move %windir%\System32\Windows.ApplicationModel.Store.dll backup\System32\

:32exist
IF EXIST "backup\SysWOW64\Windows.ApplicationModel.Store.dll" goto :64exist
IF NOT EXIST "backup\SysWOW64\Windows.ApplicationModel.Store.dll" goto :64notexist

:64notexist
TAKEOWN /F %windir%\SysWOW64\Windows.ApplicationModel.Store.dll
ICACLS %windir%\SysWOW64\Windows.ApplicationModel.Store.dll /grant %username%:F
move %windir%\SysWOW64\Windows.ApplicationModel.Store.dll backup\SysWOW64\

:64exist
copy.bat
pause