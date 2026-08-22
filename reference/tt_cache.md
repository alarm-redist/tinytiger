# Work with the the `tinytiger` cache

Functions to inspect and clear the cache. If the cache is not enabled,
uses a temporary directory.

## Usage

``` r
tt_cache_size()

tt_cache_clear(force = FALSE)

tt_cache_path()
```

## Arguments

- force:

  FALSE by default. Asks the user to confirm if interactive. Does not
  clear cache if force is FALSE and not interactive.

## Value

For `tt_cache_size()`, tthe size in bytes, invisbly

For `tt_cache_clear()`, the path to the cache, invisbly.

For `tt_cache_path()`, the path to the cache

## Examples

``` r
tt_cache_size()
#> 49.5 Mb

tt_cache_clear()

tt_cache_path()
#> [1] "/tmp/RtmpmuWLGo"
```
