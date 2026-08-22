# Download TIGER shapes for blocks

Download TIGER shapes for blocks

## Usage

``` r
tt_blocks(state, county, year = 2025)
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
try(tt_blocks(state = "DE", county = "001"))
#> Simple feature collection with 4133 features and 17 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -75.76007 ymin: 38.82985 xmax: -75.13846 ymax: 39.38756
#> Geodetic CRS:  NAD83
#> # A tibble: 4,133 × 18
#>    STATEFP20 COUNTYFP20 TRACTCE20 BLOCKCE20 GEOID20     GEOIDFQ20 NAME20 MTFCC20
#>  * <chr>     <chr>      <chr>     <chr>     <chr>       <chr>     <chr>  <chr>  
#>  1 10        001        042204    2039      1000104220… 1000000U… Block… G5040  
#>  2 10        001        042205    2022      1000104220… 1000000U… Block… G5040  
#>  3 10        001        042205    1013      1000104220… 1000000U… Block… G5040  
#>  4 10        001        042100    2078      1000104210… 1000000U… Block… G5040  
#>  5 10        001        041702    1016      1000104170… 1000000U… Block… G5040  
#>  6 10        001        042203    3012      1000104220… 1000000U… Block… G5040  
#>  7 10        001        041200    1048      1000104120… 1000000U… Block… G5040  
#>  8 10        001        042100    2023      1000104210… 1000000U… Block… G5040  
#>  9 10        001        042203    2007      1000104220… 1000000U… Block… G5040  
#> 10 10        001        042100    2057      1000104210… 1000000U… Block… G5040  
#> # ℹ 4,123 more rows
#> # ℹ 10 more variables: UR20 <chr>, UACE20 <chr>, FUNCSTAT20 <chr>,
#> #   ALAND20 <dbl>, AWATER20 <dbl>, INTPTLAT20 <chr>, INTPTLON20 <chr>,
#> #   HOUSING20 <dbl>, POP20 <dbl>, geometry <MULTIPOLYGON [°]>
```
