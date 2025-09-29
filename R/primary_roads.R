#' Download TIGER shapes for Primary Roads
#'
#' @param year `r template_var_year()`
#' 
#'
#' @return sf data.frame
#' @export
#'
#' @concept roads
#'
#' @examples
#' \donttest{ # takes > 5 seconds
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_primary_roads())} # downloads slow on CRAN
#' }
tt_primary_roads <- function(year = 2025) {

  years_okay(year, 2010:2025)

  zip_url <- glue::glue("{base_url(year)}/PRIMARYROADS/tl_{year}_us_primaryroads.zip")
  target <- glue::glue("tl_{year}_us_primaryroads.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
