# Download TIGER shapes for Military Installations

Download TIGER shapes for Military Installations

## Usage

``` r
tt_military(year = 2025)
```

## Arguments

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
# Wrapped in try due to false positive 304 errors
try(tt_military()) # downloads slow on CRAN
#> Simple feature collection with 706 features and 7 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -159.7881 ymin: 13.30706 xmax: 174.156 ymax: 64.87795
#> Geodetic CRS:  NAD83
#> # A tibble: 706 × 8
#>    AREAID           FULLNAME               MTFCC  ALAND AWATER INTPTLAT INTPTLON
#>    <chr>            <chr>                  <chr>  <dbl>  <dbl> <chr>    <chr>   
#>  1 2899039483766321 National Guard Willia… G6500 4.09e5 0      +39.353… -081.44…
#>  2 2899039483766323 Naval Academy North S… G6500 3.35e6 1.54e3 +38.993… -076.46…
#>  3 2899039483766330 National Guard Gunpow… G6500 1.03e6 1.04e4 +39.430… -076.50…
#>  4 2899039483766334 Mission Gorge Recreat… G6500 1.77e6 0      +32.809… -117.08…
#>  5 2899039483766342 Coast Guard Station C… G6500 1.37e4 0      +42.046… -124.26…
#>  6 2899039483766347 Marine Corps Base Cam… G6500 5.07e8 1.47e6 +33.380… -117.39…
#>  7 2899039483766352 Fort Carson            G6500 5.59e8 8.24e5 +38.560… -104.82…
#>  8 2899039483766358 Naval Air Station Pat… G6500 2.49e7 2.25e6 +38.284… -076.40…
#>  9 2899039483766359 Ellsworth Air Force B… G6500 2.19e7 4.92e4 +44.150… -103.08…
#> 10 2899039483766360 Marine Corps Recruit … G6500 2.97e7 2.56e6 +32.340… -080.69…
#> # ℹ 696 more rows
#> # ℹ 1 more variable: geometry <MULTIPOLYGON [°]>
```
