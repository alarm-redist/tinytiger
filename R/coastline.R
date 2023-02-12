#' Download TIGER shapes for Coastlines
#'
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept water
#'
#' @examples
#' \donttest{ # takes > 5 seconds
#' # Wrapped in try due to false positive 304 errors
#' try(tt_coastline())
#' }
tt_coastline <- function(year = 2022) {

  years_okay(year, 2016:2022)

  zip_url <- glue::glue("{base_url(year)}/COASTLINE/tl_{year}_us_coastline.zip")
  target <- paste0("tl_", year, "_us_coastline.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
