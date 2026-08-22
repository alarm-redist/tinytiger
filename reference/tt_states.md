# Download TIGER shapes for states

Download TIGER shapes for states

## Usage

``` r
tt_states(year = 2025)
```

## Arguments

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
# Wrapped in try due to false positive 304 errors
try(tt_states())
#> Simple feature collection with 56 features and 15 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -179.2311 ymin: -14.60181 xmax: 179.8597 ymax: 71.43979
#> Geodetic CRS:  NAD83
#> # A tibble: 56 × 16
#>    REGION DIVISION STATEFP STATENS  GEOID GEOIDFQ     STUSPS NAME    LSAD  MTFCC
#>    <chr>  <chr>    <chr>   <chr>    <chr> <chr>       <chr>  <chr>   <chr> <chr>
#>  1 1      2        36      01779796 36    0400000US36 NY     New Yo… 00    G4000
#>  2 4      8        32      01779793 32    0400000US32 NV     Nevada  00    G4000
#>  3 4      9        02      01785533 02    0400000US02 AK     Alaska  00    G4000
#>  4 9      0        60      01802701 60    0400000US60 AS     Americ… 00    G4000
#>  5 1      1        50      01779802 50    0400000US50 VT     Vermont 00    G4000
#>  6 1      1        09      01779780 09    0400000US09 CT     Connec… 00    G4000
#>  7 3      5        10      01779781 10    0400000US10 DE     Delawa… 00    G4000
#>  8 4      8        35      00897535 35    0400000US35 NM     New Me… 00    G4000
#>  9 3      5        37      01027616 37    0400000US37 NC     North … 00    G4000
#> 10 2      3        55      01779806 55    0400000US55 WI     Wiscon… 00    G4000
#> # ℹ 46 more rows
#> # ℹ 6 more variables: FUNCSTAT <chr>, ALAND <dbl>, AWATER <dbl>,
#> #   INTPTLAT <chr>, INTPTLON <chr>, geometry <MULTIPOLYGON [°]>
```
