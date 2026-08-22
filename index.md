# tinytiger

`tinytiger` is to provide a lightweight interface to the [US Census
Bureau’s TIGER/Line
Shapefiles](https://www.census.gov/geographies/mapping-files/time-series/geo/tiger-line-file.html).
It has four dependencies other than `sf`. Download caching is supported;
[see below](#downloading-and-caching) for details.

## Installation

Install `tinytiger` from CRAN with:

``` r

install.packages("tinytiger")
```

You can also install the development version of `tinytiger`:

``` r

remotes::install_github("alarm-redist/tinytiger")
```

## Example

`tinytiger` provides lightweight functions to download Census Bureau
TIGER/Line Shapefiles. To download a geography, simply use the function
corresponding to one of the supported geographies.

``` r

library(tinytiger)

tt_counties("NY")
#> Simple feature collection with 62 features and 17 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -79.76259 ymin: 40.47658 xmax: -71.77749 ymax: 45.01586
#> Geodetic CRS:  NAD83
#> # A tibble: 62 × 18
#>    STATEFP COUNTYFP COUNT…¹ GEOID NAME  NAMEL…² LSAD  CLASSFP MTFCC CSAFP CBSAFP
#>  * <chr>   <chr>    <chr>   <chr> <chr> <chr>   <chr> <chr>   <chr> <chr> <chr> 
#>  1 36      101      009741… 36101 Steu… Steube… 06    H1      G4020 236   18500 
#>  2 36      091      009741… 36091 Sara… Sarato… 06    H1      G4020 104   10580 
#>  3 36      003      009741… 36003 Alle… Allega… 06    H1      G4020 <NA>  <NA>  
#>  4 36      075      009741… 36075 Oswe… Oswego… 06    H1      G4020 532   45060 
#>  5 36      111      009741… 36111 Ulst… Ulster… 06    H1      G4020 408   28740 
#>  6 36      089      009773… 36089 St. … St. La… 06    H1      G4020 <NA>  36300 
#>  7 36      097      009741… 36097 Schu… Schuyl… 06    H1      G4020 <NA>  <NA>  
#>  8 36      031      009741… 36031 Essex Essex … 06    H1      G4020 <NA>  <NA>  
#>  9 36      103      009741… 36103 Suff… Suffol… 06    H1      G4020 408   35620 
#> 10 36      041      009741… 36041 Hami… Hamilt… 06    H1      G4020 <NA>  <NA>  
#> # … with 52 more rows, 7 more variables: METDIVFP <chr>, FUNCSTAT <chr>,
#> #   ALAND <dbl>, AWATER <dbl>, INTPTLAT <chr>, INTPTLON <chr>,
#> #   geometry <MULTIPOLYGON [°]>, and abbreviated variable names ¹​COUNTYNS,
#> #   ²​NAMELSAD
```

## Supported Geographies

- [`tt_address_ranges()`](https://alarm-redist.org/tinytiger/reference/tt_address_ranges.md):
  Address Ranges
- [`tt_ai_an_nh_areas()`](https://alarm-redist.org/tinytiger/reference/tt_ai_an_nh_areas.md):
  American Indian / Alaska Native / Native Hawaiian Areas
- [`tt_tribal_subdivisions()`](https://alarm-redist.org/tinytiger/reference/tt_tribal_subdivisions.md):
  Tribal Subdivisions
- [`tt_anrc()`](https://alarm-redist.org/tinytiger/reference/tt_anrc.md):
  Alaskan Native Regional Corporations
- [`tt_area_landmarks()`](https://alarm-redist.org/tinytiger/reference/tt_area_landmarks.md):
  Area Landmarks
- `tt_area_water():` Area Water
- [`tt_block_groups()`](https://alarm-redist.org/tinytiger/reference/tt_block_groups.md):
  Block Groups
- [`tt_cbsa()`](https://alarm-redist.org/tinytiger/reference/tt_cbsa.md):
  Core Based Statistical Areas
- [`tt_congressional_districts()`](https://alarm-redist.org/tinytiger/reference/tt_congressional_districts.md):
  Congressional Districts
- [`tt_new_england_combined_areas()`](https://alarm-redist.org/tinytiger/reference/tt_new_england_combined_areas.md):
  Combined New England Towns and Cities
- [`tt_coastline()`](https://alarm-redist.org/tinytiger/reference/tt_coastline.md):
  Coastline
- [`tt_consolidated_cities()`](https://alarm-redist.org/tinytiger/reference/tt_consolidated_cities.md):
  Consolidated Cities
- [`tt_counties()`](https://alarm-redist.org/tinytiger/reference/tt_counties.md):
  Counties
- [`tt_county_subdivisions()`](https://alarm-redist.org/tinytiger/reference/tt_county_subdivisions.md):
  County Subdivisions
- [`tt_csa()`](https://alarm-redist.org/tinytiger/reference/tt_csa.md):
  Combined Statistical Areas
- [`tt_polygon_edges()`](https://alarm-redist.org/tinytiger/reference/tt_polygon_edges.md):
  All Polygon Edges
- [`tt_elementary_school_districts()`](https://alarm-redist.org/tinytiger/reference/tt_elementary_school_districts.md):
  Elementary School Districts (limited states)
- [`tt_estates()`](https://alarm-redist.org/tinytiger/reference/tt_estates.md):
  Estates (Virgin Islands only)
- [`tt_polygon_faces()`](https://alarm-redist.org/tinytiger/reference/tt_polygon_faces.md):
  All Polygon Faces
- `tt_linear_water():` Linear Water
- [`tt_metropolitan_divisions()`](https://alarm-redist.org/tinytiger/reference/tt_metropolitan_divisions.md):
  Metropolitan Divisions
- [`tt_military()`](https://alarm-redist.org/tinytiger/reference/tt_military.md):
  Military Installations
- [`tt_new_england_cities()`](https://alarm-redist.org/tinytiger/reference/tt_new_england_cities.md):
  New England Cities and Towns
- [`tt_new_england_city_divisions()`](https://alarm-redist.org/tinytiger/reference/tt_new_england_city_divisions.md):
  New England Cities and Towns Divisions
- [`tt_places()`](https://alarm-redist.org/tinytiger/reference/tt_places.md):
  Census Places
- [`tt_point_landmarks()`](https://alarm-redist.org/tinytiger/reference/tt_point_landmarks.md):
  Point Landmarks
- [`tt_primary_roads()`](https://alarm-redist.org/tinytiger/reference/tt_primary_roads.md):
  Primary Roads
- [`tt_primary_secondary_roads()`](https://alarm-redist.org/tinytiger/reference/tt_primary_secondary_roads.md):
  Primary and Secondary Roads
- [`tt_puma()`](https://alarm-redist.org/tinytiger/reference/tt_puma.md):
  Public Use Microdata Areas
- [`tt_rails()`](https://alarm-redist.org/tinytiger/reference/tt_rails.md):
  Railroads
- [`tt_roads()`](https://alarm-redist.org/tinytiger/reference/tt_roads.md):
  Roads
- [`tt_secondary_school_districts()`](https://alarm-redist.org/tinytiger/reference/tt_secondary_school_districts.md):
  Secondary School Districts (limited states)
- [`tt_state_leg_lower()`](https://alarm-redist.org/tinytiger/reference/tt_state_leg_lower.md):
  Lower State Legislative Districts
- [`tt_state_leg_upper()`](https://alarm-redist.org/tinytiger/reference/tt_state_leg_upper.md):
  Upper State Legislative Districts
- [`tt_states()`](https://alarm-redist.org/tinytiger/reference/tt_states.md):
  States
- [`tt_subbarrios()`](https://alarm-redist.org/tinytiger/reference/tt_subbarrios.md):
  Subbarios (Puerto Rico only)
- [`tt_blocks()`](https://alarm-redist.org/tinytiger/reference/tt_blocks.md):
  Blocks
- [`tt_tribal_block_groups()`](https://alarm-redist.org/tinytiger/reference/tt_tribal_block_groups.md):
  Tribal Block Groups
- [`tt_tracts()`](https://alarm-redist.org/tinytiger/reference/tt_tracts.md):
  Tracts
- [`tt_tribal_tracts()`](https://alarm-redist.org/tinytiger/reference/tt_tribal_tracts.md):
  Tribal Tracts
- [`tt_uac()`](https://alarm-redist.org/tinytiger/reference/tt_uac.md):
  : Urban Areas
- [`tt_unified_school_districts()`](https://alarm-redist.org/tinytiger/reference/tt_unified_school_districts.md):
  Unified School Districts
- [`tt_voting_districts()`](https://alarm-redist.org/tinytiger/reference/tt_voting_districts.md):
  Voting Districts
- [`tt_zcta()`](https://alarm-redist.org/tinytiger/reference/tt_zcta.md):
  Zip Code Tabulation Areas

# Downloading and Caching

By default, downloading will print status messages and/or a progress
bar. For silent downloads, set `options(tinytiger.curl_quiet = TRUE)`.

Downloads will go to `options(tinytiger.cache_dir)` if it is set. If it
is not, and `rappdirs` is installed, and
`options(tinytiger.use_cache = TRUE)`, downloads will be cached between
sessions in `rappdirs::user_cache_dir("tinytiger")`. If it is not
installed, or if `options(tinytiger.use_cache = FALSE)`, then the cache
will be in a temporary directory that does not persist between sessions.
You can check the size of the cache and clear it with
[`tt_cache_size()`](https://alarm-redist.org/tinytiger/reference/tt_cache.md)
and
[`tt_cache_clear()`](https://alarm-redist.org/tinytiger/reference/tt_cache.md).
