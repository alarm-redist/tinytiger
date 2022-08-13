#' Download TIGER shapes for New England City and Town Area Divisions
#'
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept city
#'
#' @examples
#' tt_new_england_city_divisions()
tt_new_england_city_divisions <- function(year = 2021) {

  zip_url <- glue::glue("{base_url(year)}/NECTADIV/tl_{year}_us_nectadiv.zip")
  target <- paste0("tl_", year, "_us_nectadiv.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
