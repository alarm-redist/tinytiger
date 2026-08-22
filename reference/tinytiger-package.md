# tinytiger: Lightweight Interface to TIGER/Line Shapefiles

Download geographic shapes from the [United States Census Bureau
TIGER/Line
Shapefiles](https://www.census.gov/geographies/mapping-files/time-series/geo/tiger-line-file.html).

## Details

By default, downloading will print status messages and/or a progress
bar. For silent downloads, set `option(tinytiger.curl_quiet = TRUE)`.

Downloads will go to `option(tinytiger.cache_dir)` if it is set. If it
is not, and `rappdirs` is installed, downloads will be cached between
sessions in `rappdirs::user_cache_dir("tinytiger")`. If it is not
installed, or if `option(tinytiger.use_cache = FALSE)`, then the cache
will be in a temporary directory that does not persist between sessions.

## See also

Useful links:

- <https://github.com/alarm-redist/tinytiger>

- <https://alarm-redist.org/tinytiger/>

- Report bugs at <https://github.com/alarm-redist/tinytiger/issues>

## Author

**Maintainer**: Christopher T. Kenny <christopherkenny@fas.harvard.edu>
([ORCID](https://orcid.org/0000-0002-9386-6860))

Authors:

- Cory McCartan <cmccartan@g.harvard.edu>
