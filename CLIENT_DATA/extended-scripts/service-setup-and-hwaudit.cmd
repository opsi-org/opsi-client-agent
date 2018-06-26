@echo off
rem install opsi-client-agent without reboot
cd ..
call service_setup.cmd /u /noreboot
cd extended-scripts
dir
rem set hwaudit to setup

if exist "%programfiles(x86)%\opsi.org\opsi-client-agent\opsi-winst\winst32.exe" goto :64bitsystem
echo 32

"%programfiles%\opsi.org\opsi-client-agent\opsi-winst\winst32.exe" /batch setprod2setup.opsiscript /PARAMETER hwaudit
goto :end

:64bitsystem
echo 64

"%programfiles(x86)%\opsi.org\opsi-client-agent\opsi-winst\winst32.exe" /batch setprod2setup.opsiscript /PARAMETER hwaudit
:end
