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
#' \donttest{ # takes > 5 seconds
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_rails())} # downloads slow on CRAN
#' }
tt_rails <- function(year = 2024) {

  years_okay(year, 2010:2024)

  zip_url <- glue::glue("{base_url(year)}/RAILS/tl_{year}_us_rails.zip")
  target <- glue::glue("tl_{year}_us_rails.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
