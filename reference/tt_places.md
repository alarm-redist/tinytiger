# Download TIGER shapes for Places

Download TIGER shapes for Places

## Usage

``` r
tt_places(state, year = 2025)
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
try(tt_places("DE")) # downloads slow on CRAN
#> Simple feature collection with 79 features and 16 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -75.78901 ymin: 38.45121 xmax: -75.04871 ymax: 39.81891
#> Geodetic CRS:  NAD83
#> # A tibble: 79 × 17
#>    STATEFP PLACEFP PLACENS  GEOID   GEOIDFQ NAME  NAMELSAD LSAD  CLASSFP PCICBSA
#>  * <chr>   <chr>   <chr>    <chr>   <chr>   <chr> <chr>    <chr> <chr>   <chr>  
#>  1 10      01400   02391520 1001400 160000… Arden Arden v… 47    C1      N      
#>  2 10      15440   02390799 1015440 160000… Clay… Clayton… 43    C1      N      
#>  3 10      19730   02390581 1019730 160000… Dela… Delawar… 25    C1      N      
#>  4 10      24540   02390170 1024540 160000… Elsm… Elsmere… 43    C1      N      
#>  5 10      81350   02391496 1081350 160000… Wyom… Wyoming… 43    C1      N      
#>  6 10      41310   02391262 1041310 160000… Laur… Laurel … 43    C1      N      
#>  7 10      01660   02391522 1001660 160000… Arde… Ardento… 47    C1      N      
#>  8 10      21200   02390583 1021200 160000… Dover Dover c… 25    C1      Y      
#>  9 10      41700   02391267 1041700 160000… Leip… Leipsic… 43    C1      N      
#> 10 10      41830   02390609 1041830 160000… Lewes Lewes c… 25    C1      N      
#> # ℹ 69 more rows
#> # ℹ 7 more variables: MTFCC <chr>, FUNCSTAT <chr>, ALAND <dbl>, AWATER <dbl>,
#> #   INTPTLAT <chr>, INTPTLON <chr>, geometry <MULTIPOLYGON [°]>
```
