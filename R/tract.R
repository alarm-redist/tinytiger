#' Download TIGER shapes for tracts
#'
#' @param state `r template_var_state()`
#' @param county `r template_var_county()`
#' @param year `r template_var_year()`
#' 
#'
#' @return sf data.frame
#' @export
#'
#' @concept spine
#'
#' @examples
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_tracts(state = "DE", county = "001"))} # downloads slow on CRAN
tt_tracts <- function(state, county, year = 2025) {

  years_okay(year)

  if (missing(state)) {
    cli::cli_abort("{.arg state} is required for {.fn tt_tract}.")
  }
  state <- state_lookup(state)
  if (!missing(county)) {
    county <- county_lookup(state, county)
  }

  dec_yr <- pad_str(year %% 2000 - (year %% 10))
  url_adj <- ""
  if (year <= 2010) {
    url_adj <- paste0("/20", dec_yr)
    year <- 2010
  } else {
    dec_yr <- ""
  }

  shp <- lapply(state, function(st) {
    zip_url <- glue::glue("{base_url(year)}/TRACT{url_adj}/tl_{year}_{st}_tract{dec_yr}.zip")
    target <- glue::glue("tl_{year}_{st}_tract{dec_yr}.shp")
    tt_download_read(url = zip_url, target_file = target)
  })
  shp <- do.call(rbind, shp)

  if (!missing(county)) {
    shp <- shp[shp$COUNTYFP %in% county, ]
  }

  adj_class(shp)
}
