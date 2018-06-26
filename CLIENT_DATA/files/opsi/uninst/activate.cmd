@echo off
echo "activate opsi-client-agent on %COMPUTERNAME% ?"
pause

..\opsi-winst\winst32.exe /batch uninstall.opsiscript "c:\opsi.org\log\activate_opsi-client-agent.log" /PARAMETER SRV_ON

echo "please reboot ...." 
pause
