# Download TIGER shapes for Coastlines

Download TIGER shapes for Coastlines

## Usage

``` r
tt_coastline(year = 2025)
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
try(tt_coastline()) # downloads slow on CRAN
#> Simple feature collection with 4240 features and 2 fields
#> Geometry type: LINESTRING
#> Dimension:     XY
#> Bounding box:  xmin: -179.1472 ymin: -14.5487 xmax: 179.7785 ymax: 71.39038
#> Geodetic CRS:  NAD83
#> # A tibble: 4,240 × 3
#>    NAME      MTFCC                                                      geometry
#>    <chr>     <chr>                                              <LINESTRING [°]>
#>  1 Atlántico L4150 (-67.27126 18.36305, -67.27121 18.36307, -67.27115 18.36309,…
#>  2 Atlántico L4150 (-66.90139 18.48343, -66.9014 18.48342, -66.90141 18.48342, …
#>  3 Atlántico L4150 (-65.56333 18.37807, -65.56335 18.37808, -65.56338 18.37809,…
#>  4 Atlántico L4150 (-65.59793 18.39765, -65.59792 18.39771, -65.59793 18.39778,…
#>  5 Atlántico L4150 (-65.55133 18.37372, -65.55134 18.37376, -65.55137 18.37381,…
#>  6 Atlántico L4150   (-65.56089 18.3754, -65.56091 18.37545, -65.56096 18.37548)
#>  7 Atlántico L4150 (-65.5664 18.37839, -65.56637 18.37848, -65.56639 18.37851, …
#>  8 Atlántico L4150  (-65.57711 18.38454, -65.57712 18.38456, -65.57714 18.38457)
#>  9 Atlántico L4150 (-65.61158 18.40186, -65.61161 18.4019, -65.61169 18.40191, …
#> 10 Atlántico L4150 (-65.61158 18.40058, -65.61163 18.40056, -65.61167 18.40053,…
#> # ℹ 4,230 more rows
```
