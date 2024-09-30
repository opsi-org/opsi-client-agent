# Changelog opsi-client-agent

## [4.3.4.6-1] - 2024-09-30

### Changed
- Update opsiclientd to 4.3.4.6 (Continue if FQDN is unknown, use cached products in same event) (Jan Schneider <j.schneider@uib.de>)

## [4.3.4.5-1] - 2024-09-27

### Changed
- Update opsiclientd to 4.3.4.5 (Improved messagebus reconnection) (Jan Schneider <j.schneider@uib.de>)

## [4.3.4.2-2] - 2024-09-16

### Fixed
- Fixed syntax error in script

## [4.3.4.2-1] - 2024-09-13

### Changed
- Increased rpc-timeout for loginUser call to 30s (Jan Schneider <j.schneider@uib.de>)
- Improved base directory detection (Jan Schneider <j.schneider@uib.de>)
- Improved logging (Jan Schneider <j.schneider@uib.de>)

### Fixed
- Fixed access modifiers for opsiclientd.conf file (Nils Doerrer <n.doerrerer@uib.de>)
- Updated opsiclientd to 4.3.4.2  (updated caching rules for mshotfix for win11-24h2) (Nils Doerrer <n.doerrerer@uib.de>)
- Cleaned up installation in netboot context (Jan Schneider <j.schneider@uib.de>)
- Fixed caching of ConfigStates (specific to depot) (Jan Schneider <j.schneider@uib.de>)

## [4.3.4.1-1] - 2024-08-16

### Fixed
- Updated opsiclientd to 4.3.4.1  (fixed log sync in posix WAN mode, more robust opsi-script upgrade, fixed notification server connection for linux) (Nils Doerrer <n.doerrerer@uib.de>)


## [4.3.4.0-1] - 2024-08-07

### Fixed
- Updated opsiclientd to 4.3.4.0  (more robust certificate handling and fixed kiosk/systray authentication) (Nils Doerrer <n.doerrerer@uib.de>)

## [4.3.3.22-1] - 2024-08-02

### Fixed
- Updated opsiclientd to 4.3.3.22  (resolved cors issues) (Nils Doerrer <n.doerrerer@uib.de>)

## [4.3.3.21-2] - 2024-07-30

### Changed
- Update opsi-notifier to 4.3.1.1 (Fabian Kalweit <f.kalweit@uib.de>)

## [4.3.3.21-1] - 2024-07-23

### Changed
- Update opsiclientd to 4.3.3.21 (Fabian Kalweit <f.kalweit@uib.de>)

## [4.3.3.20-1] - 2024-07-18

### Changed
- Update opsiclientd to 4.3.3.20 (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.19-2] - 2024-07-18

### Changed
- Downgrade opsi-notifier to 4.3.0.1 (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.19-1] - 2024-07-17

### Changed
- Update opsiclientd to 4.3.3.19 (Set service failure actions on Windows) (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.18-4] - 2024-07-16

### Changed
- Update opsi-deploy-client-agent to 4.3.0.2 (do not use smbclient) (Jan Schneider <j.schneider@uib.de>)
- Update opsi-notifier to 4.3.1.0 (periodically bring to foreground) (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.18-3] - 2024-07-16

### Changed
- Update opsi-deploy-client-agent to 4.3.0.1 (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.18-2] - 2024-07-15

### Changed
- Set opsiclientd.event_user_login.action_processor_desktop to default (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.18-1] - 2024-07-15

### Changed
- Update opsiclientd to 4.3.3.18 (clientconfig.wan_vpn) (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.17-2] - 2024-07-12

### Fixed
- Fix opsiclientd.conf template (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.17-1] - 2024-07-12

### Changed
- Update opsiclientd to 4.3.3.17 (provide placeholders for product_info) (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.16-1] - 2024-07-12

### Changed
- Update opsiclientd to 4.3.3.16 (Display product names in notifier) (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.14-1] - 2024-06-24

### Changed
- Update opsiclientd to 4.3.3.14 (Windows 7 compatible) (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.13-1] - 2024-06-20

### Changed
- Update opsiclientd to 4.3.3.13 (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.12-1] - 2024-06-11

### Changed
- Add read and exceute permission for local users on opsi-notifer and motd-notifier (Jan Schneider <j.schneider@uib.de>)
- Update opsiclientd to 4.3.3.12 (Jan Schneider <j.schneider@uib.de>)
- Update motd-notifier to 0.2 (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.11-1] - 2024-06-10

### Changed
- Updated opsiclientd to 4.3.3.11 (popup notifier fix) (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.10-1] - 2024-04-29

### Changed
- Updated opsiclientd to 4.3.3.10 (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.9-1] - 2024-04-24

### Changed
- Updated opsiclientd to 4.3.3.9 (Jan Schneider <j.schneider@uib.de>)
- Updated opsi-script to 4.12.14.1 (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.8-1] - 2024-04-23

### Changed
- Updated opsiclientd to 4.3.3.8 (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.7-1] - 2024-04-22

### Changed
- Updated opsiclientd to 4.3.3.7 (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.6-1] - 2024-04-21

### Changed
- Updated opsiclientd to 4.3.3.6 (Jan Schneider <j.schneider@uib.de>)
- Updated opsi-script to 4.12.14.0 (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.5-1] - 2024-04-16

### Changed
- Updated opsiclientd to 4.3.3.5 (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.4-1] - 2024-04-12

### Changed
- Updated opsiclientd to 4.3.3.4 (Jan Schneider <j.schneider@uib.de>)
- Updated oca-installation-helper to 4.3.1.0 (Jan Schneider <j.schneider@uib.de>)

