# Download TIGER shapes for Public Use Microdata Areas

Download TIGER shapes for Public Use Microdata Areas

## Usage

``` r
tt_consolidated_cities(state, year = 2025)
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
try(tt_consolidated_cities("CT")) # downloads slow on CRAN
#> Simple feature collection with 1 feature and 15 fields
#> Geometry type: POLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -73.12245 ymin: 41.1686 xmax: -72.97905 ymax: 41.2766
#> Geodetic CRS:  NAD83
#> # A tibble: 1 × 16
#>   STATEFP CONCTYFP CONCTYNS GEOID   GEOIDFQ   NAME  NAMELSAD LSAD  CLASSFP MTFCC
#> * <chr>   <chr>    <chr>    <chr>   <chr>     <chr> <chr>    <chr> <chr>   <chr>
#> 1 09      47500    02378334 0947500 1700000U… Milf… Milford… 25    C3      G4120
#> # ℹ 6 more variables: FUNCSTAT <chr>, ALAND <dbl>, AWATER <dbl>,
#> #   INTPTLAT <chr>, INTPTLON <chr>, geometry <POLYGON [°]>
```
