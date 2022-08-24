#' Download TIGER shapes for counties
#'
#' @templateVar state TRUE
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept spine
#'
#' @examples
#' \donttest{ # takes > 5 seconds
#' # Wrapped in try due to false positive 304 errors
#' try(tt_counties(state = "DE"))
#' }
tt_counties <- function(state, year = 2021) {

  years_okay(year)

  dec_yr <- pad_str(year %% 2000 - (year %% 10))
  url_adj <- ""
  if (year <= 2010) {
    url_adj <- paste0("/20", dec_yr)
    year <- 2010
  } else {
    dec_yr <- ""
  }

  zip_url <- glue::glue("{base_url(year)}/COUNTY{url_adj}/tl_{year}_us_county{dec_yr}.zip")
  target <- glue::glue("tl_{year}_us_county{dec_yr}.shp")

  shp <- tt_download_read(url = zip_url, target_file = target)

  if (!missing(state)) {
    shp <- shp[shp$STATEFP %in% state_lookup(state), ]
  }

  adj_class(shp)
}
