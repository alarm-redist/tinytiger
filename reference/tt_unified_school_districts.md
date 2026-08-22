# Download TIGER shapes for Unified School Districts

Download TIGER shapes for Unified School Districts

## Usage

``` r
tt_unified_school_districts(state, year = 2025)
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
try(tt_unified_school_districts("DE")) # downloads slow on CRAN
#> Simple feature collection with 16 features and 15 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -75.78902 ymin: 38.45113 xmax: -74.98416 ymax: 39.83952
#> Geodetic CRS:  NAD83
#> # A tibble: 16 × 16
#>    STATEFP UNSDLEA GEOID   GEOIDFQ       NAME  LSAD  LOGRADE HIGRADE MTFCC SDTYP
#>  * <chr>   <chr>   <chr>   <chr>         <chr> <chr> <chr>   <chr>   <chr> <chr>
#>  1 10      00080   1000080 9700000US100… Appo… 00    PK      12      G5420 NA   
#>  2 10      00170   1000170 9700000US100… Cape… 00    PK      12      G5420 NA   
#>  3 10      00180   1000180 9700000US100… Caes… 00    PK      12      G5420 NA   
#>  4 10      00190   1000190 9700000US100… Capi… 00    PK      12      G5420 NA   
#>  5 10      00200   1000200 9700000US100… Chri… 00    PK      12      G5420 NA   
#>  6 10      00230   1000230 9700000US100… Colo… 00    PK      12      G5420 NA   
#>  7 10      00790   1000790 9700000US100… Lake… 00    PK      12      G5420 NA   
#>  8 10      01080   1001080 9700000US100… Milf… 00    PK      12      G5420 NA   
#>  9 10      01240   1001240 9700000US100… Bran… 00    PK      12      G5420 NA   
#> 10 10      01300   1001300 9700000US100… Red … 00    PK      12      G5420 NA   
#> 11 10      01530   1001530 9700000US100… Seaf… 00    PK      12      G5420 NA   
#> 12 10      00270   1000270 9700000US100… Delm… 00    KG      12      G5420 NA   
#> 13 10      00680   1000680 9700000US100… Indi… 00    PK      12      G5420 NA   
#> 14 10      00810   1000810 9700000US100… Laur… 00    PK      12      G5420 NA   
#> 15 10      01620   1001620 9700000US100… Smyr… 00    PK      12      G5420 NA   
#> 16 10      01850   1001850 9700000US100… Wood… 00    PK      12      G5420 NA   
#> # ℹ 6 more variables: FUNCSTAT <chr>, ALAND <dbl>, AWATER <dbl>,
#> #   INTPTLAT <chr>, INTPTLON <chr>, geometry <MULTIPOLYGON [°]>
```
