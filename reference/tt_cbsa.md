# Download TIGER shapes for Core Based Statistical Areas

Download TIGER shapes for Core Based Statistical Areas

## Usage

``` r
tt_cbsa(year = 2021)
```

## Arguments

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
 # takes > 5 seconds
# Wrapped in try due to false positive 304 errors
try(tt_cbsa()) # downloads slow on CRAN
#> Simple feature collection with 939 features and 12 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -178.4436 ymin: 17.83151 xmax: -65.42271 ymax: 65.45352
#> Geodetic CRS:  NAD83
#> # A tibble: 939 × 13
#>    CSAFP CBSAFP GEOID NAME    NAMELSAD LSAD  MEMI  MTFCC   ALAND AWATER INTPTLAT
#>    <chr> <chr>  <chr> <chr>   <chr>    <chr> <chr> <chr>   <dbl>  <dbl> <chr>   
#>  1 122   12020  12020 Athens… Athens-… M1    1     G3110 2.65e 9 2.61e7 +33.943…
#>  2 122   12060  12060 Atlant… Atlanta… M1    1     G3110 2.25e10 3.87e8 +33.693…
#>  3 428   12100  12100 Atlant… Atlanti… M1    1     G3110 1.44e 9 3.01e8 +39.469…
#>  4 426   12120  12120 Atmore… Atmore,… M2    2     G3110 2.45e 9 2.00e7 +31.122…
#>  5 258   12140  12140 Auburn… Auburn,… M2    2     G3110 9.40e 8 2.66e6 +41.396…
#>  6 532   12180  12180 Auburn… Auburn,… M2    2     G3110 1.79e 9 4.46e8 +43.008…
#>  7 194   12220  12220 Auburn… Auburn-… M1    1     G3110 1.57e 9 2.15e7 +32.604…
#>  8 NA    12260  12260 August… Augusta… M1    1     G3110 9.02e 9 2.62e8 +33.460…
#>  9 NA    12300  12300 August… Augusta… M2    2     G3110 2.25e 9 2.17e8 +44.417…
#> 10 462   12380  12380 Austin… Austin,… M2    2     G3110 1.84e 9 6.17e5 +43.666…
#> # ℹ 929 more rows
#> # ℹ 2 more variables: INTPTLON <chr>, geometry <MULTIPOLYGON [°]>
```
