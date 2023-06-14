# Changelog

## [4.2.0.61-1] - 2023-06-14

### Fixed
- Update opsiclientd to 4.2.0.149, fixing bug in logging while resolving product cache inconsistencies (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.60-2] - 2023-06-06

### Fixed
- Fixed missing single quote in powershell call (Nils Doerrer <n.doerrer@uib.de>)


## [4.2.0.60-1] - 2023-06-06

### Changed
- Update opsi-script to 4.12.9.1 (Nils Doerrer <n.doerrer@uib.de>)
- Update opsi-script-common files to 4.12.4.45 (Nils Doerrer <n.doerrer@uib.de>)
- Update opsi-notifier to 4.2.0.11 (codesigned)
- Update opsi-systray to 4.2.0.0 (codesigned)

## [4.2.0.59-1] - 2023-05-31

### Fixed
- Fixed caching for special case sync_products_with_actions_only = False"

### Changed
- Update opsiclientd to 4.2.0.148 - see fixed (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.58-1] - 2023-05-26

### Fixed
- Fixed installation in WAN-Mode (Nils Doerrer <n.doerrer@uib.de>)
- Fixed caching issue in case a directory is exchanged by a file in package update (Jan Schneider <j.schneider@uib.de>)

### Changed

- Showing package versions in opsiclientd events in timeline (Nils Doerrer <n.doerrer@uib.de>)
- Update opsiclientd to 4.2.0.147 - see fixed

## [4.2.0.57-2] - 2023-05-22

### Changed

- Improved robustness of setup on slow machines and with antivir software

## [4.2.0.57-1] - 2023-05-15

### Changed

- Update opsiclientd to 4.2.0.146 - more robust event handling with login-events, never decreasing ServicesPipeTimeout on setup (Nils Doerrer <n.doerrer@uib.de>)
- Aborting with isfatalerror in case that extracted new opsiclientd dir cannot be moved

## [4.2.0.56-2] - 2023-05-10

### Changed

- Avoiding reboot at stuck opsi-client-agent upgrade - force restarting opsiclientd instead (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.56-1] - 2023-04-28

### Fixed

- Stop the opsiclientd service before killing processes so that Windows does not restart the failed opsiclientd (Jan Schneider <j.schneider@uib.de>)
- Improve checking bin dir move for success

## [4.2.0.55-1] - 2023-04-20

### Fixed

- Update opsiclientd to 4.2.0.145 (fixes hardware audit with config cache) (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.54-1] - 2023-04-18

### Changed

- Update opsiclientd to 4.2.0.144 (Jan Schneider <j.schneider@uib.de>)
- Keep a changelog format

## [4.2.0.53-1] - 2023-04-14

### Changed

- Update opsiclientd to 4.2.0.143 (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.52-1] - 2023-04-12

### Changed

- Update opsiclientd to 4.2.0.142 (improvement in product caching) (Nils Doerrer <n.doerrer@uib.de>)
- Update opsi-script to 4.12.9.0 (compatibility with opsi 4.3) (Nils Doerrer <n.doerrer@uib.de>)
- Some improvements in installation procedure rebustness (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.51-1] - 2023-04-02

### Changed

- Update opsiclientd to 4.2.0.141 (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.50-1] - 2023-03-30

### Changed

- Update opsiclientd to 4.2.0.140 (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.49-1] - 2023-03-23

### Changed

- Update opsiclientd to 4.2.0.139 (Jan Schneider <j.schneider@uib.de>)
- Update opsi-deploy-client-agent to 4.3.0.0 (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.48-1] - 2023-03-22

### Changed

- Update opsiclientd to 4.2.0.138 (Jan Schneider <j.schneider@uib.de>)
- Use two binary dirs and a junction for opsiclientd update (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.47-1] - 2023-03-09

### Changed

- Update opsiclientd to 4.2.0.137 (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.46-1] - 2023-02-22

### Changed

- Update opsiclientd to 4.2.0.136 (Jan Schneider <j.schneider@uib.de>)
- Use DEPOT_ID from env (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.45-1] - 2023-02-03

### Changed

- Rework installation for newer netboot products (Nils Doerrer <n.doerrer@uib.de>)
- Update opsiclientd to 4.2.0.134 (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.44-1] - 2022-12-22

### Changed

- Using DosInAnIcon section for opsiclientd setup (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.43-3] - 2022-12-05

### Changed