## [4.3.3.3-1] - 2024-04-10

### Changed
- Updated opsiclientd to 4.3.3.3 (Jan Schneider <j.schneider@uib.de>)


## [4.3.3.2-1] - 2024-04-05

### Changed
- Updated opsiclientd to 4.3.3.2 (Jan Schneider <j.schneider@uib.de>)


## [4.3.3.1-1] - 2024-04-04

### Changed
- Updated opsiclientd to 4.3.3.1 (Jan Schneider <j.schneider@uib.de>)
- Logon desktop is now the default for event notifier and action processor


## [4.3.3.0-1] - 2024-04-02

### Changed
- Updated opsiclientd to 4.3.3.0 (replace twisted with FastAPI) (Jan Schneider <j.schneider@uib.de>)


## [4.3.2.3-1] - 2024-03-26

### Changed
- Updated opsiclientd to 4.3.2.4 (fixes, lazy import reactor) (Jan Schneider <j.schneider@uib.de>)


## [4.3.2.2-1] - 2024-03-22

### Changed
- Updated opsiclientd to 4.3.2.3 (notification server start_delay) (Jan Schneider <j.schneider@uib.de>)


## [4.3.2.1-1] - 2024-03-21

### Changed
- Updated opsiclientd to 4.3.2.1 (control server interface and start_delay) (Jan Schneider <j.schneider@uib.de>)

## [4.3.2.0-1] - 2024-03-19

### Changed
- Updated opsiclientd to 4.3.2.0 (message of the day handling) (Nils Doerrer <n.doerrer@uib.de>)
- Update opsi-login-blocker to 4.3.0.0 (Jan Schneider <j.schneider@uib.de>)

### Fixed
- Updated oca-installation-helper to 4.3.0.3 (Refactored and fixed linux-related issues with dynamic libraries) (Nils Doerrer <n.doerrer@uib.de>)

### Added
- Added message of the day notifier 0.1.0 (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.1.1-1] - 2024-02-15

### Changed
- Update opsiclientd to 4.3.1.2 (More robust trusted installer reboot handling) (Nils Doerrer <n.doerrer@uib.de>)

### Fixed
- Fixed websocket connection timeout problem (Jan Schneider <j.schneider@uib.de>)

## [4.3.1.0-1] - 2024-02-06

### Changed
- Update opsiclientd to 4.3.1.0 (improved process management messagebus calls) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.0.13-1] - 2024-01-17

### Changed
- Update oca-installation-helper to 4.3.0.1 (check if powershell is in PATH) (Nils Doerrer <n.doerrer@uib.de>)
- Update opsiclientd to 4.3.0.8 (process management messagebus calls) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.0.12-1] - 2023-12-27

### Changed
- Update opsiclientd to 4.3.0.7 (registry environment PATH cleanup) (Jan Schneider <j.schneider@uib.de>)

## [4.3.0.11-1] - 2023-12-19

### Fixed
- Updated opsiclientd to 4.3.0.6 (fixed upgrade in WAN-mode) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.0.10-2] - 2023-12-15

### Changed
- Made preinst compatible with 4.2 servers (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.0.10-1] - 2023-12-14

### Changed
- Update opsiclientd to 4.3.0.5 (Jan Schneider <j.schneider@uib.de>)

## [4.3.0.9-1] - 2023-12-14

### Changed
- Update opsiclientd to 4.3.0.4 (Jan Schneider <j.schneider@uib.de>)

## [4.3.0.8-1] - 2023-12-13

### Changed
- Update opsiclientd to 4.3.0.3 (Jan Schneider <j.schneider@uib.de>)

## [4.3.0.7-1] - 2023-12-12

### Fixed
- Update opsiclientd to 4.3.0.2 (fix wan/vpn on_demand selected product actions) (Jan Schneider <j.schneider@uib.de>)

## [4.3.0.6-1] - 2023-11-14

### Changed
- Replaced the last old logos (Nils Doerrer <n.doerrer@uib.de>)
- Updated components to use 4.3 versions (Nils Doerrer <n.doerrer@uib.de>)
- Simplified preinst script - removed migration of 4.1 on_shutdown property (Nils Doerrer <n.doerrer@uib.de>)
- Removed deprecated calls from scripts (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.0.5-2] - 2023-10-20

### Fixed
- Fixed retry of moving extracted opsiclientd after it was denied by virus scanner lock (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.0.5-1] - 2023-10-18

### Changed
- Update opsiclientd to 4.2.0.161 (reconnect messagebus after client rename) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.0.4-1] - 2023-10-10

### Changed
- Update opsi-notifier to 4.3.0.1 (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.0.3-1] - 2023-10-05

### Changed
- New login blocker icon (Jan Schneider <j.schneider@uib.de>)
- Update opsi-client-systray to 4.3.0.0 (Jan Schneider <j.schneider@uib.de>)

## [4.3.0.2-1] - 2023-09-29

### Changed
- Using new logo (Nils Doerrer <n.doerrer@uib.de>)
- Updated opsiclientd to 4.2.0.160 (Nils Doerrer <n.doerrer@uib.de>)

### Fixed
- Fixed default skin installation

## [4.3.0.1-2] - 2023-09-27

### Changed
- installing default opsi-script skin even if not reinstalling opsi-script. Possibly overridden by custom part (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.0.1-1] - 2023-09-25

### Changed
- Update opsi-script to 4.12.11.1 (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.0.0-1] - 2023-09-21

### Changed
- Update opsi-notifier to 4.3.0.0 (Jan Schneider <j.schneider@uib.de>)
