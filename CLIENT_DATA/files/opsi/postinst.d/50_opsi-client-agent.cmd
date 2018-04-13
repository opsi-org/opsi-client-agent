
rem echo [%date% %time%] copy 64 Bit cmd.exe for use under 32 Bit
rem copy "%SYSTEMROOT%\system32\cmd.exe" "%SYSTEMROOT%\cmd64.exe"
rem --- Install opsi-client-agent
echo [%date% %time%] Starting opsi-client-agent installation as user %USERNAME%
echo [%date% %time%] Executing: "%script_drive%\opsi\opsi-client-agent\files\opsi\opsi-winst\winst32.exe" /batch "%script_drive%\opsi\opsi-client-agent\files\opsi\setup411.opsiscript" %sys_drive%\opsi.org\log\opsi-client-agent.log /PARAMETER INSTALL:BOOTIMAGE
"%script_drive%\opsi\opsi-client-agent\files\opsi\opsi-winst\winst32.exe" /batch "%script_drive%\opsi\opsi-client-agent\files\opsi\setup411.opsiscript" %sys_drive%\opsi.org\log\opsi-client-agent.log /PARAMETER INSTALL:BOOTIMAGE

