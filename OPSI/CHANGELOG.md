# Changelog opsi-client-agent

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
