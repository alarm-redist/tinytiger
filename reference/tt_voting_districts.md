# Download TIGER shapes for Voting Districts

Download TIGER shapes for Voting Districts

## Usage

``` r
tt_voting_districts(state, county, year = 2025)
```

## Arguments

- state:

  FIPS, postal codes, or full names of states.

- county:

  FIPS codes or full names of counties. Optional.

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
# Wrapped in try due to false positive 304 errors
try(tt_voting_districts("DE", county = "001")) # downloads slow on CRAN
#> Downloading voting districts for decade 2020.
#> Simple feature collection with 67 features and 14 fields
#> Geometry type: POLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -75.76007 ymin: 38.82985 xmax: -75.13846 ymax: 39.38756
#> Geodetic CRS:  NAD83
#> # A tibble: 67 × 15
#>    STATEFP20 COUNTYFP20 VTDST20 GEOID20  VTDI20 NAME20 NAMELSAD20 LSAD20 MTFCC20
#>  * <chr>     <chr>      <chr>   <chr>    <chr>  <chr>  <chr>      <chr>  <chr>  
#>  1 10        001        001-28  1000100… A      01-28  01-28      00     G5240  
#>  2 10        001        001-29  1000100… A      01-29  01-29      00     G5240  
#>  3 10        001        001-30  1000100… A      01-30  01-30      00     G5240  
#>  4 10        001        001-31  1000100… A      01-31  01-31      00     G5240  
#>  5 10        001        001-32  1000100… A      01-32  01-32      00     G5240  
#>  6 10        001        001-33  1000100… A      01-33  01-33      00     G5240  
#>  7 10        001        001-34  1000100… A      01-34  01-34      00     G5240  
#>  8 10        001        002-28  1000100… A      02-28  02-28      00     G5240  
#>  9 10        001        002-29  1000100… A      02-29  02-29      00     G5240  
#> 10 10        001        002-30  1000100… A      02-30  02-30      00     G5240  
#> # ℹ 57 more rows
#> # ℹ 6 more variables: FUNCSTAT20 <chr>, ALAND20 <dbl>, AWATER20 <dbl>,
#> #   INTPTLAT20 <chr>, INTPTLON20 <chr>, geometry <POLYGON [°]>
```
