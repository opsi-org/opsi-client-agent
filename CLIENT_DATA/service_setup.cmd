@echo off
cls
echo Starting oca-installation-helper.exe, please wait...
if "%~1" == "/u" (
	call %~dp0\oca-installation-helper.exe --non-interactive
) else (
	call %~dp0\oca-installation-helper.exe
)
