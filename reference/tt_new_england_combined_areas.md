# Download TIGER shapes for New England Combined City and Town Areas

Download TIGER shapes for New England Combined City and Town Areas

## Usage

``` r
tt_new_england_combined_areas(year = 2021)
```

## Arguments

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
# Wrapped in try due to false positive 304 errors
try(tt_new_england_combined_areas()) # downloads slow on CRAN
#> Simple feature collection with 7 features and 10 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -73.72777 ymin: 40.95094 xmax: -69.33964 ymax: 44.69986
#> Geodetic CRS:  NAD83
#> # A tibble: 7 × 11
#>   CNECTAFP GEOID NAME      NAMELSAD LSAD  MTFCC   ALAND AWATER INTPTLAT INTPTLON
#>   <chr>    <chr> <chr>     <chr>    <chr> <chr>   <dbl>  <dbl> <chr>    <chr>   
#> 1 710      710   Augusta-… Augusta… M4    G3200 2.16e 9 1.84e8 +44.409… -069.69…
#> 2 715      715   Boston-W… Boston-… M4    G3200 2.14e10 3.01e9 +42.330… -071.32…
#> 3 720      720   Bridgepo… Bridgep… M4    G3200 3.94e 9 3.75e8 +41.360… -073.12…
#> 4 725      725   Lebanon-… Lebanon… M4    G3200 3.03e 9 5.82e7 +43.672… -072.24…
#> 5 770      770   Pittsfie… Pittsfi… M4    G3200 1.52e 9 2.45e7 +42.533… -073.16…
#> 6 775      775   Portland… Portlan… M4    G3200 6.26e 9 1.54e9 +43.856… -070.31…
#> 7 790      790   Springfi… Springf… M4    G3200 8.71e 9 2.57e8 +42.035… -072.62…
#> # ℹ 1 more variable: geometry <MULTIPOLYGON [°]>
```
