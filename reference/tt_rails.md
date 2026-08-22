# Download TIGER shapes for Rails

Download TIGER shapes for Rails

## Usage

``` r
tt_rails(year = 2025)
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
try(tt_rails()) # downloads slow on CRAN
#> Simple feature collection with 113047 features and 3 fields
#> Geometry type: LINESTRING
#> Dimension:     XY
#> Bounding box:  xmin: -158.1354 ymin: 17.99774 xmax: -65.90612 ymax: 64.92612
#> Geodetic CRS:  NAD83
#> # A tibble: 113,047 × 4
#>    LINEARID       FULLNAME                       MTFCC                  geometry
#>    <chr>          <chr>                          <chr>          <LINESTRING [°]>
#>  1 11035783463712 Pennsylvania & Southern Railw… R1011 (-77.63079 39.99208, -77…
#>  2 11035783463859 Pennsylvania & Southern Railw… R1011 (-77.63353 39.99495, -77…
#>  3 11035783463879 Pennsylvania & Southern Railw… R1011 (-77.63319 39.99483, -77…
#>  4 11035783639538 Pennsylvania & Southern Railw… R1011 (-77.63107 39.99248, -77…
#>  5 11035783639541 Pennsylvania & Southern Railw… R1011 (-77.63079 39.99208, -77…
#>  6 11035783639542 Pennsylvania & Southern Railw… R1011 (-77.63292 39.9939, -77.…
#>  7 11035783639543 Pennsylvania & Southern Railw… R1011 (-77.63053 39.99128, -77…
#>  8 11035783639545 Pennsylvania & Southern Railw… R1011 (-77.63169 39.98965, -77…
#>  9 11035783639546 Pennsylvania & Southern Railw… R1011 (-77.63097 39.99092, -77…
#> 10 11035783639547 Pennsylvania & Southern Railw… R1011 (-77.63097 39.99092, -77…
#> # ℹ 113,037 more rows
```
