# Download TIGER shapes for Primary Roads

Download TIGER shapes for Primary Roads

## Usage

``` r
tt_primary_roads(year = 2025)
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
try(tt_primary_roads()) # downloads slow on CRAN
#> Simple feature collection with 17500 features and 4 fields
#> Geometry type: LINESTRING
#> Dimension:     XY
#> Bounding box:  xmin: -158.1042 ymin: 17.97417 xmax: -65.64866 ymax: 61.57123
#> Geodetic CRS:  NAD83
#> # A tibble: 17,500 × 5
#>    LINEARID      FULLNAME          RTTYP MTFCC                          geometry
#>    <chr>         <chr>             <chr> <chr>                  <LINESTRING [°]>
#>  1 1108296490085 Liberty Expy      M     S1100 (-84.22256 31.62253, -84.22222 3…
#>  2 1108296492349 Liberty Expy      M     S1100 (-106.426 31.82636, -106.4238 31…
#>  3 1108296492353 Liberty Expy      M     S1100 (-106.4271 31.82613, -106.4238 3…
#>  4 1108296490069 Liberty Expy      M     S1100 (-84.11222 31.56809, -84.11203 3…
#>  5 1108296312361 Liberty Expy      M     S1100 (-84.22133 31.62254, -84.22187 3…
#>  6 1108296312350 Liberty Expy      M     S1100 (-84.22256 31.62253, -84.22286 3…
#>  7 1108296492783 Lewis & Clark Hwy M     S1100 (-122.6672 45.62092, -122.6665 4…
#>  8 1109072948099 Hart Expy         M     S1100 (-81.61462 30.30421, -81.61324 3…
#>  9 1108296483833 Hart Expy         M     S1100 (-81.6156 30.3053, -81.61422 30.…
#> 10 1108296489296 Hart Expy         M     S1100 (-81.64815 30.326, -81.64805 30.…
#> # ℹ 17,490 more rows
```
