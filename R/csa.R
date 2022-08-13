#' Download TIGER shapes for Combined Statistical Area
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
#' tt_csa()
tt_csa <- function(year = 2021) {

  zip_url <- glue::glue("{base_url(year)}/CSA/tl_{year}_us_csa.zip")
  target <- paste0("tl_", year, "_us_csa.shp")
  shp <- tt_download_read(url = zip_url, target_file = target)

  shp
}
