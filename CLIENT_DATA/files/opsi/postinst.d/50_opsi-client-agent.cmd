rem --- Install opsi-client-agent
echo [%date% %time%] Starting opsi-client-agent installation as user %USERNAME%
echo [%date% %time%] Executing: "{{client_agent_dir}}\oca-installation-helper.exe" "--service-address "!service_address!" --client-id "!client_id!" --service-username "!client_id!" --service-password "!client_key!" --bootimage"
"{{client_agent_dir}}\oca-installation-helper.exe" "--service-address "!service_address!" --client-id "!client_id!" --service-username "!client_id!" --service-password "!client_key!" --bootimage"
