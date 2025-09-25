#' Download TIGER shapes for Coastlines
#'
#' @param year `r template_var_year()`
#' 
#'
#' @return sf data.frame
#' @export
#'
#' @concept water
#'
#' @examples
#' \donttest{ # takes > 5 seconds
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_coastline())} # downloads slow on CRAN
#' }
tt_coastline <- function(year = 2024) {

  years_okay(year, 2016:2024)

  zip_url <- glue::glue("{base_url(year)}/COASTLINE/tl_{year}_us_coastline.zip")
  target <- paste0("tl_", year, "_us_coastline.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
