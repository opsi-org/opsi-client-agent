# Changelog opsi-client-agent

## [4.3.22.8-1] - 2026-07-26

### Fixed
- Update opsiclientd to 4.3.22.8 (Fix depot mount) (Jan Schneider <j.schneider@uib.de>)

## [4.3.22.7-1] - 2026-07-26

### Changed
- Update opsiclientd to 4.3.22.7 (Retry on RepositoryError in CacheService) (Jan Schneider <j.schneider@uib.de>)

## [4.3.22.6-1] - 2026-07-24

### Changed
- Update opsiclientd to 4.3.22.6 (fix userlogin handling) (Jan Schneider <j.schneider@uib.de>)
- Update motd-notifier to 4.3.1.2 (improve link-handling) (Jan Schneider <j.schneider@uib.de>)

## [4.3.22.5-1] - 2026-07-23

### Changed
- Update opsiclientd to 4.3.22.5 (fix motd notifier link-handling) (Jan Schneider <j.schneider@uib.de>)
- Update motd-notifier to 4.3.1.1 (fix link-handling) (Jan Schneider <j.schneider@uib.de>)

## [4.3.22.4-1] - 2026-06-26

### Changed
- Update opsiclientd to 4.3.22.4 (improve product cache logging and error messages) (Jan Schneider <j.schneider@uib.de>)

## [4.3.22.3-1] - 2026-06-25

### Changed
- Update opsiclientd to 4.3.22.3 (caching limits) (Jan Schneider <j.schneider@uib.de>)

## [4.3.22.2-1] - 2026-06-24

### Changed
- Update opsiclientd to 4.3.22.2 (Fix caching mount problem) (Jan Schneider <j.schneider@uib.de>)

## [4.3.22.1-1] - 2026-06-24

### Changed
- Update opsiclientd to 4.3.22.1 (Product Cache Soft and Hard Limits) (Jan Schneider <j.schneider@uib.de>)

## [4.3.22.0-1] - 2026-06-24

### Changed
- Update opsiclientd to 4.3.22.0 (Jan Schneider <j.schneider@uib.de>)

## [4.3.20.3-1] - 2026-06-17

### Changed
- Update opsiclientd to 4.3.20.3 (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.21.0-1] - 2026-06-12

### Changed
- Update oca-installation-helper to 4.3.7.0 (New commandline param --set-product-actions) (Jan Schneider <j.schneider@uib.de>)

## [4.3.20.1-1] - 2026-06-11

### Changed
- Update opsiclientd to 4.3.20.1 (Fix unmount) (Jan Schneider <j.schneider@uib.de>)

## [4.3.20.0-1] - 2026-06-10

### Changed
- Update opsiclientd to 4.3.20.0 (Jan Schneider <j.schneider@uib.de>)
  - Remove impersonation of action processor user and related configuration options
  - Use NetUseAdd instead of WNetAddConnection2 to mount CIFS shares

## [4.3.19.13-1] - 2026-06-09

### Changed
- Update opsiclientd to 4.3.19.13 (Improved Trusted Installer logging) (Jan Schneider <j.schneider@uib.de>)

## [4.3.19.12-1] - 2026-06-08

### Fixed
- Update opsiclientd to 4.3.19.12 (Fix duplicate actions) (Jan Schneider <j.schneider@uib.de>)

## [4.3.19.11-1] - 2026-05-29

### Fixed
- Update opsiclientd to 4.3.19.11 (Fix timer interval and popup notifier) (Jan Schneider <j.schneider@uib.de>)

## [4.3.19.10-1] - 2026-05-29

### Fixed
- Update opsiclientd to 4.3.19.10 (Wait for console session instead of GUI process on GUI startup) (Jan Schneider <j.schneider@uib.de>)

## [4.3.19.9-1] - 2026-05-13

### Changed
- Update opsiclientd to 4.3.19.9 (Anna Sucher <a.sucher@uib.de>)
- Update motd-notifier to 4.3.1.0 (Use py qt) (Anna Sucher <a.sucher@uib.de>)

## [4.3.19.8-2] - 2026-05-13

- Update motd-notifier to 4.3.1.0 (New: Qt base) (Anna Sucher <a.sucher@uib.de>)

## [4.3.19.8-1] - 2026-05-13

