# Download TIGER shapes for tracts

Download TIGER shapes for tracts

## Usage

``` r
tt_tracts(state, county, year = 2025)
```

## Arguments

- state:

  FIPS, postal codes, or full names of states.

- county:

  FIPS codes or full names of counties. Optional.

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
# Wrapped in try due to false positive 304 errors
try(tt_tracts(state = "DE", county = "001")) # downloads slow on CRAN
#> Simple feature collection with 42 features and 13 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -75.76007 ymin: 38.82985 xmax: -75.13846 ymax: 39.38756
#> Geodetic CRS:  NAD83
#> # A tibble: 42 × 14
#>    STATEFP COUNTYFP TRACTCE GEOID   GEOIDFQ NAME  NAMELSAD MTFCC FUNCSTAT  ALAND
#>  * <chr>   <chr>    <chr>   <chr>   <chr>   <chr> <chr>    <chr> <chr>     <dbl>
#>  1 10      001      042801  100010… 140000… 428.… Census … G5020 S        8.90e7
#>  2 10      001      040900  100010… 140000… 409   Census … G5020 S        1.40e6
#>  3 10      001      042500  100010… 140000… 425   Census … G5020 S        7.73e6
#>  4 10      001      043000  100010… 140000… 430   Census … G5020 S        4.05e7
#>  5 10      001      040203  100010… 140000… 402.… Census … G5020 S        5.99e7
#>  6 10      001      041702  100010… 140000… 417.… Census … G5020 S        6.01e6
#>  7 10      001      040700  100010… 140000… 407   Census … G5020 S        6.10e6
#>  8 10      001      041600  100010… 140000… 416   Census … G5020 S        2.77e6
#>  9 10      001      041802  100010… 140000… 418.… Census … G5020 S        3.46e7
#> 10 10      001      041900  100010… 140000… 419   Census … G5020 S        8.31e7
#> # ℹ 32 more rows
#> # ℹ 4 more variables: AWATER <dbl>, INTPTLAT <chr>, INTPTLON <chr>,
#> #   geometry <MULTIPOLYGON [°]>
```
