# Download TIGER shapes for Alaska Native Regional Corporation (Alaska)

Download TIGER shapes for Alaska Native Regional Corporation (Alaska)

## Usage

``` r
tt_anrc(year = 2025)
```

## Arguments

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
# Wrapped in try due to false positive 304 errors
try(tt_anrc()) # downloads slow on CRAN
#> Simple feature collection with 12 features and 15 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -179.2311 ymin: 51.17509 xmax: 179.8597 ymax: 71.43979
#> Geodetic CRS:  NAD83
#> # A tibble: 12 × 16
#>    STATEFP ANRCFP ANRCNS   GEOID   GEOIDFQ    NAME  NAMELSAD LSAD  CLASSFP MTFCC
#>    <chr>   <chr>  <chr>    <chr>   <chr>      <chr> <chr>    <chr> <chr>   <chr>
#>  1 02      03950  02419300 0203950 2300000US… Arct… Arctic … 77    E7      G2200
#>  2 02      09040  02419321 0209040 2300000US… Bris… Bristol… 77    E7      G2200
#>  3 02      52120  02419029 0252120 2300000US… NANA  NANA Al… 77    E7      G2200
#>  4 02      14410  02419341 0214410 2300000US… Chug… Chugach… 77    E7      G2200
#>  5 02      17140  02418878 0217140 2300000US… Cook… Cook In… 77    E7      G2200
#>  6 02      41640  02418991 0241640 2300000US… Koni… Koniag … 77    E7      G2200
#>  7 02      01570  02419297 0201570 2300000US… Aleut Aleut A… 77    E7      G2200
#>  8 02      06370  02419308 0206370 2300000US… Beri… Bering … 77    E7      G2200
#>  9 02      09800  02419328 0209800 2300000US… Cali… Calista… 77    E7      G2200
#> 10 02      00590  02419295 0200590 2300000US… Ahtna Ahtna A… 77    E7      G2200
#> 11 02      20010  02418929 0220010 2300000US… Doyon Doyon A… 77    E7      G2200
#> 12 02      67940  02419136 0267940 2300000US… Seal… Sealask… 77    E7      G2200
#> # ℹ 6 more variables: FUNCSTAT <chr>, ALAND <dbl>, AWATER <dbl>,
#> #   INTPTLAT <chr>, INTPTLON <chr>, geometry <MULTIPOLYGON [°]>
```
