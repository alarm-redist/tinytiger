#' Download TIGER shapes for Subbarrios (Puerto Rico)
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
#' \donttest{try(tt_subbarrios())} # downloads slow on CRAN
tt_subbarrios <- function(year = 2024) {

  years_okay(year, 2016:2024)

  zip_url <- glue::glue("{base_url(year)}/SUBBARRIO/tl_{year}_72_subbarrio.zip")
  target <- paste0("tl_", year, "_72_subbarrio.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
