@echo off
rem *****************************************************************
rem opsiclientd_event_starter.exe performs the following actions:
rem - read credentials from opsiclientd.conf
rem - connect to opsiclientd
rem - fire event on_shutdown (default=none) 
rem   to start product Installation on client
rem - wait for completion of installation (end of task)
rem *****************************************************************
echo Start opsi product installation ...
echo doinstall32.cmd started>C:\opsi.org\log\doinstall.log
cd "%ProgramFiles%\opsi.org\opsi-client-agent\on_shutdown" 
date /T >>C:\opsi.org\log\doinstall.log
rem cd "%ProgramFiles%\opsi.org\opsi-client-agent">>C:\opsi.org\log\doinstall.log
opsiclientd_event_starter.exe --event=on_shutdown>>C:\opsi.org\log\doinstall.log

