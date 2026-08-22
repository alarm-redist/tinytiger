# Download TIGER shapes for counties

Download TIGER shapes for counties

## Usage

``` r
tt_counties(state, year = 2025)
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
try(tt_counties(state = "DE")) # downloads slow on CRAN
#> Simple feature collection with 3 features and 18 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -75.78902 ymin: 38.45113 xmax: -74.98416 ymax: 39.83952
#> Geodetic CRS:  NAD83
#> # A tibble: 3 × 19
#>   STATEFP COUNTYFP COUNTYNS GEOID GEOIDFQ     NAME  NAMELSAD LSAD  CLASSFP MTFCC
#> * <chr>   <chr>    <chr>    <chr> <chr>       <chr> <chr>    <chr> <chr>   <chr>
#> 1 10      005      00217269 10005 0500000US1… Suss… Sussex … 06    H1      G4020
#> 2 10      001      00217271 10001 0500000US1… Kent  Kent Co… 06    H1      G4020
#> 3 10      003      00217270 10003 0500000US1… New … New Cas… 06    H1      G4020
#> # ℹ 9 more variables: CSAFP <chr>, CBSAFP <chr>, METDIVFP <chr>,
#> #   FUNCSTAT <chr>, ALAND <dbl>, AWATER <dbl>, INTPTLAT <chr>, INTPTLON <chr>,
#> #   geometry <MULTIPOLYGON [°]>
```
