## Resubmission
This is a resubmission. Thank you for reviewing the first version. In this version I have:

* Expanded the Description field of the DESCRIPTION file to better explain functionality.

* Made the information message printing (on line 85 of `R/download.R`) use `message()`, rather than `cat()`.

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
* Examples use `try()`, as the server returns some false positive 304 errors, even when
the call has not been made from the IP address recently. 

