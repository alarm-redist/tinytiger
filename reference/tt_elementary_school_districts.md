# Download TIGER shapes for Elementary School Districts

Download TIGER shapes for Elementary School Districts

## Usage

``` r
tt_elementary_school_districts(state, year = 2025)
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
try(tt_elementary_school_districts("AZ")) # downloads slow on CRAN
#> Simple feature collection with 103 features and 15 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -114.8163 ymin: 31.33283 xmax: -109.0467 ymax: 36.04909
#> Geodetic CRS:  NAD83
#> # A tibble: 103 × 16
#>    STATEFP ELSDLEA GEOID   GEOIDFQ       NAME  LSAD  LOGRADE HIGRADE MTFCC SDTYP
#>  * <chr>   <chr>   <chr>   <chr>         <chr> <chr> <chr>   <chr>   <chr> <chr>
#>  1 04      00004   0400004 9500000US040… Clar… 00    PK      08      G5400 NA   
#>  2 04      00005   0400005 9500000US040… Salo… 00    PK      08      G5400 NA   
#>  3 04      00022   0400022 9500000US040… Vern… 00    KG      12      G5400 NA   
#>  4 04      04440   0404440 9500000US040… Litt… 00    PK      08      G5400 NA   
#>  5 04      00480   0400480 9500000US040… Agui… 00    KG      12      G5400 NA   
#>  6 04      00600   0400600 9500000US040… Alha… 00    PK      08      G5400 NA   
#>  7 04      00630   0400630 9500000US040… Alpi… 00    KG      12      G5400 NA   
#>  8 04      00750   0400750 9500000US040… Apac… 00    KG      12      G5400 NA   
#>  9 04      02490   0402490 9500000US040… Doub… 00    KG      12      G5400 NA   
#> 10 04      00840   0400840 9500000US040… Arli… 00    PK      08      G5400 NA   
#> # ℹ 93 more rows
#> # ℹ 6 more variables: FUNCSTAT <chr>, ALAND <dbl>, AWATER <dbl>,
#> #   INTPTLAT <chr>, INTPTLON <chr>, geometry <MULTIPOLYGON [°]>
```