### Changed
- Update opsiclientd to 4.3.19.8 (Start opsi-script in maximized mode only if the event blocks the login) (Jan Schneider <j.schneider@uib.de>)

## [4.3.19.7-1] - 2026-05-12

### Changed
- Update opsiclientd to 4.3.19.7 (Jan Schneider <j.schneider@uib.de>)

## [4.3.19.4-1] - 2026-05-07

### Changed
- Update opsiclientd to 4.3.19.4 (Jan Schneider <j.schneider@uib.de>)

## [4.3.19.2-1] - 2026-04-30

### Changed
- Update opsiclientd to 4.3.19.2 (Jan Schneider <j.schneider@uib.de>)
  - TrustedInstaller status logging
  - By default, wait for Windows updates again, because Windows Update initiated reboots can break OPSI Client Agent installation.
    To disable this feature, set the configuration option "opsiclientd.event_default.trusted_installer_detection" to "false".

## [4.3.19.1-1] - 2026-04-29

### Changed
- Update opsiclientd to 4.3.19.1 (Jan Schneider <j.schneider@uib.de>)
  - Improved service connection handling
  - By default, do not wait for Windows updates, as detection is currently unreliable on some systems.
    To re-enable this feature, set the configuration option "opsiclientd.event_default.trusted_installer_detection" to "true".

## [4.3.19.0-2] - 2026-04-29

### Changed
- Remove preinst.py and use preinst script (Jan Schneider <j.schneider@uib.de>)

## [4.3.19.0-1] - 2026-04-29

### Changed
- Update opsiclientd to 4.3.19.0 (Refactoring) (Jan Schneider <j.schneider@uib.de>)

## [4.3.18.2-1] - 2026-04-23

### Changed
- Update opsiclientd to 4.3.18.2 (Jan Schneider <j.schneider@uib.de>)

## [4.3.18.1-1] - 2026-04-21

### Changed
- Update opsiclientd to 4.3.18.1 (Jan Schneider <j.schneider@uib.de>)

## [4.3.18.0-1] - 2026-04-17

### Changed
- Update opsiclientd to 4.3.18.0 (Jan Schneider <j.schneider@uib.de>)
- Update oca-installation-helper to 4.3.6.0 (Jan Schneider <j.schneider@uib.de>)

## [4.3.17.10-1] - 2026-03-23

### Changed
- Update opsiclientd to 4.3.17.10 (Jan Schneider <j.schneider@uib.de>)

## [4.3.17.9-1] - 2026-03-13

### Changed
- Update opsiclientd to 4.3.17.9 (Jan Schneider <j.schneider@uib.de>)

## [4.3.17.7-1] - 2026-02-19

### Changed
- Update opsiclientd to 4.3.17.8 (Changed trusted-installer-detection to also work on win11) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.17.7-1] - 2026-02-19

### Changed
- Update opsiclientd to 4.3.17.7 (Jan Schneider <j.schneider@uib.de>)

## [4.3.17.6-1] - 2026-02-05

### Changed
- Update opsiclientd to 4.3.17.6 (Jan Schneider <j.schneider@uib.de>)
- Improve setting file ACLs with retries

## [4.3.17.5-1] - 2026-01-28

### Fixed
- Update opsiclientd to 4.3.17.5 (Fix handling for error 1219 on Windows when mounting depot share) (Jan Schneider <j.schneider@uib.de>)

## [4.3.17.4-1] - 2026-01-27

### Fixed
- Update opsiclientd to 4.3.17.4 (Jan Schneider <j.schneider@uib.de>)

## [4.3.17.3-2] - 2026-01-27

### Changed
- Update motd-notifier to 1.1.9 (Fix: button callback) (Anna Sucher <a.sucher@uib.de>)

## [4.3.17.3-1] - 2026-01-21

### Changed
- Update opsiclientd to 4.3.17.3 (Jan Schneider <j.schneider@uib.de>)

## [4.3.17.2-1] - 2026-01-20

### Changed
- Update opsiclientd to 4.3.17.2 (Jan Schneider <j.schneider@uib.de>)

## [4.3.17.1-1] - 2026-01-16

### Changed
- Update opsiclientd to 4.3.17.1 (Jan Schneider <j.schneider@uib.de>)

## [4.3.17.0-1] - 2026-01-15

