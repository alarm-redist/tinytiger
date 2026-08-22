# Download TIGER shapes for Combined Statistical Area

Download TIGER shapes for Combined Statistical Area

## Usage

``` r
tt_csa(year = 2021)
```

## Arguments

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
# Wrapped in try due to false positive 304 errors
try(tt_csa())
#> Simple feature collection with 175 features and 10 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -124.042 ymin: 17.83151 xmax: -65.42271 ymax: 49.00074
#> Geodetic CRS:  NAD83
#> # A tibble: 175 × 11
#>    CSAFP GEOID NAME        NAMELSAD LSAD  MTFCC   ALAND AWATER INTPTLAT INTPTLON
#>    <chr> <chr> <chr>       <chr>    <chr> <chr>   <dbl>  <dbl> <chr>    <chr>   
#>  1 104   104   Albany-Sch… Albany-… M0    G3100 1.57e10 5.28e8 +42.954… -073.90…
#>  2 106   106   Albuquerqu… Albuque… M0    G3100 6.17e10 1.84e8 +35.643… -106.02…
#>  3 107   107   Altoona-Hu… Altoona… M0    G3100 3.63e 9 4.11e7 +40.439… -078.11…
#>  4 108   108   Amarillo-P… Amarill… M0    G3100 2.04e10 1.13e8 +35.396… -101.59…
#>  5 118   118   Appleton-O… Appleto… M0    G3100 3.60e 9 5.95e8 +44.290… -088.37…
#>  6 120   120   Asheville-… Ashevil… M0    G3100 7.38e 9 4.08e7 +35.560… -082.60…
#>  7 122   122   Atlanta--A… Atlanta… M0    G3100 3.38e10 6.72e8 +33.728… -084.34…
#>  8 140   140   Bend-Prine… Bend-Pr… M0    G3100 1.55e10 1.16e8 +44.011… -120.76…
#>  9 142   142   Birmingham… Birming… M0    G3100 1.75e10 3.47e8 +33.527… -086.74…
#> 10 144   144   Bloomingto… Bloomin… M0    G3100 3.18e 9 5.73e7 +39.089… -086.60…
#> # ℹ 165 more rows
#> # ℹ 1 more variable: geometry <MULTIPOLYGON [°]>
```
