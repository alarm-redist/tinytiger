# Download TIGER shapes for Roads

Download TIGER shapes for Roads

## Usage

``` r
tt_roads(state, county, year = 2025)
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
try(tt_roads("DE")) # downloads slow on CRAN
#> Simple feature collection with 33395 features and 4 fields
#> Geometry type: LINESTRING
#> Dimension:     XY
#> Bounding box:  xmin: -75.78889 ymin: 38.45118 xmax: -75.04984 ymax: 39.83948
#> Geodetic CRS:  NAD83
#> # A tibble: 33,395 × 5
#>    LINEARID       FULLNAME          RTTYP MTFCC                         geometry
#>  * <chr>          <chr>             <chr> <chr>                 <LINESTRING [°]>
#>  1 110448139428   N High St Exd     M     S1400 (-75.62009 39.30074, -75.62007 …
#>  2 1102186618422  S Lakeview Dr Exd M     S1400 (-75.52004 39.16857, -75.51971 …
#>  3 110448140003   S Shore Dr Exd    M     S1400 (-75.52436 39.12675, -75.52448 …
#>  4 1102186610396  Troon Rd Exd      M     S1400 (-75.56575 39.18153, -75.56637 …
#>  5 1103623114759  Williams Exd      M     S1400 (-75.4025 39.06012, -75.40293 3…
#>  6 110448139723   Clara St Exd      M     S1400 (-75.5445 39.1638, -75.54354 39…
#>  7 1103678329515  Arnold Dr Exd     M     S1400 (-75.48887 39.13227, -75.48882 …
#>  8 110448140186   Center St Exd     M     S1400 (-75.56717 38.92757, -75.5673 3…
#>  9 11033373476730 Pine St Exn       M     S1400 (-75.50944 38.91027, -75.50948 …
#> 10 11038622316759 Milford Byp       M     S1200 (-75.40251 38.91756, -75.40306 …
#> # ℹ 33,385 more rows
```