### Changed
- Update motd-notifier to 1.1.8 (Fix: button flickering) (Anna Sucher <a.sucher@uib.de>)
- Update opsiclientd to 4.3.17.0 (Jan Schneider <j.schneider@uib.de>)

## [4.3.16.2-1] - 2026-01-06

### Changed
- Update motd-notifier to 1.1.7 (Fix bugs; Chg blocklogin and translations) (Anna Sucher <a.sucher@uib.de>)
- Update opsiclientd to 4.3.16.2 (Jan Schneider <j.schneider@uib.de>)

## [4.3.16.1-2] - 2025-12-19

### Fixed
- Update oca-installation-helper to 4.3.5.1 (Jan Schneider <j.schneider@uib.de>)
- Update motd-notifier to 1.1.2 (Anna Sucher <a.sucher@uib.de>)

## [4.3.16.1-1] - 2025-12-16

### Fixed
- Update opsiclientd to 4.3.16.1 (Jan Schneider <j.schneider@uib.de>)

## [4.3.16.0-2] - 2025-12-15

### Changed
- Update oca-installation-helper to 4.3.5.0 (Jan Schneider <j.schneider@uib.de>)

## [4.3.16.0-1] - 2025-12-10

### New
- Upgrade opsiclientd to 4.3.16.0 (Added WinRT event generator for network connection cost monitoring ) (Jeena John <j.john@uib.de>)

## [4.3.15.7-1] - 2025-12-04

### Changed
- Update opsiclientd to 4.3.15.7 (Improve logging on CIFS mount error 1219) (Jan Schneider <j.schneider@uib.de>)
- Delete previous uninstall registry keys for opsi-client-agent MSI installs (Jan Schneider <j.schneider@uib.de>)
- Update motd-notifier to 1.1.1 (Refactoring and new notification windows) (Anna Sucher <a.sucher@uib.de>)
- Update oca-installation-helper to 4.3.4.0 (Default log level info and new log path) (Jan Schneider <j.schneider@uib.de>)

## [4.3.15.6-1] - 2025-12-01

### Changed
- Reduce duration of installation by compressing motd-notifier (Anna Sucher <a.sucher@uib.de>)
- Update opsiclientd to 4.3.15.6 (Retry service connection on setup) (Jan Schneider <j.schneider@uib.de>)

## [4.3.15.5-1] - 2025-11-11

### Changed
- Update opsiclientd and motd-notifier (notifier is build as one-dir) (Anna Sucher <a.sucher@uib.de>)

## [4.3.15.4-1] - 2025-11-17

### Changed
- Upgrade opsiclientd to 4.3.15.4 (fixed connection timeout increase) (Jan Schneider <j.schneider@uib.de>)

## [4.3.15.2-1] - 2025-11-10

### Fixed
- Upgrade opsiclientd to 4.3.15.2 (fixed assembling messagebus rpc call result) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.15.0-1] - 2025-10-23

### New
- Upgrade opsiclientd to 4.3.15.0 (added mshotfix cache settings for windows 2025 and win11 25h2) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.14.4-1] - 2025-10-22

### New
- Upgrade opsiclientd to 4.3.14.4 (added pause/resume for product caching on metered network connection) (Jeena John <j.john@uib.de>)

## [4.3.14.3-1] - 2025-10-06

### Fixed
- Upgrade opsiclientd to 4.3.14.3 (fix opsiclientd download-from-depot function) (Nils Doerrer <n.doerrer@uib.de>)
- Fixed custom file installation (custom directory in opsi-client-agent and opsi-client-agent-custom package) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.14.2-4] - 2025-10-01

### Changed
- Aborting installation when failing to set rights (SAM or LSA in wrong state to perform security operation) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.14.2-2] - 2025-09-25

### Fixed
- Upgrade opsi-login-blocker to 4.3.1.2 (fix heap corruption) (Jan Schneider <j.schneider@uib.de>)

## [4.3.14.2-1] - 2025-09-23

### Fixed
- Upgrade opsiclientd to 4.3.14.2 (increasing connect_timeout with each retry) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.14.1-2] - 2025-09-19

### New
- Upgrade oca-installation-helper to 4.3.3.4 (connect_timeout 60s, new option --depot-by-network) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.14.1-1] - 2025-09-10

### Changed
- Upgrade opsiclientd to 4.3.14.1 (improved network handling) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.14.0-1] - 2025-09-08

