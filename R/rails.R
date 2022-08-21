#' Download TIGER shapes for Rails
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
#' # Wrapped in try due to false positive 304 errors
#' try({tt_rails()})
tt_rails <- function(year = 2021) {

  years_okay(year, 2010:2021)

  zip_url <- glue::glue("{base_url(year)}/RAILS/tl_{year}_us_rails.zip")
  target <- glue::glue("tl_{year}_us_rails.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
