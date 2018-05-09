
IF not EXIST binaries.tmp (
mkdir binaries.tmp
move CLIENT_DATA\winexe binaries.tmp\
move CLIENT_DATA\files\opsi\deps binaries.tmp\
move CLIENT_DATA\files\opsi\dist.nt5 binaries.tmp\
move CLIENT_DATA\files\opsi\dist.win7 binaries.tmp\
move CLIENT_DATA\files\opsi\dist.win8 binaries.tmp\
move CLIENT_DATA\files\opsi\dist.win81 binaries.tmp\
move CLIENT_DATA\files\opsi\dist.win10 binaries.tmp\
move CLIENT_DATA\files\opsi\on_shutdown binaries.tmp\
move CLIENT_DATA\files\opsi\openssl binaries.tmp\
move CLIENT_DATA\files\opsi\opsiclientkiosk binaries.tmp\
move CLIENT_DATA\files\opsi\opsigina binaries.tmp\
move CLIENT_DATA\files\opsi\OpsiLoginBlocker binaries.tmp\
move CLIENT_DATA\files\opsi\opsi-notifier binaries.tmp\
move CLIENT_DATA\files\opsi\opsi-systray binaries.tmp\
move CLIENT_DATA\files\opsi\opsi-winst binaries.tmp\
move CLIENT_DATA\files\opsi\opsiclientdguard binaries.tmp\
move CLIENT_DATA\files\opsi\utilities binaries.tmp\
move CLIENT_DATA\files\opsi\vcredistx64 binaries.tmp\
)
xcopy ..\experimental\CLIENT_DATA\winexe CLIENT_DATA\ /F /Y /C /R 
xcopy ..\experimental\CLIENT_DATA\files\opsi\deps CLIENT_DATA\files\opsi\deps\ /F /Y /C /R /S
xcopy ..\experimental\CLIENT_DATA\files\opsi\dist.nt5 CLIENT_DATA\files\opsi\dist.nt5\ /F /Y /C /R /S
xcopy ..\experimental\CLIENT_DATA\files\opsi\dist.win7 CLIENT_DATA\files\opsi\dist.win7\ /F /Y /C /R /S
xcopy ..\experimental\CLIENT_DATA\files\opsi\dist.win8 CLIENT_DATA\files\opsi\dist.win8\ /F /Y /C /R /S
xcopy ..\experimental\CLIENT_DATA\files\opsi\dist.win81 CLIENT_DATA\files\opsi\dist.win81\ /F /Y /C /R /S
xcopy ..\experimental\CLIENT_DATA\files\opsi\dist.win10 CLIENT_DATA\files\opsi\dist.win10\ /F /Y /C /R /S
xcopy ..\experimental\CLIENT_DATA\files\opsi\on_shutdown CLIENT_DATA\files\opsi\on_shutdown\ /F /Y /C /R /S
xcopy ..\experimental\CLIENT_DATA\files\opsi\openssl CLIENT_DATA\files\opsi\openssl\ /F /Y /C /R /S
xcopy ..\experimental\CLIENT_DATA\files\opsi\opsiclientkiosk CLIENT_DATA\files\opsi\opsiclientkiosk\ /F /Y /C /R /S
xcopy ..\experimental\CLIENT_DATA\files\opsi\opsigina CLIENT_DATA\files\opsi\opsigina\ /F /Y /C /R /S
xcopy ..\experimental\CLIENT_DATA\files\opsi\OpsiLoginBlocker CLIENT_DATA\files\opsi\OpsiLoginBlocker\ /F /Y /C /R /S
xcopy ..\experimental\CLIENT_DATA\files\opsi\opsi-notifier CLIENT_DATA\files\opsi\opsi-notifier\ /F /Y /C /R /S
xcopy ..\experimental\CLIENT_DATA\files\opsi\opsi-systray CLIENT_DATA\files\opsi\opsi-systray\ /F /Y /C /R /S
xcopy ..\experimental\CLIENT_DATA\files\opsi\opsi-winst CLIENT_DATA\files\opsi\opsi-winst\ /F /Y /C /R /S
xcopy ..\experimental\CLIENT_DATA\files\opsi\opsiclientdguard CLIENT_DATA\files\opsi\opsiclientdguard\ /F /Y /C /R /S
xcopy ..\experimental\CLIENT_DATA\files\opsi\utilities CLIENT_DATA\files\opsi\utilities\ /F /Y /C /R /S
xcopy ..\experimental\CLIENT_DATA\files\opsi\vcredistx64 CLIENT_DATA\files\opsi\vcredistx64\ /F /Y /C /R /S