- Rebuilt opsi-notifier with proper meta information ahd sha256 hash in signature (Nils Doerrer <n.doerrer@uib.de>)
- Rebuilt opsi-systray with proper meta information ahd sha256 hash in signature (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.43-2] - 2022-12-01

### Changed

- Rebuilt opsiclientd with proper meta information ahd sha256 hash in signature (Nils Doerrer <n.doerrer@uib.de>)
- Rebuilt oca-installation-helper with proper meta information ahd sha256 hash in signature (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.43-1] - 2022-11-24

### Changed

- Update opsiclientd to 4.2.0.132 (win11 mshotfix caching, blocking runAsOpsiSetupUser) (Nils Doerrer <n.doerrer@uib.de>)
- Update oca-installation-helper to 4.2.0.24 (create host groups if not existing, delete WAN cache on install) (Nils Doerrer <n.doerrer@uib.de>)

### Fixed

- Update opsi-deploy-client-agent to 4.2.0.23 (fixed --use-ip-address) (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.42-1] - 2022-10-19

### Changed

- Update opsi-script to 4.12.6.2 (Jan Schneider <j.schneider@uib.de>)
- Update opsi-login-blocker to 4.2.0.4 (more robust timeouts) (Jan Schneider <j.schneider@uib.de>)
- Update opsiclientd to 4.2.0.131 (cleanup tmpdir, opsisetupuser related changes) (Jan Schneider <j.schneider@uib.de>)
- Update oca-installation-helper to 4.2.0.23 (optimized for use in script context) (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.41-3] - 2022-09-23

### Fixed

- Fix syntax (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.41-2] - 2022-09-23

### Changed

- Do not use WMI to fetch Admin SID (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.41-1] - 2022-09-23

### Changed

- Updated opsiclientd to 4.2.0.130 (Jan Schneider <j.schneider@uib.de>)
- Using system SID for ACL if local admin not found (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.40-1] - 2022-08-30

### Changed

- Updated opsiclientd to 4.2.0.129 (clear_product_cache datastructure cleanup) (Nils Doerrer <n.doerrer@uib.de>)

### Fixed

- Updated opsi-notifier to 4.2.0.10 (block-login-notifier fix) (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.39-1] - 2022-08-15

### Fixed

- Updated opsiclientd to 4.2.0.128 (fixed colliding startup event handling, fixed handling of opsiclientd.depot_server.url) (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.38-1] - 2022-08-02

### Changed

- Updated oca-installation-helper to 4.2.0.22 (Nils Doerrer <n.doerrer@uib.de>)

### Fixed

- Updated opsiclientd to 4.2.0.126 (dualstack connection to controlserver, fixed warnings) (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.37-2] - 2022-07-19

### Changed

- Updated opsiclientd to 4.2.0.125 (no relevant changes) (Nils Doerrer <n.doerrer@uib.de>)

### Fixed

- Fixed setup opsiscript for netboot-context (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.37-1] - 2022-07-13

### Changed

- Updated oca-installation-helper to 4.2.0.21 (Nils Doerrer <n.doerrer@uib.de>)
- Improved cleanup from very old opsi-client-agent remains (Nils Doerrer <n.doerrer@uib.de>)
- Updated opsi-script to 4.12.5.5 (Nils Doerrer <n.doerrer@uib.de>)

### Deprecated

- Updated opsiclientd to 4.2.0.124 (using alternatives for deprecated methods) (Nils Doerrer <n.doerrer@uib.de>)

### Removed

- Updated opsi-deploy-client-agent to 4.2.0.22 (removed deprecated options, implementation working without winexe) (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.36-1] - 2022-06-29

### Fixed

- Updated opsi-login-blocker to 4.2.0.3 (fix login crash) (Jan Schneider <j.schneider@uib.de>)
- Updated opsiclientd to 4.2.0.122 (fix timer events) (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.35-1] - 2022-06-23

### Changed

- Updated opsiclientd to 4.2.0.121 (killing stuck notifiers, longer opsisetupuser password) (Nils Doerrer <n.doerrer@uib.de>)

### Fixed

- Updated opsi-notifier to 4.2.0.7 (fixed timepicker selection dialog) (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.34-1] - 2022-06-09

### Changed

- Updated opsiclientd to 4.2.0.120 (Jan Schneider <j.schneider@uib.de>)
- Fetching custom files from opsi-client-agent-custom (Jan Schneider <j.schneider@uib.de>)
- Updated opsi-script to 4.12.5.3 (Jan Schneider <j.schneider@uib.de>)