### Changed
- Made removal of old opsiclientd more robust (Nils Doerrer <n.doerrer@uib.de>)
- Upgrade opsiclientd to 4.3.14.0 (enabled prioritising events) (Jan Schneider <j.schneider@uib.de>)

## [4.3.13.8-1] - 2025-08-08

### Fixed
- Upgrade motd-notifier to 0.3.4 (improved locking mechanism) (Jan Schneider <j.schneider@uib.de>)

### Changed
- Upgrade opsiclientd to 4.3.13.8 (only lock session if not on Winlogon desktop) (Jan Schneider <j.schneider@uib.de>)

## [4.3.13.7-2] - 2025-07-29

### Fixed
- Upgrade opsi-login-blocker to 4.3.1.1 (improvements in stability and logging) (Jan Schneider <j.schneider@uib.de>)

## [4.3.13.7-1] - 2025-07-15

### Fixed
- Upgrade opsiclientd to 4.3.13.7 (fixed behaviour with WAN-related configs) (Nils Doerrer <n.doerrer@uib.de>)

### Changed
- Upgrade oca-installation-helper to 4.3.3.3 (more robust get_mac_address in case of weird network configurations) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.13.5-4] - 2025-06-24

### Changed
- Cleaning up opsi-winst files (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.13.5-3] - 2025-06-24

### Changed
- Upgrade oca-installation-helper to 4.3.3.2 (fixed --encode-password) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.13.5-2] - 2025-06-16

### Changed
- Upgrade oca-installation-helper to 4.3.3.1 (Jan Schneider <j.schneider@uib.de>)

## [4.3.13.5-1] - 2025-06-13

### Changed
- Upgrade opsiclientd to 4.3.13.5 (Jan Schneider <j.schneider@uib.de>)
- Upgrade motd-notifier to 0.3.3 (Jan Schneider <j.schneider@uib.de>)

## [4.3.13.4-1] - 2025-06-10

### Changed
- Upgrade opsiclientd to 4.3.13.4 (Jan Schneider <j.schneider@uib.de>)

## [4.3.13.3-1] - 2025-06-06

### Fixed
- Upgrade opsiclientd to 4.3.13.1 (fixed opsi-script call, process listing, translation errors) (Jan Schneider <j.schneider@uib.de>)
- Upgrade oca-installation-helper to 4.3.3.0 (pull opsi-client-agent from depot)

## [4.3.13.1-1] - 2025-06-04

### Fixed
- Upgrade opsiclientd to 4.3.13.1 (fixed dutch translation) (Jan Schneider <j.schneider@uib.de>)

## [4.3.13.0-1] - 2025-06-02

### New
- Upgrade opsiclientd to 4.3.13.0 (cached server version, domain login) (Jan Schneider <j.schneider@uib.de>)
- Upgrade opsi-login-blocker to 4.3.1.0 (domain login) (Jan Schneider <j.schneider@uib.de>)

## [4.3.12.5-1] - 2025-05-28

### Fixed
- Upgrade opsiclientd to 4.3.12.5 (fix show service URL) (Jan Schneider <j.schneider@uib.de>)

## [4.3.12.4-3] - 2025-05-26

### Fixed
- Upgrade oca-installation-helper to 4.3.2.6 (fixed installation on slow machines) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.12.4-2] - 2025-05-26

### Changed
- Upgrade oca-installation-helper to 4.3.2.5 (Nils Doerrer <n.doerrer@uib.de>)
- Upgrade opsi-deploy-client-agent to 4.3.2.1 (Nils Doerrer <n.doerrer@uib.de>)


## [4.3.12.4-1] - 2025-05-26

### Changed
- Upgrade opsiclientd to 4.3.12.4 (WAN/VPN connection fixes) (Jan Schneider <j.schneider@uib.de>)

## [4.3.12.3-2] - 2025-05-16

### Changed
- Upgrade oca-installation-helper to 4.3.2.4 (allow trailing dot in client domain) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.12.3-1] - 2025-05-14

### Changed
- Upgrade opsiclientd to 4.3.12.3 (Fix CA store update) (Jan Schneider <j.schneider@uib.de>)

## [4.3.12.2-1] - 2025-05-14

### Changed
- Upgrade opsiclientd to 4.3.12.2 (reworked product cache) (Jan Schneider <j.schneider@uib.de>)

