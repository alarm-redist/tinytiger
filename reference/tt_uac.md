# Download TIGER shapes for Urban Area

Download TIGER shapes for Urban Area

## Usage

``` r
tt_uac(year = 2025)
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
try(tt_uac()) # downloads slow on CRAN
#> Simple feature collection with 2644 features and 12 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -170.7893 ymin: -14.36542 xmax: 145.7916 ymax: 64.92889
#> Geodetic CRS:  NAD83
#> # A tibble: 2,644 × 13
#>    UACE20 GEOID20 GEOIDFQ20  NAME20 NAMELSAD20 LSAD20 MTFCC20 FUNCSTAT20 ALAND20
#>    <chr>  <chr>   <chr>      <chr>  <chr>      <chr>  <chr>   <chr>        <dbl>
#>  1 11139  11139   400C200US… Bucke… Buckeye N… 67     G3500   S           7.28e6
#>  2 34286  34286   400C200US… Grand… Grand Lak… 67     G3500   S           1.39e7
#>  3 72620  72620   400C200US… Puebl… Pueblo We… 67     G3500   S           5.71e7
#>  4 24539  24539   400C200US… Dougl… Douglas, … 67     G3500   S           1.10e7
#>  5 81472  81472   400C200US… Shena… Shenandoa… 67     G3500   S           7.59e6
#>  6 43064  43064   400C200US… Jerse… Jersey Sh… 67     G3500   S           1.89e7
#>  7 37145  37145   400C200US… Harri… Harrison,… 67     G3500   S           1.93e7
#>  8 72410  72410   400C200US… Princ… Princevil… 67     G3500   S           7.54e6
#>  9 95411  95411   400C200US… Willi… Williamsb… 67     G3500   S           1.81e8
#> 10 38172  38172   400C200US… Helen… Helena-We… 67     G3500   S           1.58e7
#> # ℹ 2,634 more rows
#> # ℹ 4 more variables: AWATER20 <dbl>, INTPTLAT20 <chr>, INTPTLON20 <chr>,
#> #   geometry <MULTIPOLYGON [°]>
```
