# Download TIGER shapes for Area Landmarks

Download TIGER shapes for Area Landmarks

## Usage

``` r
tt_area_landmarks(state, year = 2025)
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
try(tt_area_landmarks("DE")) # downloads slow on CRAN
#> Simple feature collection with 194 features and 10 fields
#> Geometry type: POLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -75.78801 ymin: 38.45122 xmax: -75.0488 ymax: 39.82418
#> Geodetic CRS:  NAD83
#> # A tibble: 194 × 11
#>    STATEFP ANSICODE AREAID        FULLNAME MTFCC  ALAND AWATER INTPTLAT INTPTLON
#>  * <chr>   <chr>    <chr>         <chr>    <chr>  <dbl>  <dbl> <chr>    <chr>   
#>  1 10      NA       1104485215664 Sussex … K1237  23033      0 +38.657… -75.368…
#>  2 10      NA       1104485216246 Univers… K2540 137635      0 +38.784… -75.160…
#>  3 10      NA       1104485215461 Sussex … K1237  21029      0 +38.658… -75.372…
#>  4 10      NA       110156822754… Wilming… K1231  39922      0 +39.750… -75.550…
#>  5 10      NA       1104484258946 Baylor … K1237  70792      0 +39.703… -75.581…
#>  6 10      NA       1108311113408 Rookery… K2561 592372      0 +38.898… -75.408…
#>  7 10      NA       1108311118906 Goshen … K2582   6144      0 +38.775… -75.309…
#>  8 10      NA       1108311119377 G W Car… K2543  22274      0 +38.520… -75.223…
#>  9 10      NA       1104485016448 Univ of… K2540 826426      0 +39.679… -75.751…
#> 10 10      NA       110156822739… Brandyw… K2188 565028  68803 +39.756… -75.551…
#> # ℹ 184 more rows
#> # ℹ 2 more variables: PARTFLG <chr>, geometry <POLYGON [°]>
```
