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
if exist c:\opsi.org\tmp goto :startwinst
mkdir c:\opsi.org\tmp
mkdir c:\opsi.org\log
:startwinst
if not exist files\opsi\opsi-winst\winst32.exe goto :winstmissing
xcopy /s/y/i files\opsi\*.* c:\opsi.org\tmp\opsi
rem copy "%comspec%" "%systemroot%\cmd64.exe"
if %1!==/noreboot! goto noreboot
if %2!==/noreboot! goto noreboot
"c:\opsi.org\tmp\opsi\opsi-winst\winst32.exe" /batch c:\opsi.org\tmp\opsi\setup.opsiscript c:\opsi.org\log\opsi-client-agent.log /PARAMETER INSTALL:CREATE_CLIENT:REBOOT
goto :endwinst
:noreboot
"c:\opsi.org\tmp\opsi\opsi-winst\winst32.exe" /batch c:\opsi.org\tmp\opsi\setup.opsiscript c:\opsi.org\log\opsi-client-agent.log /PARAMETER INSTALL:CREATE_CLIENT:NOREBOOT
:endwinst

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
