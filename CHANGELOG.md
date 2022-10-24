# Changelog

## Unreleased

## Version 4.1.5 - 2022-10-24
### Added
- Setup field to select cutoff date of incidents. EX: User can now choose to pull only the last 90 days of incidents.
### Fixed
- Fixed failure to pull incidents due to API change.

## Version 4.1.1 - 2021-11-03
### Added
- Additional logging around authentication.
### Fixed
- Fixed failure to run if projects is disabled.

## Version 4.1.0 - 2021-11-02
This is the first release in the new repository.
### Changed
- Python version was pinned to Python 3.
However, scripts should still work with Python 2.
- `bin/utils/splunk.py` was renamed for compatibility with Splunk 7.
- Use Prisma Cloud branding.
- Miscellaneous changes to satisfy some Splunk Cloud requirements.

## Version 4.0.0 - 2021-06-16
### Added
- Created app setup page.

## Version 3.2.3 - 2021-04-09
### Fixed
- Fixed issue with SaaS Console URL paths getting stripped.

## Version 3.2.2 - 2021-03-23
### Fixed
- Fixed issue with highest serial number tracking.
