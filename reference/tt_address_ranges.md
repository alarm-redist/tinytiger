# Download TIGER shapes for Address Ranges

Download TIGER shapes for Address Ranges

## Usage

``` r
tt_address_ranges(state, county, year = 2025)
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
try(tt_address_ranges("DE", county = "001")) # downloads slow on CRAN
#> Simple feature collection with 11367 features and 25 fields
#> Geometry type: LINESTRING
#> Dimension:     XY
#> Bounding box:  xmin: -75.7548 ymin: 38.83129 xmax: -75.32479 ymax: 39.34754
#> Geodetic CRS:  NAD83
#> # A tibble: 11,367 × 26
#>         TLID    TFIDL  TFIDR ARIDL ARIDR LINEARID FULLNAME LFROMHN LTOHN RFROMHN
#>  *     <dbl>    <dbl>  <dbl> <chr> <chr> <chr>    <chr>    <chr>   <chr> <chr>  
#>  1 655495815   2.63e8 2.12e8 NA    4001… 1103698… Taraila… NA      NA    18612  
#>  2 655495815   2.63e8 2.12e8 NA    4001… 1103698… Taraila… NA      NA    18600  
#>  3 655495815   2.63e8 2.12e8 NA    4001… 1103698… Taraila… NA      NA    18682  
#>  4 655495815   2.63e8 2.12e8 NA    4005… 1103698… Taraila… NA      NA    200    
#>  5 629494787   2.04e8 2.12e8 NA    4002… 1104481… Hog Ran… NA      NA    2      
#>  6 629494787   2.04e8 2.12e8 NA    4001… 1104481… Hog Ran… NA      NA    52     
#>  7 629494787   2.04e8 2.12e8 NA    4002… 1106060… Hickman… NA      NA    2      
#>  8 645644100   2.65e8 2.12e8 NA    4001… 1104481… Hog Ran… NA      NA    100    
#>  9 646445795   2.10e8 2.65e8 NA    4005… 1106262… Clayton… NA      NA    1498   
#> 10  68101346   2.12e8 2.12e8 4005… 4005… 1104481… Copley … 2       98    1      
#> # ℹ 11,357 more rows
#> # ℹ 16 more variables: RTOHN <chr>, ZIPL <chr>, ZIPR <chr>, EDGE_MTFCC <chr>,
#> #   ROAD_MTFCC <chr>, PARITYL <chr>, PARITYR <chr>, PLUS4L <chr>, PLUS4R <chr>,
#> #   LFROMTYP <chr>, LTOTYP <chr>, RFROMTYP <chr>, RTOTYP <chr>, OFFSETL <chr>,
#> #   OFFSETR <chr>, geometry <LINESTRING [°]>
```
