# Download TIGER shapes for Primary and Secondary Roads

Download TIGER shapes for Primary and Secondary Roads

## Usage

``` r
tt_primary_secondary_roads(state, year = 2025)
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
try(tt_primary_secondary_roads("DE")) # downloads slow on CRAN
#> Simple feature collection with 1165 features and 4 fields
#> Geometry type: LINESTRING
#> Dimension:     XY
#> Bounding box:  xmin: -75.78889 ymin: 38.45123 xmax: -75.05154 ymax: 39.83893
#> Geodetic CRS:  NAD83
#> # A tibble: 1,165 × 5
#>    LINEARID       FULLNAME         RTTYP MTFCC                          geometry
#>  * <chr>          <chr>            <chr> <chr>                  <LINESTRING [°]>
#>  1 1106092739328  Union St Exd     M     S1200 (-75.31561 38.78802, -75.31579 3…
#>  2 110412184844   Rehoboth Ave Exd M     S1200 (-75.08912 38.71532, -75.08938 3…
#>  3 11038622316759 Milford Byp      M     S1200 (-75.40251 38.91756, -75.40306 3…
#>  4 110448141044   Milford Byp      M     S1200 (-75.40277 38.91742, -75.40391 3…
#>  5 1104271252090  State Rd 14 Byp  S     S1200 (-75.57154 38.89505, -75.57158 3…
#>  6 110431734688   State Rd 9 Alt   S     S1200 (-75.54089 39.73356, -75.54079 3…
#>  7 1104745478602  State Rd 1 Alt   S     S1200 (-75.08186 38.71596, -75.08189 3…
#>  8 1104257868162  State Rd 10 Alt  S     S1200 (-75.63661 39.05979, -75.63601 3…
#>  9 1104299336348  US Hwy 13 Alt    U     S1200 (-75.53073 39.12769, -75.53076 3…
#> 10 1104746063601  State Rd 1 Alt   S     S1200 (-75.07575 38.69852, -75.07575 3…
#> # ℹ 1,155 more rows
```
