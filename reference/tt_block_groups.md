# Download TIGER shapes for block groups

Download TIGER shapes for block groups

## Usage

``` r
tt_block_groups(state, county, year = 2025)
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
try(tt_block_groups(state = "DE", county = "001")) # downloads slow on CRAN
#> Simple feature collection with 102 features and 13 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -75.76007 ymin: 38.82985 xmax: -75.13846 ymax: 39.38756
#> Geodetic CRS:  NAD83
#> # A tibble: 102 × 14
#>    STATEFP COUNTYFP TRACTCE BLKGRPCE GEOID       GEOIDFQ NAMELSAD MTFCC FUNCSTAT
#>  * <chr>   <chr>    <chr>   <chr>    <chr>       <chr>   <chr>    <chr> <chr>   
#>  1 10      001      041400  2        1000104140… 150000… Block G… G5030 S       
#>  2 10      001      041200  3        1000104120… 150000… Block G… G5030 S       
#>  3 10      001      040203  1        1000104020… 150000… Block G… G5030 S       
#>  4 10      001      040502  1        1000104050… 150000… Block G… G5030 S       
#>  5 10      001      043202  1        1000104320… 150000… Block G… G5030 S       
#>  6 10      001      043000  3        1000104300… 150000… Block G… G5030 S       
#>  7 10      001      043100  1        1000104310… 150000… Block G… G5030 S       
#>  8 10      001      040900  1        1000104090… 150000… Block G… G5030 S       
#>  9 10      001      041600  1        1000104160… 150000… Block G… G5030 S       
#> 10 10      001      041300  1        1000104130… 150000… Block G… G5030 S       
#> # ℹ 92 more rows
#> # ℹ 5 more variables: ALAND <dbl>, AWATER <dbl>, INTPTLAT <chr>,
#> #   INTPTLON <chr>, geometry <MULTIPOLYGON [°]>
```
