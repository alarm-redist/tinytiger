#' Download TIGER shapes for New England Combined City and Town Areas
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
#' tt_new_england_combined_areas()
tt_new_england_combined_areas <- function(year = 2021) {

  zip_url <- glue::glue("{base_url(year)}/CNECTA/tl_{year}_us_cnecta.zip")
  target <- paste0("tl_", year, "_us_cnecta.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
