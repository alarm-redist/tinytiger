# Download TIGER shapes for American Indian / Alaska Native / Native Hawaiian Areas

Download TIGER shapes for American Indian / Alaska Native / Native
Hawaiian Areas

## Usage

``` r
tt_ai_an_nh_areas(year = 2025)
```

## Arguments

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
# Wrapped in try due to false positive 304 errors
try(tt_ai_an_nh_areas())
#> Simple feature collection with 867 features and 16 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -174.236 ymin: 18.91069 xmax: -67.03552 ymax: 71.34019
#> Geodetic CRS:  NAD83
#> # A tibble: 867 × 17
#>    AIANNHCE AIANNHNS GEOID GEOIDFQ  NAME  NAMELSAD LSAD  CLASSFP COMPTYP AIANNHR
#>    <chr>    <chr>    <chr> <chr>    <chr> <chr>    <chr> <chr>   <chr>   <chr>  
#>  1 9370     00979494 9370R 2520000… Shin… Shinnec… 86    D4      R       S      
#>  2 2810     01263144 2810R 2520000… Pine… Pine Ri… 86    D2      R       F      
#>  3 0605     01267254 0605R 2520000… Chey… Cheyenn… 86    D8      R       F      
#>  4 2030     01267015 2030R 2520000… Lowe… Lower B… 86    D8      R       F      
#>  5 1720     00023994 1720R 2520000… Kaib… Kaibab … 96    D2      R       F      
#>  6 0125     00238830 0125R 2520000… Augu… Augusti… 86    D2      R       F      
#>  7 4595     01934333 4595R 2520000… Whit… White E… 86    D8      R       F      
#>  8 2490     01637567 2490R 2520000… Nort… Norther… 96    D8      R       F      
#>  9 3925     00169585 3925R 2520000… Sout… Souther… 86    D2      R       F      
#> 10 4470     00169579 4470R 2520000… Ute … Ute Mou… 86    D8      R       F      
#> # ℹ 857 more rows
#> # ℹ 7 more variables: MTFCC <chr>, FUNCSTAT <chr>, ALAND <dbl>, AWATER <dbl>,
#> #   INTPTLAT <chr>, INTPTLON <chr>, geometry <MULTIPOLYGON [°]>
```
