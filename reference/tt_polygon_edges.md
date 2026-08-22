# Download TIGER shapes for Polygon Edges

Download TIGER shapes for Polygon Edges

## Usage

``` r
tt_polygon_edges(state, county, year = 2025)
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
try(tt_polygon_edges("DE", county = "001")) # downloads slow on CRAN
#> Simple feature collection with 21943 features and 30 fields
#> Geometry type: LINESTRING
#> Dimension:     XY
#> Bounding box:  xmin: -75.76007 ymin: 38.82985 xmax: -75.13846 ymax: 39.38756
#> Geodetic CRS:  NAD83
#> # A tibble: 21,943 × 31
#>    STATEFP COUNTYFP      TLID  TFIDL  TFIDR MTFCC FULLNAME SMID  LFROMADD LTOADD
#>  * <chr>   <chr>        <dbl>  <dbl>  <dbl> <chr> <chr>    <chr> <chr>    <chr> 
#>  1 10      001       68096904 2.12e8 2.62e8 P0001 NA       NA    NA       NA    
#>  2 10      001       68113784 2.65e8 2.57e8 H3010 Puncheo… 5364  NA       NA    
#>  3 10      001      629967541 2.66e8 2.50e8 L4140 NA       NA    NA       NA    
#>  4 10      001      643688839 2.62e8 2.65e8 P0001 NA       NA    NA       NA    
#>  5 10      001      614393540 2.38e8 2.28e8 P0001 NA       NA    NA       NA    
#>  6 10      001      633239465 2.59e8 2.38e8 H3010 Maidsto… 5364  NA       NA    
#>  7 10      001      614393683 2.28e8 2.28e8 P0001 NA       NA    NA       NA    
#>  8 10      001      614393695 2.28e8 2.12e8 R1011 Conrail… NA    NA       NA    
#>  9 10      001       68110907 2.12e8 2.12e8 P0001 NA       NA    NA       NA    
#> 10 10      001       68082688 2.12e8 2.12e8 R1011 Conrail… NA    NA       NA    
#> # ℹ 21,933 more rows
#> # ℹ 21 more variables: RFROMADD <chr>, RTOADD <chr>, ZIPL <chr>, ZIPR <chr>,
#> #   FEATCAT <chr>, HYDROFLG <chr>, RAILFLG <chr>, ROADFLG <chr>, OLFFLG <chr>,
#> #   PASSFLG <chr>, EXTTYP <chr>, TTYP <chr>, DECKEDROAD <chr>, ARTPATH <chr>,
#> #   PERSIST <chr>, GCSEFLG <chr>, OFFSETL <chr>, OFFSETR <chr>, TNIDF <dbl>,
#> #   TNIDT <dbl>, geometry <LINESTRING [°]>
```
