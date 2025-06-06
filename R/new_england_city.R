#' Download TIGER shapes for New England City and Town Area
#'
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept city
#'
#' @examples
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_new_england_cities())} # downloads slow on CRAN
tt_new_england_cities <- function(year = 2024) {

  years_okay(year, 2010:2024)

  dec_yr <- pad_str(year %% 2000 - (year %% 10))
  url_adj <- ""
  if (year <= 2010) {
    url_adj <- paste0("/20", dec_yr)
    year <- 2010
  } else {
    dec_yr <- ""
  }

  zip_url <- glue::glue("{base_url(year)}/NECTA{url_adj}/tl_{year}_us_necta{dec_yr}.zip")
  target <- glue::glue("tl_{year}_us_necta{dec_yr}.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