### Fixed

- Updated oca-installation-helper to 4.2.0.20 (fix --no-gui) (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.33-1] - 2022-05-06

### Changed

- Updated openssl to 1.1.1n (Nils Doerrer <n.doerrer@uib.de>)
- Updated opsiclientd to 4.2.0.119 (updated dependencies, changed logging behaviour) (Nils Doerrer <n.doerrer@uib.de>)
- Increased volatility of opsiclientd setup call during installation (Nils Doerrer <n.doerrer@uib.de>)
- Updated oca-installation-helper to 4.2.0.19 (getting params from registry for windows) (Nils Doerrer <n.doerrer@uib.de>)

### Fixed

- Updated opsi-script to 4.12.5.0 (fixed isProcessChildOf function) (Nils Doerrer <n.doerrer@uib.de>)
- Updated opsi-deploy-client-agent to 4.2.0.21 (fixed winexe test and cleanup on windows) (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.32-4] - 2022-05-16

### Changed

- Updated opsiclientd to 4.2.0.119 (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.32-3] - 2022-04-28

### Changed

- Installing WebDAV-Redirector for windows server systems. (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.32-2] - 2022-04-27

### Fixed

- Fixed handling of opsiclientdguard in case of installing over 4.1.x opsi-client-agent (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.32-1] - 2022-04-26

### Changed

- Add api-ms-win-core-path-l1-1-0.dll (Jan Schneider <j.schneider@uib.de>)
- Updated opsiclientd to 4.2.0.118 (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.31-1] - 2022-04-12

### Changed

- Updated oca-installation-helper to 4.2.0.18 (view logfiles on failure) (Nils Doerrer <n.doerrer@uib.de>)
- Updated opsi-deploy-client-agent to 4.2.0.20 (updated python dependencies) (Nils Doerrer <n.doerrer@uib.de>)

### Fixed

- Updated opsiclientd to 4.2.0.117 (fix win7 compatibility) (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.30-1] - 2022-04-01

### Changed

- Updated opsi-notifier to 4.2.0.6 (Jan Schneider <j.schneider@uib.de>)
- Improved error handling in case of unreachable configserver (Jan Schneider <j.schneider@uib.de>)
- Updated opsiclientd to 4.2.0.116 (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.29-1] - 2022-03-29

### Changed

- Updated opsiclientd to 4.2.0.113 (Jan Schneider <j.schneider@uib.de>)
- Updated opsi-notifier to 4.2.0.5 (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.28-1] - 2022-03-22

### Changed

- Changed installation to finalize reboot in case of systray installation (Nils Doerrer <n.doerrer@uib.de>)
- Changed uninstallation to not reboot as final action (Nils Doerrer <n.doerrer@uib.de>)

### Fixed

- Updated oca-installation-helper to 4.2.0.17 (new option --no-set-mac-address, fixed evaluation of files/custom/install.conf) (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.27-1] - 2022-03-21

### Fixed

- Updated opsiclientd to 4.2.0.112 (cleanup registry uninstall, fix shutdown warning repetition after standby) (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.26-1] - 2022-03-16

### Changed

- Updated opsi-deploy-client-agent to 4.2.0.19 (improved logging, reporting failure reasons --failed-clients-file) (Nils Doerrer <n.doerrer@uib.de>)

### Fixed

- Fixed version registry setting (Nils Doerrer <n.doerrer@uib.de>)
- Updated opsiclientd to 4.2.0.111 (collectLogfiles feature, fixed multithreaded certificate access) (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.25-1] - 2022-02-24

### Changed

- Added version file opsi-client-agent.version for conditioned installation (Nils Doerrer <n.doerrer@uib.de>)
- Updated oca-installation-helper to 4.2.0.16 (new parameter --install-condition) (Nils Doerrer <n.doerrer@uib.de>)

### Fixed

- Fixed postinst for first time installation (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.24-1] - 2022-02-24

### Fixed

- Updated opsiclientd to 4.2.0.110 (fixed jsonrpc logging) (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.23-1] - 2022-02-08

### Changed

- Updated oca-installation-helper to 4.2.0.15 (new parameters --dns-domain, --finalize, --read-conf-files) (Nils Doerrer <n.doerrer@uib.de>)
- Updated opsiclientd to 4.2.0.109 (reworked opsi-setup-user cleanup and service connection timeouts) (Nils Doerrer <n.doerrer@uib.de>)

### Removed

