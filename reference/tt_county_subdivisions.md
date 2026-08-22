# Download TIGER shapes for County Subdivisions

Download TIGER shapes for County Subdivisions

## Usage

``` r
tt_county_subdivisions(state, year = 2025)
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
try(tt_county_subdivisions("DE")) # downloads slow on CRAN
#> Simple feature collection with 27 features and 16 fields
#> Geometry type: POLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -75.78902 ymin: 38.45113 xmax: -74.98416 ymax: 39.83952
#> Geodetic CRS:  NAD83
#> # A tibble: 27 × 17
#>    STATEFP COUNTYFP COUSUBFP COUSUBNS GEOID GEOIDFQ NAME  NAMELSAD LSAD  CLASSFP
#>  * <chr>   <chr>    <chr>    <chr>    <chr> <chr>   <chr> <chr>    <chr> <chr>  
#>  1 10      005      91776    01935613 1000… 060000… Lewes Lewes C… 22    Z5     
#>  2 10      005      92516    01935618 1000… 060000… Mill… Millsbo… 22    Z5     
#>  3 10      003      90148    01935602 1000… 060000… Bran… Brandyw… 22    Z5     
#>  4 10      003      91110    01935605 1000… 060000… Glas… Glasgow… 22    Z5     
#>  5 10      003      93256    01935623 1000… 060000… Red … Red Lio… 22    Z5     
#>  6 10      003      92738    01935609 1000… 060000… Newa… Newark … 22    Z5     
#>  7 10      005      91036    01935608 1000… 060000… Geor… Georget… 22    Z5     
#>  8 10      005      92368    01935617 1000… 060000… Milf… Milford… 22    Z5     
#>  9 10      005      93404    01935624 1000… 060000… Seaf… Seaford… 22    Z5     
#> 10 10      005      93552    01935625 1000… 060000… Selb… Selbyvi… 22    Z5     
#> # ℹ 17 more rows
#> # ℹ 7 more variables: MTFCC <chr>, FUNCSTAT <chr>, ALAND <dbl>, AWATER <dbl>,
#> #   INTPTLAT <chr>, INTPTLON <chr>, geometry <POLYGON [°]>
```
