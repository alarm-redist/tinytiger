#' Download TIGER shapes for Core Based Statistical Areas
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
#' \donttest{ # takes > 5 seconds
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_cbsa())} # downloads slow on CRAN
#' }
tt_cbsa <- function(year = 2021) {
  years_okay(year, 2010:2021)

  zip_url <- glue::glue("{base_url(year)}/CBSA/tl_{year}_us_cbsa.zip")
  target <- paste0("tl_", year, "_us_cbsa.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
