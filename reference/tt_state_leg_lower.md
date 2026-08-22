# Download TIGER shapes for lower state legislative districts

Download TIGER shapes for lower state legislative districts

## Usage

``` r
tt_state_leg_lower(state, year = 2025)
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
try(tt_state_leg_lower("DE")) # downloads slow on CRAN
#> Simple feature collection with 41 features and 13 fields
#> Geometry type: POLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -75.78902 ymin: 38.45113 xmax: -74.98416 ymax: 39.83952
#> Geodetic CRS:  NAD83
#> # A tibble: 41 × 14
#>    STATEFP SLDLST GEOID GEOIDFQ       NAMELSAD LSAD  LSY   MTFCC FUNCSTAT  ALAND
#>  * <chr>   <chr>  <chr> <chr>         <chr>    <chr> <chr> <chr> <chr>     <dbl>
#>  1 10      041    10041 620L900US100… State R… 09    2024  G5220 N        3.35e8
#>  2 10      008    10008 620L900US100… State R… 09    2024  G5220 N        7.28e7
#>  3 10      019    10019 620L900US100… State R… 09    2024  G5220 N        2.31e7
#>  4 10      035    10035 620L900US100… State R… 09    2024  G5220 N        5.11e8
#>  5 10      030    10030 620L900US100… State R… 09    2024  G5220 N        5.38e8
#>  6 10      012    10012 620L900US100… State R… 09    2024  G5220 N        8.81e7
#>  7 10      022    10022 620L900US100… State R… 09    2024  G5220 N        3.45e7
#>  8 10      002    10002 620L900US100… State R… 09    2024  G5220 N        1.57e7
#>  9 10      027    10027 620L900US100… State R… 09    2024  G5220 N        7.53e7
#> 10 10      009    10009 620L900US100… State R… 09    2024  G5220 N        2.01e8
#> # ℹ 31 more rows
#> # ℹ 4 more variables: AWATER <dbl>, INTPTLAT <chr>, INTPTLON <chr>,
#> #   geometry <POLYGON [°]>
```
