#' Download TIGER shapes for Primary Roads
#'
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept roads
#'
#' @examples
#' \donttest{ # takes > 5 seconds
#' # Wrapped in try due to false positive 304 errors
#' try(tt_primary_roads())
#' }
tt_primary_roads <- function(year = 2022) {

  years_okay(year, 2010:2022)

  zip_url <- glue::glue("{base_url(year)}/PRIMARYROADS/tl_{year}_us_primaryroads.zip")
  target <- glue::glue("tl_{year}_us_primaryroads.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
