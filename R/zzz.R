.onLoad <- function(libname, pkgname) {
  utils::data(
    "county_fips_2020", package = pkgname,
    envir = parent.env(environment(NULL))
  )
}
