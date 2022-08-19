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
#'\donttest{
#' ## requires internet
#' tt_subbarrios()
#' }
tt_subbarrios <- function(year = 2021) {

  years_okay(year, 2016:2021)

  zip_url <- glue::glue("{base_url(year)}/SUBBARRIO/tl_{year}_72_subbarrio.zip")
  target <- paste0("tl_", year, "_72_subbarrio.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
