# Download TIGER shapes for Public Use Microdata Areas

Download TIGER shapes for Public Use Microdata Areas

## Usage

``` r
tt_puma(state, year = 2025)
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
try(tt_puma("DE")) # downloads slow on CRAN
#> Simple feature collection with 8 features and 11 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -75.78902 ymin: 38.45113 xmax: -74.98416 ymax: 39.83952
#> Geodetic CRS:  NAD83
#> # A tibble: 8 × 12
#>   STATEFP20 PUMACE20 GEOID20 GEOIDFQ20     NAMELSAD20 MTFCC20 FUNCSTAT20 ALAND20
#> * <chr>     <chr>    <chr>   <chr>         <chr>      <chr>   <chr>        <dbl>
#> 1 10        00200    1000200 795P200US100… Kent PUMA  G6120   S           1.52e9
#> 2 10        00105    1000105 795P200US100… South Gla… G6120   S           5.90e8
#> 3 10        00103    1000103 795P200US100… Churchman… G6120   S           1.21e8
#> 4 10        00102    1000102 795P200US100… Greater W… G6120   S           7.33e7
#> 5 10        00104    1000104 795P200US100… Greater N… G6120   S           1.22e8
#> 6 10        00101    1000101 795P200US100… Brandywin… G6120   S           1.99e8
#> 7 10        00301    1000301 795P200US100… Sussex Ea… G6120   S           7.94e8
#> 8 10        00302    1000302 795P200US100… Sussex We… G6120   S           1.63e9
#> # ℹ 4 more variables: AWATER20 <dbl>, INTPTLAT20 <chr>, INTPTLON20 <chr>,
#> #   geometry <MULTIPOLYGON [°]>
```
