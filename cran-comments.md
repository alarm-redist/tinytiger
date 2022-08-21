## Resubmission
This is a resubmission. Thank you for reviewing the first version. In this version I have:

* Expanded the Description field of the DESCRIPTION file to better explain functionality.

* All `\dontrun{}`s in examples have been replaced with `try()`. The the Census server throws 304 errors randomly.
Some examples have been adjusted to ensure they (should) finish in under 5 seconds.

* Tests have been added to run each of the download functions. As the examples are wrapped in `try()`,
these tests check that it either downloads sucessfully or that the error is likely a 304 error. 
If either of those is true, then it succeeds. Other errors will cause it to fail.

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

