#' Download TIGER shapes for Metropolitan Divisions
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
#' tt_metropolitan_divisions()
tt_metropolitan_divisions <- function(year = 2021) {

  zip_url <- glue::glue("{base_url(year)}/METDIV/tl_{year}_us_metdiv.zip")
  target <- paste0("tl_", year, "_us_metdiv.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
