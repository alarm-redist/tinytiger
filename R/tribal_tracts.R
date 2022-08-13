#' Download TIGER shapes for Tribal Tracts
#'
#' @templateVar year TRUE
#' @template template
#'
#' @return sf data.frame
#' @export
#'
#' @concept tribal
#'
#' @examples
#' tt_tribal_tracts()
tt_tribal_tracts <- function(year = 2021) {

  zip_url <- glue::glue("{base_url(year)}/TTRACT/tl_{year}_us_ttract.zip")
  target <- paste0("tl_", year, "_us_ttract.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
