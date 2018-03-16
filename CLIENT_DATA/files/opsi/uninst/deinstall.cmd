@echo off
echo "Deinstallation of opsi-client-agent is dangerous !"
echo "Use deactivation instead."
echo ""
echo "Deinstallieren des opsi-client-agent ist Risikoreich !"
echo "Verwenden Sie stattdessen die Deaktivierung"
echo ""
echo "opsi-client-agent deinstallation on %COMPUTERNAME% ?"
echo ""
echo "Programm Verlassen mit Strg-C - Weiter mit Enter"
echo ""
echo "Exit with Ctrl-C - Continue with Enter"
pause
c:
if not exist "%programfiles%\opsi.org\opsi-client-agent\winst32.exe" goto :x64bit
cd "%programfiles%\opsi.org\opsi-client-agent\uninst"
..\opsi-winst\winst32.exe /batch uninstall.opsiscript "c:\opsi.org\log\deinstall_opsi-client-agent.log" /PARAMETER DEINSTALL
goto :end

:x64bit
cd "%programfiles(x86)%\opsi.org\opsi-client-agent\uninst"
..\opsi-winst\winst32.exe /batch uninstall.opsiscript "c:\opsi.org\log\deinstall_opsi-client-agent.log" /PARAMETER DEINSTALL

:end
echo "Please reboot your computer"
echo ""
echo "Bitte den Rechner neu starten"

pause

