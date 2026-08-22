# Download TIGER shapes for congressional districts

Download TIGER shapes for congressional districts

## Usage

``` r
tt_congressional_districts(state, year = 2025)
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
 # takes > 5 seconds
# Wrapped in try due to false positive 304 errors
try(tt_congressional_districts()) # downloads slow on CRAN
#> Downloading congressional districts for Congress "119".
#> Simple feature collection with 444 features and 13 fields
#> Geometry type: GEOMETRY
#> Dimension:     XY
#> Bounding box:  xmin: -179.2311 ymin: -14.60181 xmax: 179.8597 ymax: 71.43979
#> Geodetic CRS:  NAD83
#> # A tibble: 444 × 14
#>    STATEFP CD119FP GEOID GEOIDFQ   NAMELSAD LSAD  CDSESSN MTFCC FUNCSTAT   ALAND
#>  * <chr>   <chr>   <chr> <chr>     <chr>    <chr> <chr>   <chr> <chr>      <dbl>
#>  1 01      01      0101  5001900U… Congres… C2    119     G5200 N        1.88e10
#>  2 01      02      0102  5001900U… Congres… C2    119     G5200 N        2.45e10
#>  3 01      03      0103  5001900U… Congres… C2    119     G5200 N        1.73e10
#>  4 01      04      0104  5001900U… Congres… C2    119     G5200 N        2.24e10
#>  5 01      05      0105  5001900U… Congres… C2    119     G5200 N        1.01e10
#>  6 01      06      0106  5001900U… Congres… C2    119     G5200 N        1.15e10
#>  7 01      07      0107  5001900U… Congres… C2    119     G5200 N        2.66e10
#>  8 02      00      0200  5001900U… Congres… C1    119     G5200 N        1.48e12
#>  9 04      01      0401  5001900U… Congres… C2    119     G5200 N        4.14e 9
#> 10 04      02      0402  5001900U… Congres… C2    119     G5200 N        1.51e11
#> # ℹ 434 more rows
#> # ℹ 4 more variables: AWATER <dbl>, INTPTLAT <chr>, INTPTLON <chr>,
#> #   geometry <GEOMETRY [°]>
```
