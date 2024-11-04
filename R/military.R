#' Download TIGER shapes for Military Installations
#'
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept other
#'
#' @examples
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_military())} # downloads slow on CRAN
tt_military <- function(year = 2024) {

  years_okay(year, 2010:2024)

  zip_url <- glue::glue("{base_url(year)}/MIL/tl_{year}_us_mil.zip")
  target <- glue::glue("tl_{year}_us_mil.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
