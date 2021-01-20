@echo off

set script_drive=o:
if not %~d0%==\\ (
	set script_drive=%~d0%
	goto :mapped
)
set unc=%~f0%
for /f "tokens=1,2,* delims=\" %%a in ("%unc%") do set server=%%a&set share=%%b&set script=%%c

net use %script_drive% \\%server%\%share% /persistent:no
%script_drive%
cd %script%\..

:mapped
if %1!==/u! goto startwork
if %2!==/u! goto startwork
echo .
echo   Aktueller PC: %COMPUTERNAME%
echo   You are at PC: %COMPUTERNAME%
echo .
echo   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo   !!                                                                    !!
echo   !!           Zum Starten der opsi-client-agent Installation           !!
echo   !!             druecken Sie bitte eine beliebige Taste                !!
echo   !!        Zum Abbrechen schliessen Sie einfach dieses Fenster         !!
echo   !!                                                                    !!
echo   !!          To start the installation of the opsi-client-agent        !!
echo   !!                        just press any key                          !!
echo   !!                 To cancel just close this window                   !!
echo   !!                                                                    !!
echo   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo .
pause

:startwork
if exist c:\opsi.org\usertmp goto :startwinst
mkdir c:\opsi.org\usertmp
mkdir c:\opsi.org\log
:startwinst
if not exist files\opsi\opsi-winst\winst32.exe goto :winstmissing
xcopy /s/y/i files\opsi\*.* c:\opsi.org\usertmp\opsi
rem create powershell script to start opsi-script elevated ....
echo $opsiscript = "c:\opsi.org\usertmp\opsi\opsi-winst\winst32.exe" > c:\opsi.org\usertmp\ocasub.ps1
echo $osargs1 = "/batch","c:\opsi.org\usertmp\opsi\setup.opsiscript","c:\opsi.org\log\opsi-client-agent.log","/PARAMETER INSTALL:CREATE_CLIENT:REBOOT\" >> c:\opsi.org\usertmp\ocasub.ps1
echo $osargs2 = "/batch","c:\opsi.org\usertmp\opsi\setup.opsiscript","c:\opsi.org\log\opsi-client-agent.log","/PARAMETER INSTALL:CREATE_CLIENT:NOREBOOT" >> c:\opsi.org\usertmp\ocasub.ps1
if %1!==/noreboot! goto noreboot
if %2!==/noreboot! goto noreboot
echo start-process -FilePath $opsiscript -argumentlist $osargs1  -verb runas -Wait >> c:\opsi.org\usertmp\ocasub.ps1
goto :endwinst
:noreboot
echo start-process -FilePath $opsiscript -argumentlist $osargs2  -verb runas -Wait >> c:\opsi.org\usertmp\ocasub.ps1
:endwinst
powershell -ExecutionPolicy Bypass -File c:\opsi.org\usertmp\ocasub.ps1

echo   Cleanup
del /q /s /f c:\opsi.org\usertmp\opsi\*.*

if %1!==/u! goto :exit
if %2!==/u! goto :exit

echo .
echo   Installation abgeschlossen
echo   Installation completed
echo .
pause
goto :exit

:winstmissing
echo .
echo   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo   !!                                                                    !!
echo   !!                      opsi- Winst not found                         !!
echo   !!    (File "files\opsi\opsi-winst\winst32.exe" does not exist)       !!
echo   !!                       Installation aborted                         !!
echo   !!                                                                    !!
echo   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo .

if %1!==/u! goto :exit
if %2!==/u! goto :exit

pause
goto :exit 

:exit
