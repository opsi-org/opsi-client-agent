rem --- Install opsi-client-agent
setlocal EnableDelayedExpansion
if "%client_agent_dir%"=="" set client_agent_dir=%script_drive%\opsi\opsi-client-agent

echo [%date% %time%] Starting opsi-client-agent installation as user %USERNAME%
if exist "%client_agent_dir%\install.conf" (
	echo [%date% %time%] install.conf found
	for /F "tokens=1* delims==" %%a IN (%client_agent_dir%\install.conf) do (
		set option=%%a
		set value=%%b
		if "!option: =!"=="service_address" set service_address=!value: =!
		if "!option: =!"=="client_id" set client_id=!value: =!
		if "!option: =!"=="client_key" set client_key=!value: =!
	)
)
if exist "%client_agent_dir%\files\opsi\cfg\config.ini" (
	echo [%date% %time%] config.ini found
	for /F "tokens=1* delims==" %%a IN (%client_agent_dir%\files\opsi\cfg\config.ini) do (
		set option=%%a
		set value=%%b
		if "!option: =!"=="service_address" set service_address=!value: =!
		if "!option: =!"=="client_hostname" set client_hostname=!value: =!
		if "!option: =!"=="client_domain" set client_domain=!value: =!
		if "!option: =!"=="client_key" set client_key=!value: =!
	)
	set client_id=!client_hostname!.!client_domain!
)

echo [%date% %time%] Executing: "%client_agent_dir%\files\opsi-script\opsi-script.exe" "%client_agent_dir%\setup.opsiscript" "%sys_drive%\opsi.org\log\opsi-client-agent.log" /batch /productid "opsi-client-agent" /opsiservice "%service_address%" /clientid "%client_id%" /username "%client_id%" /password "%client_key%" /parameter "bootimage"
"%client_agent_dir%\files\opsi-script\opsi-script.exe" "%client_agent_dir%\setup.opsiscript" "%sys_drive%\opsi.org\log\opsi-client-agent.log" /batch /productid "opsi-client-agent" /opsiservice "%service_address%" /clientid "%client_id%" /username "%client_id%" /password "%client_key%" /parameter "bootimage"
