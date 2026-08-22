# Download TIGER shapes for Tribal Tracts

Download TIGER shapes for Tribal Tracts

## Usage

``` r
tt_tribal_tracts(year = 2025)
```

## Arguments

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
# Wrapped in try due to false positive 304 errors
try(tt_tribal_tracts())
#> Simple feature collection with 493 features and 11 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -131.7133 ymin: 25.75745 xmax: -67.03552 ymax: 55.29398
#> Geodetic CRS:  NAD83
#> # A tibble: 493 × 12
#>    AIANNHCE TTRACTCE GEOID   GEOIDFQ NAME  NAMELSAD MTFCC  ALAND AWATER INTPTLAT
#>    <chr>    <chr>    <chr>   <chr>   <chr> <chr>    <chr>  <dbl>  <dbl> <chr>   
#>  1 0780     T00100   0780T0… 256000… T001  Tribal … G2400 3.08e6      0 +39.018…
#>  2 0795     T00100   0795T0… 256000… T001  Tribal … G2400 1.13e7  18952 +30.527…
#>  3 2560     T00300   2560T0… 256000… T003  Tribal … G2400 4.31e6      0 +44.520…
#>  4 2560     T00400   2560T0… 256000… T004  Tribal … G2400 1.11e7  17646 +44.510…
#>  5 1135     T00100   1135T0… 256000… T001  Tribal … G2400 5.87e7 183387 +45.439…
#>  6 1055     T00100   1055T0… 256000… T001  Tribal … G2400 3.35e5      0 +39.561…
#>  7 1065     T00100   1065T0… 256000… T001  Tribal … G2400 2.21e7      0 +32.841…
#>  8 2900     T00100   2900T0… 256000… T001  Tribal … G2400 8.29e5      0 +42.712…
#>  9 4170     T00100   4170T0… 256000… T001  Tribal … G2400 6.98e7      0 +35.802…
#> 10 3020     T00100   3020T0… 256000… T001  Tribal … G2400 2.87e6  15011 +41.609…
#> # ℹ 483 more rows
#> # ℹ 2 more variables: INTPTLON <chr>, geometry <MULTIPOLYGON [°]>
```