## [4.3.12.1-2] - 2025-05-13

### Changed
- Downgraded vcredist to 14.42.34438.0 (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.12.1-1] - 2025-05-12

### Changed
- Upgrade opsiclientd to 4.3.12.1 (smart cache for on_demand) (Jan Schneider <j.schneider@uib.de>)

## [4.3.12.0-1] - 2025-05-12

### Changed
- Upgrade opsiclientd to 4.3.12.0 (centralized service connection) (Jan Schneider <j.schneider@uib.de>)

## [4.3.11.1-1] - 2025-05-08

### Changed
- Upgrade oca-installation-helper to 4.3.2.3 (more robust against incomplete/missing 32bit powershell) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.11.0-1] - 2025-05-06

### Changed
- Upgrade opsi-deploy-client-agent to 4.3.2.0 (Jan Schneider <j.schneider@uib.de>)
- Upgrade opsiclientd to 4.3.11.0 (New config option global.send_sas_on_startup) (Jan Schneider <j.schneider@uib.de>)

## [4.3.10.5-2] - 2025-04-30

### Fixed
- Upgrade oca-installation-helper to 4.3.2.2 (reenabled installation on win7) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.10.5-1] - 2025-04-25

### Fixed
- Upgrade opsiclientd to 4.3.10.5 (fixed opsi-script execution from rpc) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.10.4-3] - 2025-04-22

### Changed
- Using control.toml (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.10.4-2] - 2025-04-17

### Fixed
- Fixed postinst scenario with patched values (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.10.4-1] - 2025-04-15

### Fixed
- Upgrade opsiclientd to 4.3.10.4 (Minor fix in event handling) (Nils Doerrer <n.doerrer@uib.de>)

### Changed
- Using oca-installation-helper for installation in netboot context (Nils Doerrer <n.doerrer@uib.de>)
- Upgraded microsoft_vcredist_2025-2022 to 14.44.35026.0 (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.10.3-1] - 2025-04-10

### Fixed
- Upgrade opsiclientd to 4.3.10.3 (Minor fix in event handling, fixed terminal connection timeout) (Nils Doerrer <n.doerrer@uib.de>)

### Changed
- Upgrade oca-installation-helper to 4.3.2.0 (New gui/tui components, loading installation files from depot) (Nils Doerrer <n.doerrer@uib.de>)
- Upgrade opsi-deploy-client-agent to 4.3.1.0 (Adaption to new installer mechanic) (Nils Doerrer <n.doerrer@uib.de>)
- Upgrade motd-notifier to 0.3.1 (Improved logging) (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.10.1-1] - 2025-04-04

### Changed
- Upgrade opsiclientd to 4.3.10.1 (reworked installation_pending mechanic) (Nils Doerrer <n.doerrer@uib.de>)
- Uninstall now updates Installation status before connection to server breaks (Nils Doerrer <n.doerrer@uib.de>)

## [4.3.10.0-1] - 2025-04-01

### Changed
- Upgrade opsiclientd to 4.3.10.0 (clientconfig.smart_cache) (Jan Schneider <j.schneider@uib.de>)

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
- Upgrade opsiclientd to 4.3.9.2 (Jan Schneider <j.schneider@uib.de>)

## [4.3.9.0-1] - 2025-03-07

### Changed
- Upgrade opsiclientd to 4.3.9.0 - showDialog (Jan Schneider <j.schneider@uib.de>)
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
- Update opsiclientd to 4.3.4.11 (Jan Schneider <j.schneider@uib.de>)
- Update oca-installation-helper to 4.3.1.2 (Jan Schneider <j.schneider@uib.de>)

## [4.3.4.10-1] - 2024-10-08

### Changed
- Update opsiclientd to 4.3.4.10 (Jan Schneider <j.schneider@uib.de>)

## [4.3.4.9-1] - 2024-10-07

### Changed
- Update opsiclientd to 4.3.4.9 (Jan Schneider <j.schneider@uib.de>)

## [4.3.4.8-1] - 2024-10-02

### Changed
- Update opsiclientd to 4.3.4.8 (Jan Schneider <j.schneider@uib.de>)

## [4.3.4.7-1] - 2024-10-01

### Changed
- Update opsiclientd to 4.3.4.7 (Jan Schneider <j.schneider@uib.de>)

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
