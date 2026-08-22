# Using \`tinytiger\`

`tinytiger` is designed to be low dependency to allow packages and newer
R users to use TIGER lines and shapefiles without accruing non-standard
dependencies. It has four dependencies: - `sf`, needed to work with
shapefiles - `curl`, needed for downloading the files from the Census
Bureau - `cli`, used to create clear errors, warnings, and messages. -
`glue`, used for constructing complex URLs and already a dependency of
`cli`

While `cli` is not necessary, it fits within our goals that `tinytiger`
to be friendly for package development and new users, as `cli` is one of
the most-widely downloaded R packages and comes with but one dependency
itself.

## Using `tinytiger`

``` r

library(tinytiger)
```

`tinytiger` has methods to download TIGER shapes for most Census
geographies. A full list are available on the [`tinytiger`
website](https://alarm-redist.org/tinytiger/index.html#supported-geographies).

To download any shapes, we can use the corresponding function for the
geography. All functions are prefixed with `tt_`.

For counties, for example, we can run:

``` r

counties <- tt_counties()
```

``` r

head(counties)
#> Simple feature collection with 6 features and 18 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -104.9808 ymin: 26.29927 xmax: -79.13832 ymax: 44.19608
#> Geodetic CRS:  NAD83
#>   STATEFP COUNTYFP COUNTYNS GEOID        GEOIDFQ     NAME        NAMELSAD LSAD
#> 1      40      075 01101825 40075 0500000US40075    Kiowa    Kiowa County   06
#> 2      46      079 01265776 46079 0500000US46079     Lake     Lake County   06
#> 3      37      033 01008542 37033 0500000US37033  Caswell  Caswell County   06
#> 4      48      377 01383974 48377 0500000US48377 Presidio Presidio County   06
#> 5      39      057 01074041 39057 0500000US39057   Greene   Greene County   06
#> 6      48      489 01384030 48489 0500000US48489  Willacy  Willacy County   06
#>   CLASSFP MTFCC CSAFP CBSAFP METDIVFP FUNCSTAT      ALAND    AWATER    INTPTLAT
#> 1      H1 G4020  <NA>   <NA>     <NA>        A 2629039892  40296743 +34.9214893
#> 2      H1 G4020  <NA>   <NA>     <NA>        A 1457916151  31746795 +44.0284497
#> 3      H1 G4020  <NA>   <NA>     <NA>        A 1102042927   8293623 +36.3943252
#> 4      H1 G4020  <NA>   <NA>     <NA>        A 9985057447   1773188 +30.0058912
#> 5      H1 G4020   212  19430     <NA>        A 1071302625   6798109 +39.6874785
#> 6      H1 G4020   154  39700     <NA>        A 1529680719 502856285 +26.4818607
#>       INTPTLON                       geometry
#> 1 -098.9816168 MULTIPOLYGON (((-98.95506 3...
#> 2 -097.1232229 MULTIPOLYGON (((-96.88886 4...
#> 3 -079.3396193 MULTIPOLYGON (((-79.14343 3...
#> 4 -104.2616192 MULTIPOLYGON (((-104.9808 3...
#> 5 -083.8948943 MULTIPOLYGON (((-84.10668 3...
#> 6 -097.5947313 MULTIPOLYGON (((-97.86187 2...
```

Other options for downloads are:

- [`tt_address_ranges()`](https://alarm-redist.org/tinytiger/reference/tt_address_ranges.md)
- [`tt_ai_an_nh_areas()`](https://alarm-redist.org/tinytiger/reference/tt_ai_an_nh_areas.md)
- [`tt_anrc()`](https://alarm-redist.org/tinytiger/reference/tt_anrc.md)
- [`tt_area_landmarks()`](https://alarm-redist.org/tinytiger/reference/tt_area_landmarks.md)
- [`tt_area_water()`](https://alarm-redist.org/tinytiger/reference/tt_area_water.md)
- [`tt_block_groups()`](https://alarm-redist.org/tinytiger/reference/tt_block_groups.md)
- [`tt_blocks()`](https://alarm-redist.org/tinytiger/reference/tt_blocks.md)
- [`tt_cbsa()`](https://alarm-redist.org/tinytiger/reference/tt_cbsa.md)
- [`tt_coastline()`](https://alarm-redist.org/tinytiger/reference/tt_coastline.md)
- [`tt_congressional_districts()`](https://alarm-redist.org/tinytiger/reference/tt_congressional_districts.md)
- [`tt_consolidated_cities()`](https://alarm-redist.org/tinytiger/reference/tt_consolidated_cities.md)
- [`tt_counties()`](https://alarm-redist.org/tinytiger/reference/tt_counties.md)
- [`tt_county_subdivisions()`](https://alarm-redist.org/tinytiger/reference/tt_county_subdivisions.md)
- [`tt_csa()`](https://alarm-redist.org/tinytiger/reference/tt_csa.md)
- [`tt_elementary_school_districts()`](https://alarm-redist.org/tinytiger/reference/tt_elementary_school_districts.md)
- [`tt_estates()`](https://alarm-redist.org/tinytiger/reference/tt_estates.md)
- [`tt_linear_water()`](https://alarm-redist.org/tinytiger/reference/tt_linear_water.md)
- [`tt_metropolitan_divisions()`](https://alarm-redist.org/tinytiger/reference/tt_metropolitan_divisions.md)
- [`tt_military()`](https://alarm-redist.org/tinytiger/reference/tt_military.md)
- [`tt_new_england_cities()`](https://alarm-redist.org/tinytiger/reference/tt_new_england_cities.md)
- [`tt_new_england_city_divisions()`](https://alarm-redist.org/tinytiger/reference/tt_new_england_city_divisions.md)
- [`tt_new_england_combined_areas()`](https://alarm-redist.org/tinytiger/reference/tt_new_england_combined_areas.md)
- [`tt_places()`](https://alarm-redist.org/tinytiger/reference/tt_places.md)
- [`tt_point_landmarks()`](https://alarm-redist.org/tinytiger/reference/tt_point_landmarks.md)
- [`tt_polygon_edges()`](https://alarm-redist.org/tinytiger/reference/tt_polygon_edges.md)
- [`tt_polygon_faces()`](https://alarm-redist.org/tinytiger/reference/tt_polygon_faces.md)
- [`tt_primary_roads()`](https://alarm-redist.org/tinytiger/reference/tt_primary_roads.md)
- [`tt_primary_secondary_roads()`](https://alarm-redist.org/tinytiger/reference/tt_primary_secondary_roads.md)
- [`tt_puma()`](https://alarm-redist.org/tinytiger/reference/tt_puma.md)
- [`tt_rails()`](https://alarm-redist.org/tinytiger/reference/tt_rails.md)
- [`tt_roads()`](https://alarm-redist.org/tinytiger/reference/tt_roads.md)
- [`tt_secondary_school_districts()`](https://alarm-redist.org/tinytiger/reference/tt_secondary_school_districts.md)
- [`tt_state_leg_lower()`](https://alarm-redist.org/tinytiger/reference/tt_state_leg_lower.md)
- [`tt_state_leg_upper()`](https://alarm-redist.org/tinytiger/reference/tt_state_leg_upper.md)
- [`tt_states()`](https://alarm-redist.org/tinytiger/reference/tt_states.md)
- [`tt_subbarrios()`](https://alarm-redist.org/tinytiger/reference/tt_subbarrios.md)
- [`tt_tracts()`](https://alarm-redist.org/tinytiger/reference/tt_tracts.md)
- [`tt_tribal_block_groups()`](https://alarm-redist.org/tinytiger/reference/tt_tribal_block_groups.md)
- [`tt_tribal_subdivisions()`](https://alarm-redist.org/tinytiger/reference/tt_tribal_subdivisions.md)
- [`tt_tribal_tracts()`](https://alarm-redist.org/tinytiger/reference/tt_tribal_tracts.md)
- [`tt_uac()`](https://alarm-redist.org/tinytiger/reference/tt_uac.md)
- [`tt_unified_school_districts()`](https://alarm-redist.org/tinytiger/reference/tt_unified_school_districts.md)
- [`tt_voting_districts()`](https://alarm-redist.org/tinytiger/reference/tt_voting_districts.md)
- [`tt_zcta()`](https://alarm-redist.org/tinytiger/reference/tt_zcta.md)