- Removed Kiosk Migration. Do not install this package over opsi-client-agent < 4.1.1.18 (serverside) if using kiosk! (Nils Doerrer <n.doerrer@uib.de>)

### Fixed

- Updated opsi-deploy-client-agent 4.2.0.18 (suse fix for smbclient call) (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.22-1] - 2022-02-08

### Changed

- Updated opsi-login-blocker to 4.2.0.2 (Nils Doerrer <n.doerrer@uib.de>)
- Updated opsiclientd to 4.2.0.107 (improved logging output, possibility to skip firewall setup, updated packages) (Nils Doerrer <n.doerrer@uib.de>)
- Avoid duplicate permission setting if not neccessary. (Nils Doerrer <n.doerrer@uib.de>)

### Fixed

- Updated oca-installation-helper to 4.2.0.13 (fix for macos, new parameter --force-recreate-client) (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.21-2] - 2022-02-04

### Changed

- exit with error if permissions cant be set. (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.21-1] - 2022-02-03

### Changed

- Updated opsiclientd to 4.2.0.105 (Nils Doerrer <n.doerrer@uib.de>)
- Updated opsi-deploy-client-agent to 4.2.0.17 (set timeouts, added parameter --install-timeout) (Nils Doerrer <n.doerrer@uib.de>)
- Updated oca-installation-helper to 4.2.0.12 (Nils Doerrer <n.doerrer@uib.de>)
- On reinstallation via netboot, keep pending actionRequests (like always) (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.20-2] - 2022-01-02

### Changed

- stop installation if previous opsiclientd is < 4.2.0.77 and operating in WAN mode (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.20-1] - 2022-01-06

### Changed

- Dependency to opsi-script >= 4.12.4.35 (Nils Doerrer <n.doerrer@uib.de>)
- Improved uninstallation script (Nils Doerrer <n.doerrer@uib.de>)
- Updated oca-installation-helper to 4.2.0.11 (powershell allsigned change, adapted proxy handling) (Nils Doerrer <n.doerrer@uib.de>)
- Improved installation in wim-capture-kontext (not setting installed packages to setup) (Nils Doerrer <n.doerrer@uib.de>)
- Connectivity check during setup (Nils Doerrer <n.doerrer@uib.de>)
- Updated opsiclientd to 4.2.0.104 (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.19-2] - 2021-12-22

### Changed

- Updated opsiclientd to 4.2.0.103 (Nils Doerrer <n.doerrer@uib.de>)

### Fixed

- Reverted powershell fix (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.19-1] - 2021-12-21

### Changed

- Update opsi-login-blocker to 4.2.0.1 (Jan Schneider <j.schneider@uib.de>)
- Allsigned compatible powershell calls (Jan Schneider <j.schneider@uib.de>)

### Fixed

- Update opsiclientd to 4.2.0.102 (event handling fix) (Jan Schneider <j.schneider@uib.de>)
- Update oca-installation-helper to 4.2.0.9 (windows 7 tempdir fix) (Jan Schneider <j.schneider@uib.de>)
- Fixed allow_reboot in case of very old previous opsi-client-agent version (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.18-2] - 2021-12-16

### Fixed

- Update oca-installation-helper to 4.2.0.8 (minor logging fix) (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.18-1] - 2021-12-15

### Changed

- Rotate instlog during os installation (Jan Schneider <j.schneider@uib.de>)

### Fixed

- Update opsiclientd to 4.2.0.100 (event handling fix) (Jan Schneider <j.schneider@uib.de>)
- Update oca-installation-helper to 4.2.0.7 (proxy handling fix) (Jan Schneider <j.schneider@uib.de>)
- Fixed uninstall (Registry access by sysnative) (Jan Schneider <j.schneider@uib.de>)
- Update opsi-script to 4.12.4.33 (FileVersionInfo fix) (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.17-1] - 2021-12-06

### Fixed

- Fix: old opsiclientd version does not handle restart marker (Jan Schneider <j.schneider@uib.de>)
- Updated opsiclientd to 4.2.0.99 (WAN mode - fix modules handling) (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.16-1] - 2021-12-01

### Changed

