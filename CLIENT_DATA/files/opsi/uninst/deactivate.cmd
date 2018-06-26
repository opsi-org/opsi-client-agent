@echo off
echo "deactivate opsi-client-agent on %COMPUTERNAME% ?"
pause

..\opsi-winst\winst32.exe /batch uninstall.opsiscript "c:\opsi.org\log\deactivate_opsi-client-agent.log" /PARAMETER SRV_OFF

echo "please reboot ...." 
pause
