
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tinytiger <a href="https://alarm-redist.github.io/tinytiger/"><img src="man/figures/logo.png" align="right" height="138" /></a>

<!-- badges: start -->

[![R-CMD-check](https://github.com/alarm-redist/tinytiger/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/alarm-redist/tinytiger/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of `tinytiger` is to provide a lightweight interface to the US
Census Bureau’s TIGER/Line Shapefiles.

## Installation

You can install the development version of `tinytiger` like so:

``` r
remotes::install_github('alarm-redist/tinytiger)
```

## Example

`tinytiger` provides lightweight functions to download Census Bureau
TIGER/Line Shapefiles.

``` r
library(tinytiger)
## basic example code
```

To download a geography, simply use the function corresponding to one of
the supported geographies.

``` r
tt_counties('NY')
#> Simple feature collection with 62 features and 17 fields
#> Geometry type: MULTIPOLYGON
#> Dimension:     XY
#> Bounding box:  xmin: -79.76259 ymin: 40.47658 xmax: -71.77749 ymax: 45.01586
#> Geodetic CRS:  NAD83
#> First 10 features:
#>     STATEFP COUNTYFP COUNTYNS GEOID         NAME            NAMELSAD LSAD
#> 47       36      101 00974148 36101      Steuben      Steuben County   06
#> 167      36      091 00974143 36091     Saratoga     Saratoga County   06
#> 175      36      003 00974100 36003     Allegany     Allegany County   06
#> 205      36      075 00974136 36075       Oswego       Oswego County   06
#> 212      36      111 00974153 36111       Ulster       Ulster County   06
#> 324      36      089 00977309 36089 St. Lawrence St. Lawrence County   06
#> 357      36      097 00974146 36097     Schuyler     Schuyler County   06
#> 420      36      031 00974114 36031        Essex        Essex County   06
#> 445      36      103 00974149 36103      Suffolk      Suffolk County   06
#> 519      36      041 00974119 36041     Hamilton     Hamilton County   06
#>     CLASSFP MTFCC CSAFP CBSAFP METDIVFP FUNCSTAT      ALAND     AWATER
#> 47       H1 G4020   236  18500     <NA>        A 3601398422   35039875
#> 167      H1 G4020   104  10580     <NA>        A 2097812305   87488004
#> 175      H1 G4020  <NA>   <NA>     <NA>        A 2666225086   12989848
#> 205      H1 G4020   532  45060     <NA>        A 2464629969  933476017
#> 212      H1 G4020   408  28740     <NA>        A 2911757764   94596811
#> 324      H1 G4020  <NA>  36300     <NA>        A 6939601205  367206795
#> 357      H1 G4020  <NA>   <NA>     <NA>        A  850405403   36246373
#> 420      H1 G4020  <NA>   <NA>     <NA>        A 4646753187  316350562
#> 445      H1 G4020   408  35620    35004        A 2359242298 3787452993
#> 519      H1 G4020  <NA>   <NA>     <NA>        A 4447989312  234204424
#>        INTPTLAT     INTPTLON                       geometry
#> 47  +42.2667252 -077.3855253 MULTIPOLYGON (((-77.20041 4...
#> 167 +43.1061353 -073.8553872 MULTIPOLYGON (((-73.67891 4...
#> 175 +42.2478532 -078.0261531 MULTIPOLYGON (((-78.04342 4...
#> 205 +43.4614431 -076.2092618 MULTIPOLYGON (((-75.90417 4...
#> 212 +41.9472124 -074.2654582 MULTIPOLYGON (((-73.94659 4...
#> 324 +44.4881125 -075.0743110 MULTIPOLYGON (((-74.64908 4...
#> 357 +42.4197755 -076.9386030 MULTIPOLYGON (((-76.90332 4...
#> 420 +44.1096005 -073.7784307 MULTIPOLYGON (((-73.6182 43...
#> 445 +40.9435540 -072.6922183 MULTIPOLYGON (((-71.80938 4...
#> 519 +43.6578786 -074.5024556 MULTIPOLYGON (((-74.20976 4...
```

## Supported Geographies:

## Progress

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
