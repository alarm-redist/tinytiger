# Download TIGER shapes for Tribal Block Groups

Download TIGER shapes for Tribal Block Groups

## Usage

``` r
tt_tribal_block_groups(year = 2025)
```

## Arguments

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
# Wrapped in try due to false positive 304 errors
try(tt_tribal_block_groups())
#> Simple feature collection with 935 features and 11 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -131.7133 ymin: 25.75745 xmax: -67.03552 ymax: 55.29398
#> Geodetic CRS:  NAD83
#> # A tibble: 935 × 12
#>    AIANNHCE TTRACTCE TBLKGPCE GEOID       GEOIDFQ   NAMELSAD MTFCC  ALAND AWATER
#>    <chr>    <chr>    <chr>    <chr>       <chr>     <chr>    <chr>  <dbl>  <dbl>
#>  1 2785     T00100   B        2785T00100B 2580000U… Tribal … G2410 3.45e7 0     
#>  2 2785     T00100   A        2785T00100A 2580000U… Tribal … G2410 3.64e7 7.08e3
#>  3 1555     T00100   A        1555T00100A 2580000U… Tribal … G2410 2.47e6 2.11e4
#>  4 1560     T00100   A        1560T00100A 2580000U… Tribal … G2410 3.48e6 0     
#>  5 1575     T00100   A        1575T00100A 2580000U… Tribal … G2410 9.72e7 1.79e7
#>  6 1590     T00100   A        1590T00100A 2580000U… Tribal … G2410 5.15e7 2.49e4
#>  7 1640     T00100   A        1640T00100A 2580000U… Tribal … G2410 1.19e6 0     
#>  8 1655     T00100   A        1655T00100A 2580000U… Tribal … G2410 4.54e6 7.06e4
#>  9 1670     T00100   A        1670T00100A 2580000U… Tribal … G2410 5.95e4 0     
#> 10 4075     T00100   A        4075T00100A 2580000U… Tribal … G2410 1.04e7 1.97e6
#> # ℹ 925 more rows
#> # ℹ 3 more variables: INTPTLAT <chr>, INTPTLON <chr>,
#> #   geometry <MULTIPOLYGON [°]>
```
