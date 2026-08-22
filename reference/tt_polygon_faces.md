# Download TIGER shapes for Polygon Faces

Download TIGER shapes for Polygon Faces

## Usage

``` r
tt_polygon_faces(state, county, year = 2025)
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
try(tt_polygon_faces("DE", county = "001")) # downloads slow on CRAN
#> Simple feature collection with 6580 features and 42 fields
#> Geometry type: POLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -75.76007 ymin: 38.82985 xmax: -75.13846 ymax: 39.38756
#> Geodetic CRS:  NAD83
#> # A tibble: 6,580 × 43
#>         TFID STATEFP20 COUNTYFP20 TRACTCE20 BLKGRPCE20 BLOCKCE20 SUFFIX1CE
#>  *     <dbl> <chr>     <chr>      <chr>     <chr>      <chr>     <chr>    
#>  1 224044873 10        001        042203    3          3015      NA       
#>  2 211662053 10        001        042203    3          3012      NA       
#>  3 211662054 10        001        042203    3          3014      NA       
#>  4 211662055 10        001        042203    3          3024      NA       
#>  5 211662056 10        001        042203    3          3017      NA       
#>  6 211662057 10        001        042203    3          3016      NA       
#>  7 211662063 10        001        042100    2          2004      NA       
#>  8 267429488 10        001        042203    1          1001      NA       
#>  9 258930506 10        001        042204    2          2000      NA       
#> 10 229161457 10        001        042203    1          1012      NA       
#> # ℹ 6,570 more rows
#> # ℹ 36 more variables: ZCTA5CE20 <chr>, UACE20 <chr>, PUMACE20 <chr>,
#> #   STATEFP <chr>, COUNTYFP <chr>, TRACTCE <chr>, BLKGRPCE <chr>,
#> #   COUSUBFP <chr>, SUBMCDFP <chr>, ESTATEFP <chr>, CONCTYFP <chr>,
#> #   PLACEFP <chr>, AIANNHFP <chr>, AIANNHCE <chr>, COMPTYP <chr>,
#> #   TRSUBFP <chr>, TRSUBCE <chr>, ANRCFP <chr>, TTRACTCE <chr>, TBLKGPCE <chr>,
#> #   ELSDLEA <chr>, SCSDLEA <chr>, UNSDLEA <chr>, SDADMLEA <chr>, …
```
