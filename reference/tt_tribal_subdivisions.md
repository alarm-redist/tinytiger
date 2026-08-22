# Download TIGER shapes for American Indian Tribal Subdivision National

Download TIGER shapes for American Indian Tribal Subdivision National

## Usage

``` r
tt_tribal_subdivisions(year = 2025)
```

## Arguments

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
# Wrapped in try due to false positive 304 errors
try(tt_tribal_subdivisions())
#> Simple feature collection with 484 features and 15 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -124.0932 ymin: 31.50786 xmax: -83.15803 ymax: 48.63591
#> Geodetic CRS:  NAD83
#> # A tibble: 484 × 16
#>    AIANNHCE TRSUBCE TRSUBNS  GEOID   GEOIDFQ  NAME  NAMELSAD LSAD  CLASSFP MTFCC
#>    <chr>    <chr>   <chr>    <chr>   <chr>    <chr> <chr>    <chr> <chr>   <chr>
#>  1 3680     160     02611186 3680160 2510000… Eagl… Eagle C… 00    D7      G2300
#>  2 3235     280     02418966 3235280 2510000… Hors… Horse C… T3    D7      G2300
#>  3 3235     400     02419040 3235400 2510000… Okre… Okreek … T3    D7      G2300
#>  4 3235     500     02419075 3235500 2510000… Ring… Ring Th… T3    D7      G2300
#>  5 1505     780     02419509 1505780 2510000… Uppe… Upper P… 07    D7      G2300
#>  6 1110     300     02418932 1110300 2510000… Elmo… Elmo-Da… 07    D7      G2300
#>  7 1110     500     02419019 1110500 2510000… Miss… Mission… 07    D7      G2300
#>  8 1110     600     02419045 1110600 2510000… Pablo Pablo D… 07    D7      G2300
#>  9 1110     650     02419060 1110650 2510000… Pols… Polson … 07    D7      G2300
#> 10 1505     570     02419117 1505570 2510000… RU570 RU570    00    D7      G2300
#> # ℹ 474 more rows
#> # ℹ 6 more variables: FUNCSTAT <chr>, ALAND <dbl>, AWATER <dbl>,
#> #   INTPTLAT <chr>, INTPTLON <chr>, geometry <MULTIPOLYGON [°]>
```
