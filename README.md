
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tinytiger <a href="https://alarm-redist.github.io/tinytiger/"><img src="man/figures/logo.png" align="right" height="138" /></a>

<!-- badges: start -->

[![R-CMD-check](https://github.com/alarm-redist/tinytiger/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/alarm-redist/tinytiger/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

`tinytiger` is to provide a lightweight interface to the [US Census
Bureau’s TIGER/Line
Shapefiles](https://www.census.gov/geographies/mapping-files/time-series/geo/tiger-line-file.html).

## Installation

You can install the development version of `tinytiger` like so:

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
#> # ℹ Use `print(n = ...)` to see more rows, and `colnames()` to see all variable names
```

## Supported Geographies

-   `tt_address_ranges()`: Address Ranges
-   `tt_ai_an_nh_areas()`: American Indian / Alaska Native / Native
    Hawaiian Areas
-   `tt_tribal_subdivisions()`: Tribal Subdivisions
-   `tt_anrc()`: Alaskan Native Regional Corporations
-   `tt_area_landmarks()`: Area Landmarks
-   `tt_area_water():` Area Water
-   `tt_block_groups()`: Block Groups
-   `tt_cbsa()`: Core Based Statistical Areas
-   `tt_congressional_districts()`: Congressional Districts
-   `tt_new_england_combined_areas()`: Combined New England Towns and
    Cities
-   `tt_coastline()`: Coastline
-   `tt_consolidated_cities()`: Consolidated Cities
-   `tt_counties()`: Counties
-   `tt_county_subdivisions()`: County Subdivisions
-   `tt_csa()`: Combined Statistical Areas
-   `tt_polygon_edges()`: All Polygon Edges
-   `tt_elementary_school_districts()`: Elementary School Districts
    (limited states)
-   `tt_estates()`: Estates (Virgin Islands only)
-   `tt_polygon_faces()`: All Polygon Faces
-   `tt_linear_water():` Linear Water
-   `tt_metropolitan_divisions()`: Metropolitan Divisions
-   `tt_military()`: Military Installations
-   `tt_new_england_cities()`: New England Cities and Towns
-   `tt_new_england_city_divisions()`: New England Cities and Towns
    Divisions
-   `tt_places()`: Census Places
-   `tt_point_landmarks()`: Point Landmarks
-   `tt_primary_roads()`: Primary Roads
-   `tt_primary_secondary_roads()`: Primary and Secondary Roads
-   `tt_puma()`: Public Use Microdata Areas
-   `tt_rails()`: Railroads
-   `tt_roads()`: Roads
-   `tt_secondary_school_districts()`: Secondary School Districts
    (limited states)
-   `tt_state_leg_lower()`: Lower State Legislative Districts
-   `tt_state_leg_upper()`: Upper State Legislative Districts
-   `tt_states()`: States
-   `tt_subbarrios()`: Subbarios (Puerto Rico only)
-   `tt_blocks()`: Blocks
-   `tt_tribal_block_groups()`: Tribal Block Groups
-   `tt_tracts()`: Tracts
-   `tt_tribal_tracts()`: Tribal Tracts
-   `tt_uac()`: : Urban Areas
-   `tt_unified_school_districts()`: Unified School Districts
-   `tt_zcta()`: Zip Code Tabulation Areas
