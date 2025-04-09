# Changelog opsi-client-agent

## [4.3.10.2-1] - 2025-04-09

### Fixed
- Upgrade opsclientd to 4.3.10.2 (Minor fix in event handling) (Nils Doerrer <n.doerrer@uib.de>)

### Changed
- Upgrade oca-installation-helper to 4.3.2.0 (New gui/tui components, loading installation files from depot) (Nils Doerrer <n.doerrer@uib.de>)
- Upgrade opsi-deploy-client-agent to 4.3.1.0 (Adaption to new installer mechanic) (Nils Doerrer <n.doerrer@uib.de>)
- Upgrade motd-notifier to 0.3.1 (Improved logging) (Nils Doerrer <n.doerrer@uib.de>)

### Removed
- Removed opsi-script (and its openssl libraries) from package (During installation opsi-script is retrieved from depot) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.10.1-1] - 2025-04-04

### Changed
- Upgrade opsclientd to 4.3.10.1 (reworked installation_pending mechanic) (Nils Doerrer <n.doerrer@uib.de>)
- Uninstall now updates Installation status before connection to server breaks (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.10.0-1] - 2025-04-01

### Changed
- Upgrade opsclientd to 4.3.10.0 (clientconfig.smart_cache) (Jan Schneider <j.schneider@uib.de>)

## [4.3.9.2-3] - 2025-03-26

### New
- Added productProperty "disable_uninstall_option" to remove set NoRemove and NoModify in Registry Software entry for opsi-client-agent (Nils Doerrer <n.doerrer@uib.de>)

### Fixed
- Robust handling of wim-capture with missing configuration (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.9.2-2] - 2025-03-17

### Fixed
- Cleanup of some very old deprecated files (Nils Doerrer <n.doerrer@uib.de>)
- Robust handling of wim-capture with missing configuration (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.9.2-1] - 2025-03-14

### Changed
- Upgrade opsclientd to 4.3.9.2 (Jan Schneider <j.schneider@uib.de>)

## [4.3.9.0-1] - 2025-03-07

### Changed
- Upgrade opsclientd to 4.3.9.0 - showDialog (Jan Schneider <j.schneider@uib.de>)
- Upgrade motd-notifier to 0.3.0 - dialog (Jan Schneider <j.schneider@uib.de>)

## [4.3.8.0-1] - 2025-02-27

### Changed
- Downgrade opsi-notifier to 4.3.0.1 (Jan Schneider <j.schneider@uib.de>)

## [4.3.7.5-1] - 2025-02-25

### Fixed
- Use configState_getValues (Jan Schneider <j.schneider@uib.de>)
- Update opsi-script to 4.12.17.2-6
- Update opsi-script-common to 4.12.17.0

## [4.3.7.4-1] - 2025-02-20

### New
- New rpc-call sendSAS activate CredentialProviders (Jan Schneider <j.schneider@uib.de>) 

### Fixed
- Update opsiclientd to 4.3.7.4 - fixed log file download behaviour (Jeena John <j.john@uib.de>)

## [4.3.7.0-1] - 2025-02-11

### Changed
- Update opsiclientd to 4.3.7.0 (recognize professional and enterprise licenses) (Jan Schneider <j.schneider@uib.de>)

## [4.3.6.1-1] - 2025-01-20

### Changed
- Update opsiclientd to 4.3.6.1 and reenable Windows 7 support (Jan Schneider <j.schneider@uib.de>)

## [4.3.6.0-2] - 2025-01-17

### Changed
- Stopping setup if on windows < 10.0 (Nils Doerrer <n.doerrer@uib.de>)
- Stopping setup if connection to server is broken (Nils Doerrer <n.doerrer@uib.de>)
- Attempting to restore old opsiclientd.conf if opsiclientd setup fails (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.6.0-1] - 2025-01-09

### Fixed
- Update opsiclientd to 4.3.6.0 - fixed processActionRequests and prepared opsi-script execution by rpc (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.4.14-1] - 2024-12-12

### Fixed
- Update opsiclientd to 4.3.4.14 fixed setup registry part (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.4.13-1] - 2024-12-11

### Fixed
- Update opsiclientd to 4.3.4.13 (fixed event handling for new clients) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.4.12-1] - 2024-12-06

### Changed
- Update opsiclientd to 4.3.4.12 (Nils Doerrer <n.doerrer@uib.de>)

### Fixed
- Fixed handling of special characters in users in installer (Jan Schneider <j.schneider@uib.de>)

## [4.3.4.11-1] - 2024-10-09

### Changed
- Update opsiclientd to 4.4.0.0 (Nils Doerrer <n.doerrer@uib.de>)
- Update oca-installation-helper to 4.4.0.0 (Nils Doerrer <n.doerrer@uib.de>)
- Update opsi-deploy-client-agent to 4.4.0.0 (Nils Doerrer <n.doerrer@uib.de>)

### Removed
- Removed opsi-script from opsi-client-agent package (Nils Doerrer <n.doerrer@uib.de>)
