# Download TIGER shapes for Point Landmarks

Download TIGER shapes for Point Landmarks

## Usage

``` r
tt_point_landmarks(state, year = 2025)
```

## Arguments

- state:

  FIPS, postal codes, or full names of states.

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
# Wrapped in try due to false positive 304 errors
try(tt_point_landmarks("DE")) # downloads slow on CRAN
#> Simple feature collection with 5209 features and 5 fields
#> Geometry type: POINT
#> Dimension:     XY
#> Bounding box:  xmin: -75.78852 ymin: 38.45149 xmax: -75.05042 ymax: 39.83727
#> Geodetic CRS:  NAD83
#> # A tibble: 5,209 × 6
#>    STATEFP ANSICODE POINTID        FULLNAME      MTFCC             geometry
#>  * <chr>   <chr>    <chr>          <chr>         <chr>          <POINT [°]>
#>  1 10      NA       11015504289662 Bayhealth Me… K2460 (-75.52416 39.15139)
#>  2 10      00217778 1102652910156  Sunset Memor… K2582 (-75.54854 39.17872)
#>  3 10      00214013 1102652909901  Gracelawn Me… K2582 (-75.56784 39.69886)
#>  4 10      00216460 1102652909927  Henlopen Mem… K2582 (-75.24602 38.79178)
#>  5 10      00214438 1102652910073  Peoples Memo… K2582 (-75.13352 38.73233)
#>  6 10      NA       11015504289631 Dover Air Fo… K2451 (-75.46596 39.12954)
#>  7 10      NA       11015504289658 Spirit Airpa… K2451 (-75.74456 39.37304)
#>  8 10      NA       11015504289677 Delaware Air… K2451 (-75.59667 39.21833)
#>  9 10      NA       11015504289647 Pevey Arprt   K2451 (-75.69838 38.61205)
#> 10 10      NA       11015504289664 West Private… K2451 (-75.16419 38.51677)
#> # ℹ 5,199 more rows
```
