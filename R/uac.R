#' Download TIGER shapes for Urban Area
#'
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept other
#'
#' @examples \dontrun{
#' tt_uac()
#' }
tt_uac <- function(year = 2021) {

  years_okay(year, 2012:2021)

  zip_url <- glue::glue("{base_url(year)}/UAC/tl_{year}_us_uac10.zip")
  target <- paste0("tl_", year, "_us_uac10.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
