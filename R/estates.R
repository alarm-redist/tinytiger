#' Download TIGER shapes for Estates (US Virgin Islands)
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
#' tt_estates()
tt_estates <- function(year = 2021) {

  years_okay(year, 2012:2021)

  zip_url <- glue::glue("{base_url(year)}/ESTATE/tl_{year}_78_estate.zip")
  target <- glue::glue("tl_{year}_78_estate.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
