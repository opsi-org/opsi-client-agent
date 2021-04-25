rem --- Install opsi-client-agent
echo [%date% %time%] Starting opsi-client-agent installation as user %USERNAME%
IF EXIST %script_drive%\opsi\opsi-client-agent\files\opsi\cfg\config.ini (
	FOR /F "tokens=1* delims==" %%A IN (%script_drive%\opsi\opsi-client-agent\files\opsi\cfg\config.ini) DO (
		IF "%%A"=="bootserver" set bootserver=%%B
		IF "%%A"=="hostname" set hostname=%%B
		IF "%%A"=="dnsdomain" set dnsdomain=%%B
		IF "%%A"=="pckey" set pckey=%%B
	)
	set service_address=%bootserver%
	set client_id=%hostname%.%dnsdomain%
	set client_key=%pckey%
)
IF EXIST %script_drive%\opsi\opsi-client-agent\install.conf (
	FOR /F "tokens=1* delims==" %%A IN (%script_drive%\opsi\opsi-client-agent\install.conf) DO (
		IF "%%A"=="service_address" set service_address=%%B
		IF "%%A"=="client_id" set client_id=%%B
		IF "%%A"=="client_key" set client_key=%%B
		IF "%%A"=="service_password" set client_key=%%B
	)
)

echo [%date% %time%] Executing: "%script_drive%\opsi\opsi-client-agent\files\opsi-script\opsi-script.exe" /batch "%script_drive%\opsi\opsi-client-agent\setup.opsiscript" %sys_drive%\opsi.org\log\opsi-client-agent.log /parameter %service_address%||%client_id%||%client_key%||bootimage
"%script_drive%\opsi\opsi-client-agent\files\opsi-script\opsi-script.exe" /batch "%script_drive%\opsi\opsi-client-agent\setup.opsiscript" %sys_drive%\opsi.org\log\opsi-client-agent.log /parameter %service_address%||%client_id%||%client_key%||bootimage
