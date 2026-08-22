# Download TIGER Shapes for Linear Water

Download TIGER Shapes for Linear Water

## Usage

``` r
tt_linear_water(state, county, year = 2025)
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
try(tt_linear_water("DE")) # downloads slow on CRAN
#> Simple feature collection with 2655 features and 5 fields
#> Geometry type: LINESTRING
#> Dimension:     XY
#> Bounding box:  xmin: -75.789 ymin: 38.45118 xmax: -75.05477 ymax: 39.83952
#> Geodetic CRS:  NAD83
#> # A tibble: 2,655 × 6
#>    ANSICODE LINEARID     FULLNAME        ARTPATH MTFCC                  geometry
#>  * <chr>    <chr>        <chr>           <chr>   <chr>          <LINESTRING [°]>
#>  1 NA       110448161593 NA              N       H3010 (-75.60288 39.0814, -75.…
#>  2 NA       110448161780 NA              N       H3010 (-75.56653 39.05533, -75…
#>  3 NA       110448161777 NA              N       H3010 (-75.57397 39.05042, -75…
#>  4 NA       110448161760 NA              N       H3010 (-75.56472 39.03692, -75…
#>  5 NA       110448161635 NA              N       H3010 (-75.50861 39.02476, -75…
#>  6 NA       110448161436 NA              N       H3010 (-75.59699 39.00125, -75…
#>  7 NA       110448141275 Choptank Riv    N       H3010 (-75.7398 39.04362, -75.…
#>  8 NA       110448153269 Luther Marvel … N       H3010 (-75.67029 39.08168, -75…
#>  9 NA       110448139582 Ross Prong      N       H3010 (-75.6539 39.09036, -75.…
#> 10 NA       110448161562 NA              N       H3010 (-75.67847 39.085, -75.6…
#> # ℹ 2,645 more rows
```
