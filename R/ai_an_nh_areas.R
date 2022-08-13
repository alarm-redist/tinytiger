#' Download TIGER shapes for American Indian / Alaska Native / Native Hawaiian Areas
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
#' tt_ai_an_nh_areas()
tt_ai_an_nh_areas <- function(year = 2021) {

  zip_url <- glue::glue("{base_url(year)}/AIANNH/tl_{year}_us_aiannh.zip")
  target <- paste0("tl_", year, "_us_aiannh.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  adj_class(shp)
}
