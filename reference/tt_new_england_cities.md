# Download TIGER shapes for New England City and Town Area

Download TIGER shapes for New England City and Town Area

## Usage

``` r
tt_new_england_cities(year = 2025)
```

## Arguments

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
# Wrapped in try due to false positive 304 errors
try(tt_new_england_cities()) # downloads slow on CRAN
#> Error in curl::curl_download(url, path, quiet = quiet) : 
#>   HTTP response code said error [www2.census.gov]:
#> The requested URL returned error: 404
```
