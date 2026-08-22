# Download TIGER shapes for Metropolitan Divisions

Download TIGER shapes for Metropolitan Divisions

## Usage

``` r
tt_metropolitan_divisions(year = 2021)
```

## Arguments

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
# Wrapped in try due to false positive 304 errors
try(tt_metropolitan_divisions()) # downloads slow on CRAN
#> Simple feature collection with 31 features and 12 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -123.1738 ymin: 25.13742 xmax: -70.32252 ymax: 48.29899
#> Geodetic CRS:  NAD83
#> # A tibble: 31 × 13
#>    CSAFP CBSAFP METDIVFP GEOID      NAME     NAMELSAD LSAD  MTFCC   ALAND AWATER
#>    <chr> <chr>  <chr>    <chr>      <chr>    <chr>    <chr> <chr>   <dbl>  <dbl>
#>  1 348   31080  11244    3108011244 Anaheim… Anaheim… M3    G3120 2.05e 9 4.06e8
#>  2 148   14460  14454    1446014454 Boston,… Boston,… M3    G3120 2.88e 9 1.41e9
#>  3 148   14460  15764    1446015764 Cambrid… Cambrid… M3    G3120 3.39e 9 9.45e8
#>  4 428   37980  15804    3798015804 Camden,… Camden,… M3    G3120 3.48e 9 1.08e8
#>  5 176   16980  16984    1698016984 Chicago… Chicago… M3    G3120 8.11e 9 1.90e9
#>  6 206   19100  19124    1910019124 Dallas-… Dallas-… M3    G3120 1.37e10 6.72e8
#>  7 220   19820  19804    1982019804 Detroit… Detroit… M3    G3120 1.58e 9 1.58e8
#>  8 176   16980  20994    1698020994 Elgin, … Elgin, … M3    G3120 3.81e 9 2.62e7
#>  9 370   33100  22744    3310022744 Fort La… Fort La… M3    G3120 3.12e 9 2.73e8
#> 10 206   19100  23104    1910023104 Fort Wo… Fort Wo… M3    G3120 8.80e 9 1.88e8
#> # ℹ 21 more rows
#> # ℹ 3 more variables: INTPTLAT <chr>, INTPTLON <chr>,
#> #   geometry <MULTIPOLYGON [°]>
```
