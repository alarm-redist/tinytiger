## Test environments
* local R installation (Windows 11), R 4.2.1
* local R installation (macOS), R 4.2.1
* ubuntu 20.04 (on GitHub Actions), (devel and release)
* windows-latest (on GitHub Actions), (release)
* macOS-latest (on GitHub Actions), (release)
* Windows (on Winbuilder), (release)

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.
* Examples use `\dontrun{}`, as they require internet to function. All functions
use a Census FTP which almost always takes more than 5 seconds when successful. 
The server returns some false positive 304 errors, even when
the call has not been made from the IP address recently.
