#' Download TIGER shapes for New England City and Town Area
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
#' tt_new_england_cities()
tt_new_england_cities <- function(year = 2021) {

  zip_url <- glue::glue('{base_url(year)}/NECTA/tl_{year}_us_necta.zip')
  target <- paste0('tl_', year, '_us_necta.shp')
  shp <- tt_download_read(url = zip_url, target_file = target)

  shp
}
