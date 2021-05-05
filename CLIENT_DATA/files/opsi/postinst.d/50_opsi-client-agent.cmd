rem --- Install opsi-client-agent
setlocal EnableDelayedExpansion

echo [%date% %time%] Starting opsi-client-agent installation as user %USERNAME%
if exist "%script_drive%\opsi\opsi-client-agent\install.conf" (
	echo [%date% %time%] install.conf found
	for /F "tokens=1* delims==" %%a IN (%script_drive%\opsi\opsi-client-agent\install.conf) do (
		set option=%%a
		set value=%%b
		if "!option: =!"=="service_address" set service_address=!value: =!
		if "!option: =!"=="client_id" set client_id=!value: =!
		if "!option: =!"=="client_key" set client_key=!value: =!
	)
)
if exist "%script_drive%\opsi\opsi-client-agent\files\opsi\cfg\config.ini" (
	echo [%date% %time%] config.ini found
	for /F "tokens=1* delims==" %%a IN (%script_drive%\opsi\opsi-client-agent\files\opsi\cfg\config.ini) do (
		set option=%%a
		set value=%%b
		if "!option: =!"=="service_address" set service_address=!value: =!
		if "!option: =!"=="client_hostname" set client_hostname=!value: =!
		if "!option: =!"=="client_domain" set client_domain=!value: =!
		if "!option: =!"=="client_key" set client_key=!value: =!
	)
	set client_id=!client_hostname!.!client_domain!
)

echo [%date% %time%] Executing: "%script_drive%\opsi\opsi-client-agent\files\opsi-script\opsi-script.exe" "%script_drive%\opsi\opsi-client-agent\setup.opsiscript" "%sys_drive%\opsi.org\log\opsi-client-agent.log" /batch /productid "opsi-client-agent" /opsiservice "%service_address%" /clientid "%client_id%" /username "%client_id%" /password "%client_key%" /parameter "bootimage"
"%script_drive%\opsi\opsi-client-agent\files\opsi-script\opsi-script.exe" "%script_drive%\opsi\opsi-client-agent\setup.opsiscript" "%sys_drive%\opsi.org\log\opsi-client-agent.log" /batch /productid "opsi-client-agent" /opsiservice "%service_address%" /clientid "%client_id%" /username "%client_id%" /password "%client_key%" /parameter "bootimage"
