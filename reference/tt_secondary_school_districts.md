# Download TIGER shapes for Secondary School Districts

Download TIGER shapes for Secondary School Districts

## Usage

``` r
tt_secondary_school_districts(state, year = 2025)
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
try(tt_secondary_school_districts("AZ")) # downloads slow on CRAN
#> Simple feature collection with 15 features and 15 fields
#> Geometry type: POLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -114.8163 ymin: 31.33283 xmax: -109.3368 ymax: 35.67654
#> Geodetic CRS:  NAD83
#> # A tibble: 15 × 16
#>    STATEFP SCSDLEA GEOID   GEOIDFQ       NAME  LSAD  LOGRADE HIGRADE MTFCC SDTYP
#>  * <chr>   <chr>   <chr>   <chr>         <chr> <chr> <chr>   <chr>   <chr> <chr>
#>  1 04      07530   0407530 9600000US040… Sant… 00    09      12      G5410 NA   
#>  2 04      01740   0401740 9600000US040… Casa… 00    09      12      G5410 NA   
#>  3 04      05070   0405070 9600000US040… Ming… 00    09      12      G5410 NA   
#>  4 04      06030   0406030 9600000US040… Pata… 00    09      12      G5410 NA   
#>  5 04      00082   0400082 9600000US040… Colo… 00    09      12      G5410 NA   
#>  6 04      00450   0400450 9600000US040… Agua… 00    09      12      G5410 NA   
#>  7 04      01410   0401410 9600000US040… Buck… 00    09      12      G5410 NA   
#>  8 04      03450   0403450 9600000US040… Glen… 00    09      12      G5410 NA   
#>  9 04      06330   0406330 9600000US040… Phoe… 00    09      12      G5410 NA   
#> 10 04      08340   0408340 9600000US040… Temp… 00    09      12      G5410 NA   
#> 11 04      08520   0408520 9600000US040… Toll… 00    09      12      G5410 NA   
#> 12 04      00720   0400720 9600000US040… Ante… 00    09      12      G5410 NA   
#> 13 04      01160   0401160 9600000US040… Bice… 00    09      12      G5410 NA   
#> 14 04      08910   0408910 9600000US040… Vall… 00    09      12      G5410 NA   
#> 15 04      09630   0409630 9600000US040… Yuma… 00    09      12      G5410 NA   
#> # ℹ 6 more variables: FUNCSTAT <chr>, ALAND <dbl>, AWATER <dbl>,
#> #   INTPTLAT <chr>, INTPTLON <chr>, geometry <POLYGON [°]>
```