- Improved checking for Powershell restrictions (Nils Doerrer <n.doerrer@uib.de>)
- Update opsiclientd to 4.2.0.98 (Nils Doerrer <n.doerrer@uib.de>)
- - feature: temporary popup notifications (Nils Doerrer <n.doerrer@uib.de>)
- Workaround for access denied on rename of bin folder (Nils Doerrer <n.doerrer@uib.de>)
- Installing opsi-script if not present (ahead of update_action_processor) (Nils Doerrer <n.doerrer@uib.de>)
- Updated oca-installation-helper to 4.2.0.6 (Nils Doerrer <n.doerrer@uib.de>)
- Add parameter /u to service_setup.cmd (Nils Doerrer <n.doerrer@uib.de>)

### Fixed

- Update opsi-notifier to 4.2.0.3 (timepicker fix) (Nils Doerrer <n.doerrer@uib.de>)
- - fix: event config inheritance (Nils Doerrer <n.doerrer@uib.de>)
- - fix: only save current custom skin if it is nonempty (Nils Doerrer <n.doerrer@uib.de>)
- - fix: update choices in time select notifier while running (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.15-1] - 2021-11-18

### Changed

- Update vcredist to 2015-2022 14.30.30528.0 (Nils Doerrer <n.doerrer@uib.de>)
- Update opsiclientd to 4.2.0.96 (reworked event-handling, minor fixes) (Nils Doerrer <n.doerrer@uib.de>)
- Update oca-installation-helper to 4.2.0.5 (Nils Doerrer <n.doerrer@uib.de>)
- Update opsi-script to 4.12.4.31 (Nils Doerrer <n.doerrer@uib.de>)
- Update opsi-deploy-client-agent to 4.2.0.15 (isolated from opsicommon python module) (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.14-1] - 2021-10-25

### Changed

- Update opsiclientd to 4.2.0.94 (Nils Doerrer <n.doerrer@uib.de>)
- Update opsi-notifier to 4.2.0.2 (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.13-1] - 2021-10-08

### Changed

- Update opsiclientd to 4.2.0.93 (Jan Schneider <j.schneider@uib.de>)
- Migrate product property on_shutdown_install (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.12-1] - 2021-09-22

### Changed

- Update opsiclientd to 4.2.0.92 (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.11-1] - 2021-09-22

### Changed

- Update opsiclientd to 4.2.0.91 (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.10-1] - 2021-09-21

### Changed

- Update opsiclientd to 4.2.0.90 (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.9-1] - 2021-09-17

### Changed

- Updated opsiclientd to 4.2.0.89 (Nils Doerrer <n.doerrer@uib.de>)
- Updated oca-installation-helper to 4.2.0.4 (Nils Doerrer <n.doerrer@uib.de>)

### Fixed

- Fixed cleanup of very old notifier (Nils Doerrer <n.doerrer@uib.de>)
- Fixed setup setting for netbootproducts run on clean machines (Nils Doerrer <n.doerrer@uib.de>)

## [4.2.0.8-1] - 2021-09-08

### Fixed

- Fix process_wim_capture() (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.7-1] - 2021-08-30

### Changed

- Update opsiclientd to 4.2.0.88 (Jan Schneider <j.schneider@uib.de>)
- Update oca-installation-helper to 4.2.0.2 (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.6-1] - 2021-08-24

### Changed

- Update opsiclientd to 4.2.0.87 (Jan Schneider <j.schneider@uib.de>)
- Update oca-installation-helper to 4.2.0.1 (Jan Schneider <j.schneider@uib.de>)

### Fixed

- Fixed installation finalization. No reboot in bootimage context. (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.5-1] - 2021-08-19

### Changed

- Update opsiclientd to 4.2.0.86 (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.4-1] - 2021-08-18

### Changed

- Update opsiclientd to 4.2.0.85 (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.3-1] - 2021-08-17

### Changed

- Update opsiclientd to 4.2.0.84 (Jan Schneider <j.schneider@uib.de>)
- Always copy all custom files (Jan Schneider <j.schneider@uib.de>)

### Fixed

- Fix ExecWith_powershell_running_in_service_context (Jan Schneider <j.schneider@uib.de>)
- Fix reboot for package actions (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.2-1] - 2021-08-11

### Changed

- Update opsiclientd to 4.2.0.83 (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.1-1] - 2021-06-21

### Changed

- Update opsiclientd to 4.2.0.82 (Jan Schneider <j.schneider@uib.de>)
- Reboot after installation if other packages are set to setup (Jan Schneider <j.schneider@uib.de>)
- Move custom winstskin to new location (Jan Schneider <j.schneider@uib.de>)

## [4.2.0.0-1] - 2021-06-21

### Changed

- opsi-client-agent 4.2 release (Jan Schneider <j.schneider@uib.de>)
