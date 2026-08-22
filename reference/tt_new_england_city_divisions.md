# Download TIGER shapes for New England City and Town Area Divisions

Download TIGER shapes for New England City and Town Area Divisions

## Usage

``` r
tt_new_england_city_divisions(year = 2021)
```

## Arguments

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
# Wrapped in try due to false positive 304 errors
try(tt_new_england_city_divisions()) # downloads slow on CRAN
#> Simple feature collection with 11 features and 12 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -71.85505 ymin: 41.70016 xmax: -70.51636 ymax: 43.0214
#> Geodetic CRS:  NAD83
#> # A tibble: 11 × 13
#>    CNECTAFP NECTAFP NCTADVFP GEOID      NAME  NAMELSAD LSAD  MTFCC  ALAND AWATER
#>    <chr>    <chr>   <chr>    <chr>      <chr> <chr>    <chr> <chr>  <dbl>  <dbl>
#>  1 715      71650   71634    7165071634 Bost… Boston-… M7    G3220 2.86e9 4.26e8
#>  2 715      71650   72104    7165072104 Broc… Brockto… M7    G3220 3.22e8 7.53e6
#>  3 715      71650   73104    7165073104 Fram… Framing… M7    G3220 5.03e8 2.32e7
#>  4 715      71650   73604    7165073604 Have… Haverhi… M7    G3220 9.39e8 5.64e7
#>  5 715      71650   74204    7165074204 Lawr… Lawrenc… M7    G3220 2.08e8 9.75e6
#>  6 715      71650   74804    7165074804 Lowe… Lowell-… M7    G3220 5.42e8 2.02e7
#>  7 715      71650   74854    7165074854 Lynn… Lynn-Sa… M7    G3220 7.12e7 1.20e8
#>  8 715      71650   75404    7165075404 Nash… Nashua,… M7    G3220 1.24e9 2.02e7
#>  9 715      71650   76524    7165076524 Peab… Peabody… M7    G3220 4.67e8 1.54e8
#> 10 715      71650   76684    7165076684 Plym… Plymout… M7    G3220 5.92e8 1.54e8
#> 11 715      71650   78254    7165078254 Taun… Taunton… M7    G3220 7.78e8 4.93e7
#> # ℹ 3 more variables: INTPTLAT <chr>, INTPTLON <chr>,
#> #   geometry <MULTIPOLYGON [°]>
```
