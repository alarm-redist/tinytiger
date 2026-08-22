# Download TIGER Shapes for Area Water

Download TIGER Shapes for Area Water

## Usage

``` r
tt_area_water(state, county, year = 2025)
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
try(tt_area_water("DE")) # downloads slow on CRAN
#> Simple feature collection with 628 features and 8 fields
#> Geometry type: POLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -75.77946 ymin: 38.45113 xmax: -74.98416 ymax: 39.83888
#> Geodetic CRS:  NAD83
#> # A tibble: 628 × 9
#>    ANSICODE HYDROID       FULLNAME     MTFCC ALAND    AWATER INTPTLAT   INTPTLON
#>  * <chr>    <chr>         <chr>        <chr> <dbl>     <dbl> <chr>      <chr>   
#>  1 NA       110448191315  Cypress Pond H2030     0      9003 +39.09575… -75.488…
#>  2 NA       110448191282  Mud Millpond H2030     0    124382 +39.07093… -75.739…
#>  3 NA       110448191382  NA           H2030     0    134107 +39.10654… -75.467…
#>  4 NA       110448191384  NA           H2030     0    237356 +39.08998… -75.405…
#>  5 NA       1104476647423 Delaware Bay H2051     0 520171395 +39.12519… -75.314…
#>  6 NA       110448191416  NA           H2030     0     40793 +39.22799… -75.427…
#>  7 NA       1108311984751 NA           H2030     0    100324 +39.08483… -75.413…
#>  8 NA       110448191394  NA           H2030     0     38510 +39.01648… -75.420…
#>  9 NA       110448191402  NA           H2030     0     32417 +39.02211… -75.349…
#> 10 NA       110448191331  Griffith Lk  H2030     0     85125 +38.90956… -75.470…
#> # ℹ 618 more rows
#> # ℹ 1 more variable: geometry <POLYGON [°]>
```
