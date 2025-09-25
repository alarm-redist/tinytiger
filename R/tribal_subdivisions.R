#' Download TIGER shapes for American Indian Tribal Subdivision National
#'
#' @param year `r template_var_year()`
#' 
#'
#' @return sf data.frame
#' @export
#'
#' @concept tribal
#'
#' @examples
#' # Wrapped in try due to false positive 304 errors
#' \donttest{try(tt_tribal_subdivisions())}
tt_tribal_subdivisions <- function(year = 2024) {

  years_okay(year, 2015:2024)

  zip_url <- glue::glue("{base_url(year)}/AITSN/tl_{year}_us_aitsn.zip")
  target <- paste0("tl_", year, "_us_aitsn.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
