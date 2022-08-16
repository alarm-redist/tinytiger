## Test environments
* local R installation, MacOS, R 4.2.0
* macos-latest (on gh-actions), (release)
* windows-latest (on gh-actions), (release)
* ubuntu 20.04 (on gh-actions), (release)
* ubuntu 20.04 (on gh-actions) (devel)
* ubuntu 20.04 (on gh-actions) (old-release)

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.
* Examples are all \dontrun{} since they all call to a Census API which is often
slow and may return an error depending on if a similar recent call has been made
from the IP address. They are all tested locally.
