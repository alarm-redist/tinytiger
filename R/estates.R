#' Download TIGER shapes for Estates (US Virgin Islands)
#'
#' @param year `r template_var_year()`
#' 
#'
#' @return sf data.frame
#' @export
#'
#' @concept other
#'
#' @examples
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_estates())} # downloads slow on CRAN
tt_estates <- function(year = 2025) {

  years_okay(year, 2012:2025)

  zip_url <- glue::glue("{base_url(year)}/ESTATE/tl_{year}_78_estate.zip")
  target <- glue::glue("tl_{year}_78_estate.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
