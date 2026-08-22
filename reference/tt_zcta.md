# Download TIGER shapes for Zip Code Tabulation Areas

Download TIGER shapes for Zip Code Tabulation Areas

## Usage

``` r
tt_zcta(year = 2025)
```

## Arguments

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
 # takes > 5 seconds
# Wrapped in try due to false positive 304 errors
try(tt_zcta()) # downloads slow on CRAN
#> Simple feature collection with 33791 features and 10 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -176.6967 ymin: -14.37378 xmax: 145.8305 ymax: 71.34132
#> Geodetic CRS:  NAD83
#> # A tibble: 33,791 × 11
#>    ZCTA5CE20 GEOID20 GEOIDFQ20     CLASSFP20 MTFCC20 FUNCSTAT20 ALAND20 AWATER20
#>    <chr>     <chr>   <chr>         <chr>     <chr>   <chr>        <dbl>    <dbl>
#>  1 81137     81137   860Z200US811… B5        G6350   S           6.69e8 16883364
#>  2 80823     80823   860Z200US808… B5        G6350   S           7.32e8  2846899
#>  3 81237     81237   860Z200US812… B5        G6350   S           1.40e8    99778
#>  4 81251     81251   860Z200US812… B5        G6350   S           3.60e8  9653596
#>  5 81435     81435   860Z200US814… B5        G6350   S           4.95e8  1109655
#>  6 81413     81413   860Z200US814… B5        G6350   S           3.97e8  6044571
#>  7 81040     81040   860Z200US810… B5        G6350   S           1.23e9   426600
#>  8 80745     80745   860Z200US807… B5        G6350   S           3.97e8    35014
#>  9 81252     81252   860Z200US812… B5        G6350   S           1.59e9  3103440
#> 10 81330     81330   860Z200US813… B5        G6350   S           1.66e8        0
#> # ℹ 33,781 more rows
#> # ℹ 3 more variables: INTPTLAT20 <chr>, INTPTLON20 <chr>,
#> #   geometry <MULTIPOLYGON [°]>
```
