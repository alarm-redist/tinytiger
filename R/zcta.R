#' Download TIGER shapes for Zip Code Tabulation Areas
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
#' tt_zcta()
tt_zcta <- function(year = 2021) {

  zip_url <- glue::glue("{base_url(year)}/ZCTA520/tl_{year}_us_zcta520.zip")
  target <- paste0("tl_", year, "_us_zcta520.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  shp
}
