# Download TIGER shapes for Subbarrios (Puerto Rico)

Download TIGER shapes for Subbarrios (Puerto Rico)

## Usage

``` r
tt_subbarrios(year = 2025)
```

## Arguments

- year:

  Integer year. Required. 2000 and 2010-2025 are currently supported.

## Value

sf data.frame

## Examples

``` r
# Wrapped in try due to false positive 304 errors
try(tt_subbarrios()) # downloads slow on CRAN
#> Simple feature collection with 143 features and 17 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -67.19246 ymin: 17.91081 xmax: -65.6246 ymax: 18.48101
#> Geodetic CRS:  NAD83
#> # A tibble: 143 × 18
#>    STATEFP COUNTYFP COUSUBFP SUBMCDFP SUBMCDNS GEOID      GEOIDFQ NAME  NAMELSAD
#>    <chr>   <chr>    <chr>    <chr>    <chr>    <chr>      <chr>   <chr> <chr>   
#>  1 72      013      03411    53940    02415691 720130341… 067000… Mons… Monserr…
#>  2 72      013      03411    72325    02415953 720130341… 067000… Rosa… Rosario…
#>  3 72      035      15537    65040    02415842 720351553… 067000… Pueb… Pueblo …
#>  4 72      059      32350    63658    02415799 720593235… 067000… Pobl… Poblado…
#>  5 72      123      01175    20315    02415005 721230117… 067000… Coquí Coquí s…
#>  6 72      011      02637    21884    02415022 720110263… 067000… Cuar… Cuartel…
#>  7 72      011      02637    21888    02415023 720110263… 067000… Cuar… Cuartel…
#>  8 72      127      79693    74580    02415975 721277969… 067000… Sagr… Sagrado…
#>  9 72      127      79693    34520    02415495 721277969… 067000… Herr… Herrera…
#> 10 72      097      52474    14018    02415261 720975247… 067000… Cárc… Cárcel …
#> # ℹ 133 more rows
#> # ℹ 9 more variables: LSAD <chr>, CLASSFP <chr>, MTFCC <chr>, FUNCSTAT <chr>,
#> #   ALAND <dbl>, AWATER <dbl>, INTPTLAT <chr>, INTPTLON <chr>,
#> #   geometry <MULTIPOLYGON [°]>
```
