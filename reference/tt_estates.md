# Download TIGER shapes for Estates (US Virgin Islands)

Download TIGER shapes for Estates (US Virgin Islands)

## Usage

``` r
tt_estates(year = 2025)
```

## Arguments

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
# Wrapped in try due to false positive 304 errors
try(tt_estates()) # downloads slow on CRAN
#> Simple feature collection with 416 features and 16 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -65.06434 ymin: 17.67393 xmax: -64.56519 ymax: 18.41538
#> Geodetic CRS:  NAD83
#> # A tibble: 416 × 17
#>    STATEFP COUNTYFP ESTATEFP ESTATENS GEOID GEOIDFQ NAME  NAMELSAD LSAD  CLASSFP
#>    <chr>   <chr>    <chr>    <chr>    <chr> <chr>   <chr> <chr>    <chr> <chr>  
#>  1 78      010      54930    01994269 7801… 06V000… Litt… Estate … 52    Z1     
#>  2 78      020      35750    01994207 7802… 06V000… Fish… Estate … 52    Z1     
#>  3 78      010      77760    01994404 7801… 06V000… Teag… Estate … 52    Z1     
#>  4 78      010      59550    01994220 7801… 06V000… Nort… Estate … 52    Z1     
#>  5 78      010      27525    01994189 7801… 06V000… Cott… Estate … 52    Z1     
#>  6 78      010      27600    02631807 7801… 06V000… Cott… Estate … 52    Z1     
#>  7 78      030      76400    01994398 7803… 06V000… Staa… Estate … 52    Z1     
#>  8 78      020      54996    02813569 7802… 06V000… Litt… Estate … 52    Z1     
#>  9 78      020      15500    02813512 7802… 06V000… Cava… Estate … 52    Z1     
#> 10 78      020      65085    02813588 7802… 06V000… Ram … Estate … 52    Z1     
#> # ℹ 406 more rows
#> # ℹ 7 more variables: MTFCC <chr>, FUNCSTAT <chr>, ALAND <dbl>, AWATER <dbl>,
#> #   INTPTLAT <chr>, INTPTLON <chr>, geometry <MULTIPOLYGON [°]>
```
