## Test environments
* local R installation (Windows 11), R 4.2.1
* local R installation (macOS), R 4.2.1
* ubuntu 20.04 (on GitHub Actions), (devel and release)
* windows-latest (on GitHub Actions), (release)
* macOS-latest (on GitHub Actions), (release)
* Windows (on Winbuilder), (release)

## R CMD check results

0 errors | 0 warnings | 0 notes

* This version fixes errors on CRAN regarding cached data not being cleared.

* Examples use `try()`, as the server returns some false positive 304 errors, even when
the call has not been made from the IP address recently.
Some examples are wrapped in `\donttest{}` if they may not finish in under 5 seconds.

